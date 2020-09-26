class HomeController < ApplicationController
  def index
    
  end

  def crawl
    urls = InputParser.new.call(file)
    @result = Crawler.new.call(urls)
  end

  private

  def file
    params.permit(:file)[:file]
  end
end
