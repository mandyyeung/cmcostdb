class CreateSubcontractors < ActiveRecord::Migration
  def change
    create_table :subcontractors do |t|
      t.string :name
      t.string :trade
      t.decimal :contract_value

      t.timestamps null: false
    end
  end
end
