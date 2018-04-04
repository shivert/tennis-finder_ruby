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

require 'rails_helper'

RSpec.describe Match, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
