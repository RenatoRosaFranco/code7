class AddColumnLogoToTechnologies < ActiveRecord::Migration[5.1]
  def change
    add_column :technologies, :logo, :string
  end
end
