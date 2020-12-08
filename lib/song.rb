require 'pry'
class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  #::ClassMethods
#Remember that the self keyword is 
#omitted when defining class methods inside modules.
  attr_accessor :name
  attr_reader :artist

  
  @@songs = []
  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

end
