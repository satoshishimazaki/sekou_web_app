class CreateJobObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :job_objectives do |t|

      t.timestamps
    end
  end
end
