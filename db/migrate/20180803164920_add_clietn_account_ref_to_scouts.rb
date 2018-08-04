class AddClietnAccountRefToScouts < ActiveRecord::Migration[5.2]
  def change
    add_reference :scouts, :client_account, foreign_key: true
  end
end
