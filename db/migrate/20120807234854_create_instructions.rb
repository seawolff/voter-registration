class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :name
      t.string :state
      t.text :help_text
      t.string :locale, :default => "en"
      t.boolean :required, :default => false

      t.timestamps
    end
  end
end
