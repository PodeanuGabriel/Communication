class Notification < ActiveRecord::Base
  attr_accessible :begin, :content, :end, :from, :id, :interval, :interval_type, :subject, :to
end
