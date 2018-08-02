class AddClientRefToClientAccounts < ActiveRecord::Migration[5.2]
  def change
    add_reference :client_accounts, :client, foreign_key: true
  end
end
