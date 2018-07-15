class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|
      t.integer :employee_id
      t.string :conmany_name
      t.date :start
      t.date :end
      t.integer :employment_pattern_id
      t.string :career_outline

      t.timestamps
    end
  end
end
