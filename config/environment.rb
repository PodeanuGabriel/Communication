# Load the rails application
require File.expand_path('../application', __FILE__)
require 'autentificare'
require 'omniauth'

# Initialize the rails application
Broadcasting::Application.initialize!
