# frozen_string_literal: true

class Team < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_one :match_history, dependent: :destroy
end
