# == Schema Information
#
# Table name: permissions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Permission < ActiveRecord::Base
  has_many :users
end
