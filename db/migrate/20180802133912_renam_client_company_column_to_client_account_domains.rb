class RenamClientCompanyColumnToClientAccountDomains < ActiveRecord::Migration[5.2]
  def change
    rename_column :client_account_domains, :clients_company_id, :client_account_id
  end
end
