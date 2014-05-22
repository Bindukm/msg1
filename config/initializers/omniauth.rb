OmniAuth.config.logger = Rails.logger
     
    Rails.application.config.middleware.use OmniAuth::Builder do
    provider :linkedin, '759g36jq3t83qh', 's20EKtePh4Z7h295', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
    end