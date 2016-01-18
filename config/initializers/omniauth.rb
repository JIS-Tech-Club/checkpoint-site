OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '563405389028-4g1o13so9rhclpc1c7h1cclurk0bdj5m.apps.googleusercontent.com',
   '87nTg1uZSpoXQYwJ2Sdn0b_y',
   {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
   end
