use Rack::Static,
  urls: %w[/assets /assets/css /assets/js /assets/img],
  root: 'public'

run ->(env) {
  [ 200,
    { 'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=1' },
    File.open('public/index.html', File::RDONLY)
  ]
}
