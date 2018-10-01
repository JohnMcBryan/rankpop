Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '191813446617-9ngq3s8c8lmu8f3fc18gksufgv84qvru.apps.googleusercontent.com', 'THEkXQXFE4ei76aElO4C8oTX',
end