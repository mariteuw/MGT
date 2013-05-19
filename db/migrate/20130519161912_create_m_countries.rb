class CreateMCountries < ActiveRecord::Migration
  def self.up
    create_table :m_countries do |t|
      t.string :name_M_Countries

      t.timestamps
    end
  end

  def self.down
    drop_table :m_countries
  end
end
