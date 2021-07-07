class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now.strftime("%p")
        
        if time == "AM"
             resp.write "Good Morning"
        else 
            resp.write "Good Afternoon"
        end 
        resp.finish       
    end
end