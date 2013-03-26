class MailController < ApplicationController
  require "cgi"

  def sendmail
#email_config = ParseConfig.new('email.conf').params
from = params[:mail][:from]
p = params[:mail][:password]
to = params[:mail][:to]
subject = params[:mail][:subject]
content = params[:mail][:content]
mail = <<EOF
From: #{from}
Content-type: text/html
To: #{to}
subject: #{subject}
Date: #{Time.now.rfc2822}

#{content}
EOF


Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
Net::SMTP.start('smtp.gmail.com', 587, 'gmail.com', from, p, :login) do |smtp|
  smtp.send_message(mail, from, to)
end
end
end
