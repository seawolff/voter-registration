require 'active_attr/rspec'

describe Register do
  it do
    should have_attribute(:citizen)
    should have_attribute(:title)
    should have_attribute(:first_name)
    should have_attribute(:middle_name)
    should have_attribute(:last_name)
    should have_attribute(:home_address)
    should have_attribute(:home_apt)
    should have_attribute(:home_city)
    should have_attribute(:home_state)
    should have_attribute(:home_zip_code)
    should have_attribute(:mailing_address)
    should have_attribute(:mailing_apt)
    should have_attribute(:mailing_city)
    should have_attribute(:mailing_state)
    should have_attribute(:mailing_zip_code)
    should have_attribute(:previous_address)
    should have_attribute(:previous_apt)
    should have_attribute(:previous_city)
    should have_attribute(:previous_state)
    should have_attribute(:previous_zip_code)
    should have_attribute(:previous_title)
    should have_attribute(:previous_first_name)
    should have_attribute(:previous_middle_name)
    should have_attribute(:previous_last_name)
    should have_attribute(:date_of_birth)
    should have_attribute(:phone)
    should have_attribute(:id_number)
    should have_attribute(:political_party)
    should have_attribute(:ethnicity)

  end
end
