OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '217946410175-s12edjfn5pgorv1trfl45oc058eebs5l.apps.googleusercontent.com', 'whhhpG4yGaPWzwDPqV-Mh6lq', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
