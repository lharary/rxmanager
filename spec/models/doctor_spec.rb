require 'rails_helper'

describe 'Doctor' do

  describe 'factory' do
    it 'has a valid factory' do
      expect(build(:doctor)).to be_valid
    end
  end

  describe 'validations' do

    it 'is invalid without a first name' do
      doctor = build(:doctor, first_name: nil)
      doctor.valid?

      expect(doctor.errors[:first_name]).to include("can't be blank")
    end

    it 'is invalid without a last name' do
      doctor = build(:doctor, last_name: nil)
      doctor.valid?

      expect(doctor.errors[:last_name]).to include("can't be blank")
    end
  end
end