require 'rails_helper'

RSpec.describe School, :type => :model do
  describe 'valid object' do
    it 'has proper attributes' do
      school = build :school
      expect(school).to be_valid
    end
  end

  describe 'invalid object' do
    it 'has a missing name' do
      school = build :school, name: nil
      expect(school).not_to be_valid
    end

    it 'has a duplicated name' do
      school = create :school
      school1 = build :school, name: school.name
      expect(school1).not_to be_valid
    end
  end
end
