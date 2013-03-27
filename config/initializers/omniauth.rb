# To change this template, choose Tools | Templates
# and open the template in the editor.

APP_ID = 'Testtt'
APP_SECRET = '123456789'
PROVIDER_URL = 'http://fmi-autentificare.herokuapp.com'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :autentificare, APP_ID, APP_SECRET
end

