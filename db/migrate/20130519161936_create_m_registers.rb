class CreateMRegisters < ActiveRecord::Migration
  def self.up
    create_table :m_registers do |t|
      t.integer :id_city_M_Register
      t.string :fname_M_Register
      t.string :lname_M_Register
      t.string :date_bith_M_Register
      t.string :countrie_M_Register
      t.string :email_M_Register
      t.string :pic_M_Register
      t.string :date_today_M_Register
      t.string :pass_M_Register
      t.string :adresse1_M_Register
      t.integer :status_M_Register

      t.timestamps
    end
  end

  def self.down
    drop_table :m_registers
  end
end
