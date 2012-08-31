FactoryGirl.define do
  factory :guidelines do
    state "CA"
    mail_to_address_1 Faker::Address.street_address
    mail_to_address_2 Faker::Address.street_address
    mail_to_address_3 Faker::Address.street_address
    mail_to_address_4 Faker::Address.street_address
  end
end
