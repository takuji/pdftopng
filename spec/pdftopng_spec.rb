require "spec_helper"
require "fileutils"

describe "pdftopng" do
  before(:each) do
    FileUtils.rm_rf("./out") if Dir.exist?("./out")
  end

  after(:each) do
    FileUtils.rm_rf("./out") if Dir.exist?("./out")
  end

  it "converts a PDF file to png files" do
    system("ruby -I ./lib ./bin/pdftopng spec/data/sample.pdf").should be_true
    Dir.exist?("out").should be_true
  end
end