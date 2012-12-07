# Pdf2png

A PDF to PNGs conversion tool.

This tool depends on pdftopmm and convert(ImageMagick).
These two commands have to be installed before you use pdf2png.

## Installation

Add this line to your application's Gemfile:

    gem 'pdf2png'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pdf2png

## Usage

$ pdf2png path/to/pdf
$ pdf2png path/to/pdf -d out_dir
$ pdf2png path/to/pdf --prefix=page_

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
