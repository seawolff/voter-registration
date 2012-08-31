class CreateGuidelines < ActiveRecord::Migration
  def change
    create_table :guidelines do |t|
      t.string :state
      t.string :locale
      t.text :requirements
      t.text :felony
      t.text :student
      t.text :deadline
      t.text :identification
      t.text :same_day
      t.text :early_voting
      t.string :url

      t.timestamps
    end
  end
end
