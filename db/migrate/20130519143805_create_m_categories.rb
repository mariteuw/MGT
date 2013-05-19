class CreateMCategories < ActiveRecord::Migration
  def self.up
    create_table :m_categories do |t|
      t.string :name_M_Categor
      t.string :img_M_Categor

      t.timestamps
    end
  end

  def self.down
    drop_table :m_categories
  end
end
