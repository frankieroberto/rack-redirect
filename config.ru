gem 'rack-rewrite'
require 'rack/rewrite'

use Rack::Rewrite do
  r301 %r{(.+)},    ENV['REDIRECT_TO'] + '$1', :headers => {'Cache-Control' => 'max-age=86400, public'}
end

run lambda { |env|
}