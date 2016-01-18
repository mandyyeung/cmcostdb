class CreatePcos < ActiveRecord::Migration
  def change
    create_table :pcos do |t|
      t.decimal :number
      t.string :requested_by
      t.string :project
      t.date :date
      t.string :status
      t.string :subcontractor
      t.string :trade
      t.string :proposal_num
      t.string :ref_doc
      t.text :description
      t.string :classification
      t.boolean :work_completed
      t.boolean :insurance_claim
      t.boolean :backcharge
      t.string :filter
      t.string :al
      t.date :proposal_recd
      t.date :submitted_to_owner
      t.date :approved_by_owner
      t.date :billed
      t.decimal :approx_value
      t.decimal :proposed_value
      t.decimal :submitted_value
      t.decimal :approved_value
      t.text :comments
      t.string :engineer
      t.string :bp

      t.timestamps null: false
    end
  end
end
