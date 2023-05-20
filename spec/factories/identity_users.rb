# frozen_string_literal: true

FactoryBot.define do
  factory :identity_user, class: 'Identity::User' do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 8) }
  end
end
