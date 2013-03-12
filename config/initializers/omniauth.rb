Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "136242213215461", "2ec5dfc07cbcac98dc0e05eee40ea882"
end