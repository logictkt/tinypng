require 'bundler'
Bundler.require
Dotenv.load

Tinify.key = ENV['TINIFY_KEY']

ARGV.each do |path|
  source = Tinify.from_file(path)
  dir_name = File.dirname(path)
  origin_filename = File.basename(path)
  source.to_file(File.join(dir_name, "#{origin_filename}.optimized"))
end
