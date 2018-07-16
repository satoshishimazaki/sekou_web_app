class CreateScoutsMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :scouts_messages do |t|
      t.integer :scout_id
      t.string :content
      t.binary :attachment

      t.timestamps
    end
  end
end
