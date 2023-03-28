class CreateJobListings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_listings do |t|
      t.string :job_title
      t.integer :category_id
      t.string :description
      t.string :qualification
      t.string :deadline
      t.integer :employer_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
