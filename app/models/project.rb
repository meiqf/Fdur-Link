# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Project < ActiveRecord::Base
  belongs_to :user

  validates :content, length: {:maximum => 140}
end
