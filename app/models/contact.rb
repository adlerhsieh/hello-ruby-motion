class Contact
  attr_accessor :name, :phone, :address
 
  def self.all
    [
      new("Alen", "0912345678", "Taipei"),
      new("Bob", "0912345678", "Taipei"),
      new("Chris", "0912345678", "Taipei"),
      new("Richie", "0912345678", "Taipei"),
      new("Oliver", "0912345678", "Taipei"),
      new("Zamy", "0912345678", "Taipei")
    ]
  end
 
  def initialize(name, tel, address)
    self.name = name
    self.phone = tel
    self.address = address
  end
end