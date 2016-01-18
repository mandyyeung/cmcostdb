class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.string :name
      t.string :description
      t.string :group

      t.timestamps null: false
    end
  end
end
