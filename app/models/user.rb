class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, email: true

  validates :password, length: { minimum: 8 }, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  def name
    [first_name, last_name].join ' '
  end
end
