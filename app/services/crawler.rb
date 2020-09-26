class Crawler
  def call(urls, threads_count=urls.size)
    Parallel.map(urls, in_threads: threads_count) do |url|
      Parser.new.call(url)
    end
  end
end
