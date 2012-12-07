require "pdftopng/version"
require "fileutils"

module PdfToPng

  # Your code goes here...
  def self.convert(pdf_path, options={})
    options = {
      work_dir: Pathname.new("./out"),
      prefix: nil
    }.merge(options)

    FileUtils.makedirs(options[:work_dir]) unless Dir.exist?(options[:work_dir])

    Dir.chdir(options[:work_dir]) do |path|
      `pdftoppm #{pdf_path} #{options[:prefix]}`
      Dir.entries(".").select{|e| /\.ppm$/ =~ e}.each do |ppm_path|
        png_path = to_png(ppm_path)
        `convert -resize 640x480 #{ppm_path} #{png_path}`
        File.delete(ppm_path)
      end
    end
  end

  private

  def self.to_png(ppm_path)
    ppm_path.sub(/\.ppm$/, '.png')
  end
end
