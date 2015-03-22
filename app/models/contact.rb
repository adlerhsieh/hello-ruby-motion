class Contact
  attr_accessor :name

  def initialize title
    self.name = title
  end

  def self.all
    [
      new("Alan"),
      new("Bob"),
      new("Chris"),
      new("Oliver")
    ]
  end

end
