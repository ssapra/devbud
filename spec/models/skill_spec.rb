require 'rails_helper'

RSpec.describe Skill, :type => :model do
  describe 'valid object' do
    it 'has a valid name' do
      skill = build :skill
      expect(skill).to be_valid
    end
  end

  describe 'invalid object' do
    it 'has a missing name' do
      skill = build :skill, name: nil
      expect(skill).not_to be_valid
    end

    it 'has a duplicated name name' do
      skill1 = create :skill
      skill2 = build :skill, name: skill1.name
      expect(skill2).not_to be_valid
    end
  end
end
