class AddOnlineNameToGuidelines < ActiveRecord::Migration
  def change
    add_column :guidelines, :name, :string
    add_column :guidelines, :online, :boolean
  end
end
