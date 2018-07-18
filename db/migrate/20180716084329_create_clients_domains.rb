class CreateClientsDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :clients_domains do |t|
      t.integer :clients_id
      t.integer :domains

      t.timestamps
    end
  end
end
