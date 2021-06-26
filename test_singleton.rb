class TestSingleton
  private_class_method :new

  def self.singleton
    @instance ||= self.new
  end

  private

  def initialize
  end
end

first = TestSingleton.singleton
second = TestSingleton.singleton

puts first.object_id
puts second.object_id