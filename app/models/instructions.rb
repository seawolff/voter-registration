class Instructions < ActiveRecord::Base
  attr_accessible :help_text, :locale, :name, :required, :state
end
