class InputParser
  def call(file)
    File.open(file).readlines.map(&:chomp)
  end
end
