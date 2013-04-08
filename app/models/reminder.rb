class Reminder < ActiveRecord::Base
  attr_accessible :content, :from, :interval, :subject, :to, :type
end
