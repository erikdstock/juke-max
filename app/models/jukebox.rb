class Jukebox < ActiveRecord::Base

  def activate!
    self.active = true
  end
end
