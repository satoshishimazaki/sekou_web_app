class RenameClientAccountDomainToClientAccountDomain < ActiveRecord::Migration[5.2]
  def change
    rename_table :client_accounts_domains, :client_account_domains
  end
end
