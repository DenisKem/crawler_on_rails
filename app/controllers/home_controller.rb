class HomeController < ApplicationController
  def index
    
  end

  def crawl
    @service = Forms::CrawlForm.new(params.permit!).tap(&:call)
  end
end
