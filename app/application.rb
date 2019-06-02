class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item = path.split("/items/").last
    else
      resp.route = 404
  end

end
