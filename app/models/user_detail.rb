# == Schema Information
#
# Table name: user_details
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  avatar      :string(255)
#  qqnumber    :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class UserDetail < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true, length: {maximum: 20}
end
