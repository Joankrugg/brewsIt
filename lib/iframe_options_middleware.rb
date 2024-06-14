class IframeOptionsMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    headers['X-Frame-Options'] = 'ALLOW-FROM https://beertrackr.modernboxrecords.com'
    [status, headers, response]
  end
end
