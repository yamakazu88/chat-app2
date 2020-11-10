# frozen_string_literal: true

class DeviseCreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      ## Database authenticatable
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
