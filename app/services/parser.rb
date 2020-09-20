class Parser
  def call(url)
    html = download(url)

    {
      url: url,
      title: parse(html),
    }
  end

  private

  def download(url)
    Net::HTTP.get(URI(url))
  end

  def parse(html)
    Nokogiri::HTML(html).css("title")&.first&.text&.strip
  end
end
