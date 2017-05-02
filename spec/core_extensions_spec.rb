require_relative "../lib/core_extensions.rb"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty"
    it "returns false if some of the Array elements are not empty"
    it "returns true for an empty Array"
  end

  context "#all_empty?" do
    it "returns true if all elements of the Array are empty"
    it "returns false if some of the Array elements are not empty"
    it "returns true for an empty array"
  end

  context "#all_same?" do
    it "returns true if all elements in the array are the same"
    it "returns false if some of the Array elements are not the same"
    it "returns true for an empty Array"
  end

  context "#any_empty?" do
    it "returns true if any of the value are empty"
    it "returns false if none of the values are empty"
  end

  context "#none_empty?" do
    it "returns true if any of the value are empty"
    it "returns false if none of the values are empty"
  end
end
