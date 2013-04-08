# To change this template, choose Tools | Templates
# and open the template in the editor.

APP_ID = '15947906-f32f-411c-ac75-a6f402d8d1de'
APP_SECRET = '432e5d1eb42851d9f63b2dbe6a2c0af078542758b9baf46a9e'

CUSTOM_PROVIDER_URL = 'http://fmi-autentificare.herokuapp.com'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :autentificare, APP_ID, APP_SECRET
end

