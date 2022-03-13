require 'rails_helper'

RSpec.describe MatchHistory, type: :model do
  	it "Has none if team is missing" do
  		# Team.create(name: 'sample')
		MatchHistory.create(goal_out: 30, goal_in: 64, played: 38, won: 5, lost: 13, draw: 20, points: 28, team_id: Team.last&.id)
		expect(Team.count).to eq 0
	end

  	it "Has one after adding one" do
  		Team.create(name: 'sample')
		MatchHistory.create(goal_out: 30, goal_in: 64, played: 38, won: 5, lost: 13, draw: 20, points: 28, team_id: Team.last.id)
		expect(Team.count).to eq 1
	end
end
