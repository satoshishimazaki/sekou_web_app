class CreateScouts < ActiveRecord::Migration[5.2]
  def change
    create_table :scouts do |t|
      t.integer :agreement_count
      t.string :summary
      t.string :content

      t.timestamps
    end
    
    add_reference :scouts, :client, foreign_key: true
    add_reference :scouts, :user, foreign_key: true

    create_table :scouts_messages do |t|
      t.integer :scout_id
      t.string :content
      t.binary :attachment

      t.timestamps
    end
  end

end
