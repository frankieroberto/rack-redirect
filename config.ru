require 'rack'

run lambda { |env|
  request_path = env['REQUEST_URI']
  redirect_url = ENV['REDIRECT_TO'] + request_path
  [301, {
    "Location" => redirect_url,
    "Cache-Control" => "max-age=86400, public"
  }, ["Redirecting"]]
}
