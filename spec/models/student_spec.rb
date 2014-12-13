require 'rails_helper'

RSpec.describe Student, :type => :model do
  describe "defaults" do
    it "is expected to have verified_email set to false" do
      expect(Student.new.verified_email?).to eq false
    end
  end

  describe 'email validations' do
    it "is expected to follow valid email format" do
      word = Faker::Lorem.word
      email = word + "@" + word + "." + word
      student = build :student, email: email
      expect(student).to be_valid
    end

    it "is expected to not be valid when there is no email" do
      student = build :student, email: nil
      expect(student).not_to be_valid
    end

    it "is expected to not be valid without @ symbol" do
      word = Faker::Lorem.word
      email = word + "." + word
      student = build :student, email: email
      expect(student).not_to be_valid
    end

    it "is expected to not be valid without . at end of email" do
      word = Faker::Lorem.word
      email = word + "@" + word
      student = build :student, email: email
      expect(student).not_to be_valid
    end
  end

  describe 'name validations' do
    it 'is is invalid when the first name is missing' do
      student = build :student, first_name: nil
      expect(student).not_to be_valid
    end

    it 'is is invalid when the last name is missing' do
      student = build :student, last_name: nil
      expect(student).not_to be_valid
    end
  end

end
