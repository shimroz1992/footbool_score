# frozen_string_literal: true

namespace :match_history_import do
  desc 'Import Club And Match Hisory'
  task load_data: :environment do
    # Import data using service
    ImportData.new('football.dat').import_file
  end
end
