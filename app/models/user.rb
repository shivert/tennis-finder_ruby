# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  player_1_id_id  :integer
#

class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_one :user_profile, dependent: :destroy

  # Validations
  validates_presence_of :email, :password_digest
end
