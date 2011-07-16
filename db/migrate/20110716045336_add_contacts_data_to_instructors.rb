class AddContactsDataToInstructors < ActiveRecord::Migration
   def self.up

    add_column :instructors, :tel1, :string
    add_column :instructors, :tel2, :string
    add_column :instructors, :cel1, :string
    add_column :instructors, :cel2, :string
    add_column :instructors, :email, :string

  end

  def self.down

    remove_column :instructors, :tel1, :string
    remove_column :instructors, :tel2, :string
    remove_column :instructors, :cel1, :string
    remove_column :instructors, :cel2, :string
    add_column :instructors, :email, :string
  end
end

