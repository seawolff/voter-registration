# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :instruction, :class => 'Instructions' do
    name "id_number"
    state "CA"
    help_text "Help text"
    locale "en"
    required false
  end
end
