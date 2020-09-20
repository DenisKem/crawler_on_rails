describe Parser do
  let(:url)   { "http://example.com" }
  let(:title) { "Test title" }

  let(:html) do
    <<~HTML
      <html>
        <head>
          <title>
            #{title}
          </title>
        </head>
      </html>
    HTML
  end

  let(:expected) do
    {
      url:   url,
      title: title,
    }
  end

  before do
    stub_request(:get, url).to_return(status: 200, body: html)
  end

  it "returns title" do
    expect(described_class.new.call(url)).to eq(expected)
  end
end
