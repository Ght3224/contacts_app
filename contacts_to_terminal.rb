require "http"

response = HTTP.get('http://localhost:3000/api/contact')


contacts = response.parse 


contacts = contacts["message"]


contacts.each{|contact| p contact}




