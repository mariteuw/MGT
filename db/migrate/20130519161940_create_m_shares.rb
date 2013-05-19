class CreateMShares < ActiveRecord::Migration
  def self.up
    create_table :m_shares do |t|
      t.integer :id_sender_M_Share
      t.integer :id_recever_M_Share
      t.integer :id_tip_M_Share
      t.string :date_M_Share
      t.string :msg_M_Share

      t.timestamps
    end
  end

  def self.down
    drop_table :m_shares
  end
end
