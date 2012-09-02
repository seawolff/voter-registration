class Register
  include ActiveAttr::Model

  attribute :citizen
  attribute :title
  attribute :first_name
  attribute :middle_name
  attribute :last_name
  attribute :name_suffix
  attribute :home_address
  attribute :home_apt
  attribute :home_city
  attribute :home_state
  attribute :home_zip_code
  attribute :mailing_address
  attribute :mailing_apt
  attribute :mailing_city
  attribute :mailing_state
  attribute :mailing_zip_code
  attribute :previous_address
  attribute :previous_apt
  attribute :previous_city
  attribute :previous_state
  attribute :previous_zip_code
  attribute :previous_title
  attribute :previous_first_name
  attribute :previous_middle_name
  attribute :previous_last_name
  attribute :previous_suffix
  attribute :date_of_birth
  attribute :phone
  attribute :id_number
  attribute :political_party
  attribute :ethnicity

  attr_accessible :citizen, :title, :first_name, :middle_name, :last_name, 
                  :home_address, :home_apt, :home_city, :home_state, 
                  :home_zip_code, :mailing_address, :mailing_apt, :mailing_city,
                  :mailing_state, :mailing_zip_code, :previous_address, 
                  :previous_apt, :previous_city, :previous_state, 
                  :previous_zip_code, :previous_title, :previous_first_name, 
                  :previous_middle_name, :previous_last_name, :date_of_birth,
                  :phone, :id_number, :political_party, :ethnicity, 
                  :name_suffix, :previous_suffix

  validates_presence_of :title, :first_name, :last_name, :home_address, 
                        :home_city, :home_state, :home_zip_code, :date_of_birth,
                        :id_number
end
