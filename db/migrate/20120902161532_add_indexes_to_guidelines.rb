class AddIndexesToGuidelines < ActiveRecord::Migration
  def change
    add_index :guidelines, :id
    add_index :guidelines, :name
    add_index :guidelines, :state
  end
end
