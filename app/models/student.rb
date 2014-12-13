class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, email: true

  has_secure_password
  validates :password, length: { minimum: 8 }, allow_nil: true

  def name
    [first_name, last_name].join ' '
  end
end
