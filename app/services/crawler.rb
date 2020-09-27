class Crawler
  include Tainbox

  attribute :threads_count, Integer, default: 1

  def call(urls)
    Parallel.map(urls, in_threads: threads_count) do |url|
      Parser.new.call(url)
    end
  end
end
