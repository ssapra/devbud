Skill.destroy_all
School.destroy_all
Student.destroy_all

skills = ['Android', 'C/C++/Hardware', 'DevOps', 'Engineering Management', 'HTML/CSS', 'iOS', 'Java', 'JavaScript Backend / Node', 'JavaScript Frontend', '.NET', 'PHP', 'Python', 'QA/Security/Test', 'Ruby', 'Scala']
skills.each {|skill| Skill.create(name: skill) }

school = School.create(name: 'University of Chicago')
Student.create(first_name: 'Shaan', last_name: 'Sapra', email: 'ssapra@uchicago.edu', password: 'password', verified_email: true, year: 2015, github_url: 'github.com/ssapra', school_id: school.id)
