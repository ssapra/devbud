Project.destroy_all
ProjectSkill.destroy_all
StudentSkill.destroy_all
Skill.destroy_all
School.destroy_all
Student.destroy_all

skills = ['Android', 'C/C++/Hardware', 'DevOps', 'Engineering Management', 'HTML/CSS', 'iOS', 'Java', 'JavaScript Backend / Node', 'JavaScript Frontend', '.NET', 'PHP', 'Python', 'QA/Security/Test', 'Ruby', 'Scala']

[skills, YAML.load_file('languages.yml').keys].flatten.uniq.each {|skill| Skill.create(name: skill) }

school = School.create(name: 'University of Chicago')
