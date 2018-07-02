require ('rspec')
require ('pry')
require ('do_it_yourself')

describe ('#do_it_yourself') do
  it "Takes in a key and value and stores the items" do
    new_hash = MyHash.new()
    new_hash.my_store("peanut", "elephant")
    expect(new_hash.my_fetch("peanut")).to(eq("elephant"))
  end
  it "Takes in a key and value and stores the items" do
    new_hash = MyHash.new()
    new_hash.my_store("peanut", "elephant")
    new_hash.my_store("cheese", "mouse")
    expect(new_hash.my_fetch("cheese")).to(eq("mouse"))
  end
  it "Takes in a value and returns true if value exists" do
    new_hash = MyHash.new()
    new_hash.my_store("peanut", "elephant")
    expect(new_hash.has_my_value?("elephant")).to(eq(true))
  end
  it "Takes in a key and returns true if key exists" do
    new_hash = MyHash.new()
    new_hash.my_store("peanut", "elephant")
    expect(new_hash.has_my_key?("peanut")).to(eq(true))
  end
end
