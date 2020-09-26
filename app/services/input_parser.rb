class InputParser
  def call(file)
    Crawler.new.call(
      urls(file)
    )
  end

  private

  def urls(file)
    File.open(file).readlines.map(&:chomp)
  end
end
