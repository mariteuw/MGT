class MCategory < ActiveRecord::Base
  has_many :m_tip
  has_many :m_sub_category
end

