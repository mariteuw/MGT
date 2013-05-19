class CreateMFriends < ActiveRecord::Migration
  def self.up
    create_table :m_friends do |t|
      t.integer :id_sender_M_Friends
      t.integer :id_receiver_M_Friends
      t.integer :status_M_Friends

      t.timestamps
    end
  end

  def self.down
    drop_table :m_friends
  end
end
