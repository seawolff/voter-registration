class AddMailingAddressToGuidelines < ActiveRecord::Migration
  def change
    add_column :guidelines, :mail_to_address_1, :string
    add_column :guidelines, :mail_to_address_2, :string
    add_column :guidelines, :mail_to_address_3, :string
    add_column :guidelines, :mail_to_address_4, :string
  end
end
