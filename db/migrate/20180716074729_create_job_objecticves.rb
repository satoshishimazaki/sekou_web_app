class CreateJobObjecticves < ActiveRecord::Migration[5.2]
  def change
    create_table :job_objecticves do |t|
      t.string :name

      t.timestamps
    end
  end
end
