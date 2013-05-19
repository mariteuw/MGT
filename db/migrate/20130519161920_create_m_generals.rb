class CreateMGenerals < ActiveRecord::Migration
  def self.up
    create_table :m_generals do |t|
      t.string :gender_M_General
      t.string :relation_M_General
      t.string :state_M_General
      t.string :postal_code_M_General
      t.string :about_M_General
      t.string :email_M_General
      t.string :date_M_General

      t.timestamps
    end
  end

  def self.down
    drop_table :m_generals
  end
end
