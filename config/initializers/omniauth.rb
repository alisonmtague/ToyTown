Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, 'Yfa1cj8i40WkkvMXWnEv4qes3', 'Pdk3RYkvVB4AbwIlgG1jLbF91HnTEaLylNy0uUI5tCdUP2PsvR'
	# provider :facebook, 'APP_ID', 'APP_SECRET'
end