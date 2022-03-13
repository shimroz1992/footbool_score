# frozen_string_literal: true

class MatchHistoryPresenter < ApplicationPresenter
  # Don't worry about the initialize method, it's already handled for you.

  # You can now pass in an instance of MatchHistory when you initialize this presenter
  # and access it with the helper method: subject

  # Write methods for this presenter in here using the helper method
  def match_difference
    (subject.goal_out - subject.goal_in).abs
  end
end
