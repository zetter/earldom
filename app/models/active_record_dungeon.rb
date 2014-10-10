class ActiveRecordDungeon < ActiveRecord::Base
  def self.store(who_did_the_thing, thing)
    create!(who_did_the_thing: who_did_the_thing, duration: thing.first, release_time: thing.second)
  end

  def self.delete(who_did_the_thing)
    thing = find_by(who_did_the_thing: who_did_the_thing)
    if thing
      thing.destroy!
      [thing.duration, thing.release_time]
    end
  end

  def release_time=(time)
    self[:release_time] = time.to_i
  end

  def release_time
    Time.at(self[:release_time])
  end
end