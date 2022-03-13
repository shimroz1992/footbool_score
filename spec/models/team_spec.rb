# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Team, type: :model do
  it 'Has one after adding one' do
    Team.create(name: 'sample')
    expect(Team.count).to eq 1
  end
end
