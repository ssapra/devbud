class StudentsController < UsersController
  skip_before_filter :require_login, :only => [:index, :new]

  def show
    @student = current_user
    @projects = @student.projects.order(:started_at).reverse
  end

  def callback
    session_code = request.env['rack.request.query_hash']['code']
    result = RestClient.post('https://github.com/login/oauth/access_token', {client_id: ENV["GITHUB_CLIENT_ID"],
                                                                             client_secret: ENV['GITHUB_CLIENT_SECRET'],
                                                                             code: session_code},
                                                                             accept: :json)
    access_token = JSON.parse(result)['access_token']
    results = JSON.parse(RestClient.get('https://api.github.com/user', {params: {access_token: access_token}}))
    current_user.update_attributes(github_url: 'github.com/' + results['login'])
    results["repos"] = getrequest(results['repos_url'])
    results["repos"].each do |repo|
      project = Project.create(name: repo['name'],
                               github_id: repo['id'],
                               code: repo['html_url'],
                               description: repo['description'],
                               started_at: repo['created_at'],
                               last_updated_at: repo['updated_at'],
                               student_id: current_user.id)
      skill = Skill.find_by_name(repo['language'])
      ProjectSkill.create(project_id: project.id, skill_id: skill.id)
    end
    new_skills = current_user.projects.map(&:skills).flatten.uniq - current_user.skills
    new_skills.each {|skill| StudentSkill.create(skill_id: skill.id, student_id: current_user.id) }
    redirect_to student_path(current_user)
  end
end
