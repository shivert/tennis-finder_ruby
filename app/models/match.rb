# == Schema Information
#
# Table name: matches
#
#  id          :integer          not null, primary key
#  court_id    :integer
#  status      :string(255)
#  type        :string(255)
#  start_time  :datetime
#  end_time    :datetime
#  player_1_id :integer
#  player_2_id :integer
#  winner_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Match < ApplicationRecord
  # Model associations
  has_one :player_1, :class_name => "User", :foreign_key => "player_1_id"
  has_one :player_2, :class_name => "User", :foreign_key => "player_2_id"

  # Validations
  validates_presence_of :player_1_id, :player_2_id
end
