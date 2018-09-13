require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

get '/' do
    erb :bakery
end

get '/muffin' do
    erb :muffin
end

get '/cookie' do
    erb :cookie
end

get '/cake' do
    erb :cake
end

get '/email' do
    erb :email
end

post '/' do
from = Email.new(email: 'wuzzie04@hotmail.com')
to = Email.new(email: params[:email])
subject = 'Sending with SendGrid is Fun'
content = Content.new(type: 'text/html', 
    value: erb(:cata)
)


mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['FUN_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
# puts response.status_code
# puts response.body
# puts response.parsed_body
# puts response.headers
puts params[:content]
redirect "/"
end


