class AddColumnLogoToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :logo, :string
  end
end
