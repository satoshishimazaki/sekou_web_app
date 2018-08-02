class RenameClientsCompanyToClientAccount < ActiveRecord::Migration[5.2]
  def change
    rename_table :clients_companies, :client_accounts
  end
end
