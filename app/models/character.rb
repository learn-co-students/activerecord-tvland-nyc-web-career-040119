require 'pry'

class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  belongs_to :network

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name:)
    show = Show.find_or_create_by(name: name)
    self.show = show
  end
end
