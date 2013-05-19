class CreateMTips < ActiveRecord::Migration
  def self.up
    create_table :m_tips do |t|
      t.string :title_M_Tips
      t.string :date_M_Tips
      t.string :description_M_Tips
      t.string :img_M_Tips
      t.string :address_M_Tips
      t.integer :id_city_M_Tips
      t.integer :id_subcat_M_Tips
      t.integer :id_user_M_Tips

      t.timestamps
    end
  end

  def self.down
    drop_table :m_tips
  end
end
