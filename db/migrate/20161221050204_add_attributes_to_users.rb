class AddAttributesToUsers < ActiveRecord::Migration[5.0]
  def change
  add_column :users, :username, :string, null: false, default: ""
  add_column :users, :name, :string
  add_column :users, :lastname, :string
  add_column :users, :bornDate, :date
  add_column :users, :admin, :boolean
  add_column :users, :curp, :string
  add_column :users, :address, :string
  add_column :users, :municipio, :string
  add_column :users, :IdMunicipio, :integer
  add_column :users, :movil, :string
  add_column :users, :job, :string
  add_column :users, :folio_af, :string
  add_column :users, :description, :text
  end
end
