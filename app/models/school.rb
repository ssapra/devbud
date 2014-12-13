class School < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :students
end
