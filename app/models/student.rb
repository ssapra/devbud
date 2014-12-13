class Student < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, email: true

  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  belongs_to :school

  def name
    [first_name, last_name].join ' '
  end
end
