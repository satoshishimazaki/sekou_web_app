class RenameClientsCompanyDomainToClientAccountsDomains < ActiveRecord::Migration[5.2]
  def change
    rename_table :clients_company_domains, :client_accounts_domains
  end
end
