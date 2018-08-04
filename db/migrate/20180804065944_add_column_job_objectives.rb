class AddColumnJobObjectives < ActiveRecord::Migration[5.2]
  def change
    add_column :job_objectives, :name, :string
  end
end
