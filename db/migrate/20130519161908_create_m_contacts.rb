class CreateMContacts < ActiveRecord::Migration
  def self.up
    create_table :m_contacts do |t|
      t.string :hometown_M_Contact
      t.string :address1_M_Contact
      t.string :address_M_Contact
      t.string :ccity_M_Contact
      t.string :ccountries_M_Contact
      t.string :cstate_M_Contact
      t.string :zip_M_Contact
      t.string :homephone_M_Contact
      t.string :cellphone_M_Contact
      t.string :webpage_M_Contact
      t.string :email_M_Contact
      t.string :date_M_Contact

      t.timestamps
    end
  end

  def self.down
    drop_table :m_contacts
  end
end
