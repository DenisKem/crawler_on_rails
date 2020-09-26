require 'rails_helper'

describe "Parse input file", type: :feature do
  let(:test_file) { Rails.root / 'spec' / 'support' / 'input.txt' }
  let(:expected_urls) do
    %w[
      http://example.com/pages/1
      http://example.com/pages/2
    ]
  end

  before do
    visit root_path
    attach_file('File', test_file)
  end
  
  it "calls Crawler service" do
    expect_any_instance_of(Crawler).to receive(:call).with(expected_urls)
    click_on('Crawl')
  end
end
