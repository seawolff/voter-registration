class AddSupportedToGuidelines < ActiveRecord::Migration
  def change
    add_column :guidelines, :supported, :boolean, :default => true
    add_column :guidelines, :unsupported, :text
  end
end
