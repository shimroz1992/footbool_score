# frozen_string_literal: true

class MatchHistoriesController < ApplicationController
  # GET /match_histories or /match_histories.json
  def index
    match_histories = MatchHistory.includes(:team).where.not(team_id: nil).order('ABS(goal_out - goal_in) ASC')
    @match_histories = present(match_histories)
  end

  # GET /match_histories/1 or /match_histories/1.json
  def show; end

  def show_raw_file; end
end
