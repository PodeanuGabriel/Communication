class MailController < ApplicationController
  require "cgi"
  require "net/smtp"
  require "net/http"


  helper_method :to_root, :getjson

  def to_root
    redirect_to root_path
  end

  def getjson

    if session[:user_id]

      params = {:app_secret => APP_SECRET , :app_id => APP_ID}
      url = URI("http://localhost:3000/dummy.json")
      url.query = URI.encode_www_form(params)
      resp = Net::HTTP.get_response(url)
      data = resp.body

      json_file_root = Rails.root.join("public", "data.json")
      @json_object = JSON.parse(data)
      
      @client_json = Array.new
      
      @json_object.each do |i|
        @client_json << {
          :label => "#{i['user']['first_name']} #{i['user']['last_name']}",
          :value => i['user']['email']
        }
      end

      File.open( json_file_root , 'w' ){ |f| f.write(@client_json.to_json) }

    end

  end

  def sendmail
    
#email_config = ParseConfig.new('email.conf').params
from = 'testrubyfmi@gmail.com'
pass = 'testtest3'
recipients = ''
to = params[:mail][:to].split(' ')
to.each do |i|
  recipients = "#{recipients}, #{i}"
end
subject = params[:mail][:subject]
content = params[:mail][:content]
mail = <<EOF
From: #{from}
To: #{recipients}
MIME-Version: 1.0
Content-type: text/html
subject: #{subject}
Date: #{Time.now.rfc2822}

#{content}
<br /><br />
#{session[:user_id]['extra']['first_name']} #{session[:user_id]['extra']['last_name']}
EOF


Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
Net::SMTP.start('smtp.gmail.com', 587, 'gmail.com', from, pass, :login) do |smtp|
  smtp.send_message(mail, from, to)
end

end

  

end
