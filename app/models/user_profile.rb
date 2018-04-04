# == Schema Information
#
# Table name: user_profiles
#
#  id            :integer          not null, primary key
#  home_court_id :integer
#  first_name    :string(255)
#  last_name     :string(255)
#  user_name     :string(255)
#  phone_number  :string(255)
#  country       :string(255)
#  skill         :string(255)
#  gender        :string(255)
#  zip           :string(255)
#  birth_year    :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class UserProfile < ApplicationRecord
  belongs_to :user, dependent: :destroy

end
