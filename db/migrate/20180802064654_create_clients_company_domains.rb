class CreateClientsCompanyDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :clients_company_domains do |t|
      t.integer :clients_company_id
      t.integer :domain_id

      t.timestamps
    end
  end
end
