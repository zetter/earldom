class EarlController < ApplicationController

  def acceptable
  end

  def unacceptable
    1_000_000.years.dungeon!
  end
end