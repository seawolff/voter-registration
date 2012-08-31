class Guidelines < ActiveRecord::Base
  attr_accessible :deadline, :early_voting, :felony, :identification, :locale, :requirements, :same_day, :state, :student, :url,
     :mail_to_address_1, :mail_to_address_2, :mail_to_address_3, :mail_to_address_4, :name, :online, :online_requirements, :online_url,
     :supported, :unsupported

  default_scope order("name")
end
