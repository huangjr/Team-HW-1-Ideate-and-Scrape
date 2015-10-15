require 'minitest/autorun'
require 'minitest/rg'
require 'vcr'
require 'webmock/minitest'
require_relative '../lib/scrape'

VCR.configure do |config|
    config.cassette_library_dir = 'fixtures/vcr/cassettes'
    config.hook_into :webmock
end

VCR.use_cassette('codeschool') do
  
  codeschool = SiteScraper.new.code_school_data
  golden     = File.read('fixtures/output.json')
  
  describe 'test for code school' do
    it 'has same length' do
      codeschool.size.must_equal output.chomp.length
    end
    it 'should be same' do
      JSON.parse(codeschool).must_equal JSON.parse(output)
    end
  end
end
