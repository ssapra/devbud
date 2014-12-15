class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :student
  has_many :project_skills
  has_many :skills, through: :project_skills
end
