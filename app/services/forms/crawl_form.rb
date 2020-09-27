module Forms
  class CrawlForm
    include Tainbox
    
    attribute :file
    attribute :threads_count

    attr_reader :result
    attr_reader :time_spent

    def call
      start_time = Time.current
      @result = crawl
      @time_spent = Time.current - start_time
    end

    private

    def crawl
      Crawler.new(threads_count: threads_count).call(urls)
    end

    def urls
      InputParser.new.call(file)
    end
  end
end
