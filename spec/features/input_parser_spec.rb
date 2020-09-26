require 'rails_helper'

# TODO rename spec to "Crawling"
describe "Parse input file", type: :feature do
  let(:test_file) { Rails.root / 'spec' / 'support' / 'input.txt' }
  let(:expected_urls) do
    %w[
      http://example.com/pages/1
      http://example.com/pages/2
    ]
  end
  
  let(:results) do
    [
      {
        url:   "http://example.com/pages/1",
        title: "Page one",
      },
      {
        url:   "http://example.com/pages/2",
        title: "Page two",
      },
    ]
  end

  before do
    visit root_path
    attach_file('File', test_file)
  end
  
  it "display crawled titles" do
    expect_any_instance_of(Crawler).to receive(:call).with(expected_urls).and_return(results)
    click_on('Crawl')

    expect(find("#results-0 .title-value").text).to eq("Page one")
    expect(find("#results-1 .title-value").text).to eq("Page two")
  end
end
