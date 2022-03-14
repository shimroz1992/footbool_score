# frozen_string_literal: true

class ImportData
  def initialize(file_path)
    @file_path = file_path
  end

  def import_file
    input = open_file
    array = input.lines.map(&:split)
    array.each do |history_data|
      next if history_data[0] == 'Team'

      team = Team.find_or_create_by(name: history_data[1])
      next if team.blank?

      add_record(team, history_data)
    end
  end

  def open_file
    File.open(Rails.public_path + @file_path, File::RDONLY, &:read)
  end

  def add_record(team, history_data)
    if team.match_history.present?
      update_record(team, history_data)
    else
      insert_record(team, history_data)
    end
  end

  def insert_record(team, history_data)
    team_history = team.build_match_history(goal_out: history_data[6], goal_in: history_data[8],
                                            played: history_data[2], won: history_data[3], lost: history_data[4],
                                            draw: history_data[5], points: history_data[9])
    team_history.save
  end

  def update_record
    team.match_history.update(goal_out: history_data[6], goal_in: history_data[8], played: history_data[2],
                              won: history_data[3], lost: history_data[4], draw: history_data[5],
                              points: history_data[9])
  end
end
