class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :picture

      t.timestamps null: false
    end
  end
end
