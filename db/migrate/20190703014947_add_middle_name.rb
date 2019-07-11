class AddMiddleName < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :middle_name, :string
  end
end
