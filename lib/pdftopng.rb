require "pdftopng/version"
require "fileutils"

module PdfToPng

  # Your code goes here...
  def self.convert(work_dir, pdf_path)
    FileUtils.makedirs(work_dir) unless Dir.exist?(work_dir)
    Dir.chdir(work_dir) do |path|
      `pdftoppm #{pdf_path} page`
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
