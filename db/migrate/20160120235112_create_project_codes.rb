class CreateProjectCodes < ActiveRecord::Migration
  def change
    create_table :project_codes do |t|
      t.string :project
      t.string :code

      t.timestamps null: false
    end
  end
end
