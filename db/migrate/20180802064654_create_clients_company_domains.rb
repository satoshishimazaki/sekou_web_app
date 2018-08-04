class CreateClientsCompanyDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :clients_company_domains do |t|
      t.integer :clients_company_id
      t.integer :domain_id

      t.timestamps
    end

    rename_table :clients_company_domains, :client_accounts_domains

    rename_column :client_account_domains, :clients_company_id, :client_account_id

  end
end
