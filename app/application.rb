class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item = path.split("/items/").last
      if Item.all.include?(item)
        item.price
      else
        resp.route = 400
      end
    else
      resp.route = 404
    end
  end

end

