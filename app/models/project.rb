class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :student
end
