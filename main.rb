require 'bundler'
Bundler.require
Dotenv.load

Tinify.key = ENV['TINIFY_KEY']

ARGV.each do |path|
  p "convertint #{path}..."
  source = Tinify.from_file(path)
  source.to_file(path)
end
