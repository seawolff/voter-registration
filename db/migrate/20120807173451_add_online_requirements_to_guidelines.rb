class AddOnlineRequirementsToGuidelines < ActiveRecord::Migration
  def change
    add_column :guidelines, :online_requirements, :text
    add_column :guidelines, :online_url, :string
  end
end
