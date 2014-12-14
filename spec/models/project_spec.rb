require 'rails_helper'

RSpec.describe Project, :type => :model do
  describe 'valid object' do
    it 'has a valid name' do
      project = build :project
      expect(project).to be_valid
    end
  end

  describe 'invalid object' do
    it 'has a missing name' do
      project = build :project, name: nil
      expect(project).not_to be_valid
    end

    it 'has a duplicated name' do
      project1 = create :project
      project2 = build :project, name: project1.name
      expect(project2).not_to be_valid
    end
  end
end
