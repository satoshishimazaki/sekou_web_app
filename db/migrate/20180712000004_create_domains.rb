class CreateDomains < ActiveRecord::Migration[5.2]
  def change
    #事業領域
    create_table :domains do |t|
      t.string :name

      t.timestamps
    end

    #職歴の事業領域
    create_table :career_domains do |t|
      t.integer :career_id
      t.integer :domain_id

      t.timestamps
    end

    #顧客の事業領域
    create_table :client_domains do |t|
      t.integer :client_id
      t.integer :domain_id

      t.timestamps
    end

  end

end
