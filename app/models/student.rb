class Student < User
  belongs_to :school
  has_many :projects
  has_many :student_skills
  has_many :skills, through: :student_skills
end
