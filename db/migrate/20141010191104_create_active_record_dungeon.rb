class CreateActiveRecordDungeon < ActiveRecord::Migration
  def change
    create_table :active_record_dungeons do |t|
      t.string :who_did_the_thing, null: false
      t.integer :duration, limit: 8, null: false
      t.integer :release_time, limit: 8, null: false
    end

    add_index :active_record_dungeons, :who_did_the_thing, unique: true
  end
end