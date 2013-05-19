class CreateMProfessionels < ActiveRecord::Migration
  def self.up
    create_table :m_professionels do |t|
      t.string :high_school_M_Professionel
      t.string :college_M_Professionel
      t.string :major_M_Professionel
      t.string :degre_M_Professionel
      t.string :occupation_M_Professionel
      t.string :industry_M_Professionel
      t.string :email_M_Professionel
      t.string :date_M_Professionel

      t.timestamps
    end
  end

  def self.down
    drop_table :m_professionels
  end
end
