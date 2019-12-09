class App
  def call(environment_hash)
    # p environment_hash

    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    req =  Rack::Request.new(environment_hash)
    p req

    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    p req.path
    if req.path.match("/sith")
      body_content = "Count Dooku"
    elsif req.path.match("/jedi")
      body_content = 'Rey'
    else
      body_content = 'Welcome! hello world. Consider /jedi and /sith urls during your visit' # or {}
    end

    # body = [
    #   <<-RESPONSE_HTML
    #     <!DOCTYPE html>
    #     <html lang="en" dir="ltr">
    #       <head>
    #         <meta charset="utf-8">
    #         <title></title>
    #       </head>
    #       <body>
    #         <h1>#{body_content}</h1>
    #       </body>
    #     </html>
    #   RESPONSE_HTML
    # ]

    body = ["hello"]

    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    status_code = 200
    header = {}

    return [status_code, header, body]
  end
end
