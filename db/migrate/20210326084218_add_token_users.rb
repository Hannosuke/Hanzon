class AddTokenUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :token, :string, default: ""
  end
end
