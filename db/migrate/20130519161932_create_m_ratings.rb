class CreateMRatings < ActiveRecord::Migration
  def self.up
    create_table :m_ratings do |t|
      t.integer :rating_M_Rating
      t.string :date_M_Rating
      t.integer :id_user_M_Rating
      t.string :id_tip_M_Rating
      t.integer :id_owner_M_Rating

      t.timestamps
    end
  end

  def self.down
    drop_table :m_ratings
  end
end
