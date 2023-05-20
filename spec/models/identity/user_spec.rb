# frozen_string_literal: true

require 'rails_helper'

module Identity
  RSpec.describe User, type: :model do
    it 'has a valid factory' do
      user = FactoryBot.create(:identity_user)
      expect(user).to be_valid
    end

    it 'is invalid without an email' do
      user = FactoryBot.build(:identity_user, email: nil)
      expect(user).not_to be_valid
    end

    it 'is invalid without a password' do
      user = FactoryBot.build(:identity_user, password: nil)
      expect(user).not_to be_valid
    end

    it 'is invalid with a duplicate email address' do
      FactoryBot.create(:identity_user, email: 'test@example.com')
      user = FactoryBot.build(:identity_user, email: 'test@example.com')
      expect(user).not_to be_valid
    end
  end
end
