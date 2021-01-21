class Application
  def call(env)
    resp = Rack::Response.new

    time_before_noon = true

    time = Time.now

    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end