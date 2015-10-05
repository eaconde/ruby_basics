class Model
  # @@ class variable
  @@all_fields = []

  def self.field(name)
    @@all_fields << name
    attr_accessor(name)
  end

  def initialize
    @fields = @@all_fields
  end
end

class Account < Model
  field :balance
  field :address
  field :name
end

a = Account.new
a.balance = 1_000_000
a.address = "1010 Langley Lane"
a.name = "Mr MoeMoney"
puts a.inspect
