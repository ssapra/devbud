class Student < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, email: true

  validates :password, length: { minimum: 8 }, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  belongs_to :school
  has_many :projects
  has_many :student_skills
  has_many :skills, through: :student_skills

  def name
    [first_name, last_name].join ' '
  end
end
