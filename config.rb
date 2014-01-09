require 'sass-globbing'
require 'liquid'
require 'jekyll'

module Jekyll
  module Filter
    def date_to_xmlschema(date)
    case date
    when String
      DateTime.xmlschema(date)
    when Date
      date.xmlschema
    end
  end
end

# Require any additional compass plugins here.
project_type = :stand_alone

# Publishing paths
http_path = "/"
http_images_path = "/images"
http_generated_images_path = "/images"
http_fonts_path = "/fonts"
css_dir = "public/stylesheets"

# Local development paths
sass_dir = "sass"
images_dir = "source/images"
fonts_dir = "source/fonts"

line_comments = false
output_style = :compressed
