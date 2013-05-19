class CreateMSubCategories < ActiveRecord::Migration
  def self.up
    create_table :m_sub_categories do |t|
      t.string :name_M_SubCategories
      t.string :img_M_SubCategories
      t.integer :id_cat_M_SubCategories

      t.timestamps
    end
  end

  def self.down
    drop_table :m_sub_categories
  end
end
