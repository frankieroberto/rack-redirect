require 'rack'

run lambda { |env|
  request_path = env['REQUEST_PATH']
  redirect_url = ENV['REDIRECT_TO'] + request_path
  [301, {
    "location" => redirect_url,
    "cache-control" => "max-age=86400, public"
  }, ["Redirecting"]]
}
