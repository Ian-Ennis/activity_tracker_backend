class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :date
      t.string :name
      t.integer :minutes
      t.string :notes
      t.string :yoga_type
      t.string :workout
      t.float :distance
      t.references :user, type: :integer, foreign_key: true
      t.timestamps
    end
  end
end
