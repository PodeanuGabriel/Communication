class Mail < ActiveRecord::Base
  attr_accessible :content, :from, :id, :password, :to, :subject
  
end
