require 'rails_helper'

RSpec.describe "MatchHistories", type: :request do
  describe "GET /index" do
      it "user without data" do
        get match_histories_url
      	expect(response.status).to eq(200)
	    expect(Team.count).to eq 0
	  end

	  it "user with data" do
        ImportData.new('football.dat').import_file
        get match_histories_url
      	expect(response.status).to eq(200)
	    expect(Team.count).to eq 20
	    expect(MatchHistory.count).to eq 21
	  end
  end


  describe "GET /match_histories/show_raw_file" do
      it "user open raw file" do
        get match_histories_show_raw_file_url
      	expect(response.status).to eq(200)
	  end
  end
end
