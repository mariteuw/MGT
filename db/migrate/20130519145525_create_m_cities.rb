class CreateMCities < ActiveRecord::Migration
  def self.up
    create_table :m_cities do |t|
      t.string :name_M_Cit
      t.integer :id_country_M_Cit

      t.timestamps
    end
  end

  def self.down
    drop_table :m_cities
  end
end
