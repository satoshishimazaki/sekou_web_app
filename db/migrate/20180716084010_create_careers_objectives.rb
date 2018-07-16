class CreateCareersObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :careers_objectives do |t|
      t.integer :career_id
      t.integer :objective_id

      t.timestamps
    end
  end
end
