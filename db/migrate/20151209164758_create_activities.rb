class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :date
      t.string :client
      t.string :description
      t.decimal :hours
      t.boolean :billable
      t.boolean :posted
      t.references :user, index: true

      t.timestamps
    end
  end
end
