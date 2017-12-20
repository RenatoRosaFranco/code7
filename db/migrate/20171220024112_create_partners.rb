class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
