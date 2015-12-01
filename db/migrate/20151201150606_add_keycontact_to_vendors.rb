class AddKeycontactToVendors < ActiveRecord::Migration

  def change
    add_column :vendors, :keycontact, :string
  end
end
