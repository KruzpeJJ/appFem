class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.string :nombre , null: false
      t.timestamps
    end
  end
end
