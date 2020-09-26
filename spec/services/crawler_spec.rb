describe Crawler do
  let(:url1) { "http://example.com/pages/1" }
  let(:title1) { "Page one" }

  let(:url2) { "http://example.com/pages/2" }
  let(:title2) { "Page two" }

  let(:urls) { [url1, url2] }

  before do
    allow_any_instance_of(Parser).to receive(:call).with(url1).and_return({
      url:   url1,
      title: title1,
    })
    allow_any_instance_of(Parser).to receive(:call).with(url2).and_return({
      url:   url2,
      title: title2,
    })
  end

  it "runs Parser" do
    result = described_class.new.call(urls)

    expect(result).to eq([
      {
        url:   url1,
        title: title1,
      },
      {
        url:   url2,
        title: title2,
      },
    ])
  end
end
