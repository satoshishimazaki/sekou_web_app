class CreateClientsAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :client_accounts do |t|
      t.string :name
      t.string :address_post
      t.integer :prefecture_id
      t.string :address_city
      t.string :address_building
      t.date :established
      t.string :president
      t.integer :employees_number
      t.string :employees_memo
      t.integer :stock
      t.string :stock_memo
      t.string :homepage
      t.string :time_start
      t.string :time_end
      t.string :time_memo
      t.float :average_ages
      t.string :domain_text
      t.string :welfare
      t.string :day_off
      t.string :recruiter

      t.timestamps
    end

    add_reference :client_accounts, :client, foreign_key: true

    create_table :domains do |t|
      t.string :name

      t.timestamps
    end

    create_table :client_accounts_domains do |t|
      t.integer :client_account_id
      t.integer :domain_id

      t.timestamps
    end

  end
end
