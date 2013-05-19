class CreateMPreferences < ActiveRecord::Migration
  def self.up
    create_table :m_preferences do |t|
      t.string :bar_M_Preference
      t.string :fashion_M_Preference
      t.string :events_M_Preference
      t.string :beauty_M_Preference
      t.string :luxury_M_Preference
      t.string :email_M_Preference

      t.timestamps
    end
  end

  def self.down
    drop_table :m_preferences
  end
end
