describe "pdf2png" do
  before(:each) do
    Dir.delete"./out" if Dir.exist?("./out")
  end

  it "converts a PDF file to png files" do
    system("./bin/pdf2png spec/data/sample.pdf").should be_true
    Dir.exist?("out").should be_true
  end
end