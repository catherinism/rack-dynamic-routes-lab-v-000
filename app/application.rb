class Application

  def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

  if req.path=="/item"
     resp.write "You requested the songs"
     
   elsif 
     resp.write "Route not found"
     resp.status = 404

   else
     resp.write "Item not found"
     resp.status = 400
   end

   

   resp.finish
 end

end
