class AddNumbertoContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :number, :integer
  end
end
