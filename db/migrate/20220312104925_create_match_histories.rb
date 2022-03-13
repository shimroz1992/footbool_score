# frozen_string_literal: true

class CreateMatchHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :match_histories do |t|
      t.integer :goal_out
      t.integer :goal_in
      t.integer :played
      t.integer :won
      t.integer :lost
      t.integer :draw
      t.integer :points
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
