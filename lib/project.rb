class Project
  attr_reader :id
  attr_accessor :title

  # Class variables have been removed.

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id) # Note that this line has been changed.
  end

  def ==(other)
    self.class.eql?(other.class) & self.title.eql?(other.title)
  end

end