# frozen_string_literal: true

class User < ApplicationRecord
  include Clearance::User

  validates :username, presence: true, uniqueness: true
  has_many :shouts, dependent: :destroy
end
