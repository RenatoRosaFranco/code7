class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :description
      t.string :role

      t.timestamps
    end
  end
end
