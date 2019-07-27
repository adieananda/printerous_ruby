Clearance.configure do |config|
	config.allow_sign_up = true
	# if Clearance.configuration.allow_sign_up?
	# 	gets '/sign_up' => 'clearance/users#new', as: 'sign_up'
	# end
	# config.cookie_domain = ".example.com"
	# config.cookie_expiration = lambda { |cookies| 1.year.from_now.utc }
	# # config.cookie_name = "remember_token"
	# config.cookie_path = "/"
	# config.routes = true
	# config.httponly = false
	config.mailer_sender = "reply@example.com"
	# config.password_strategy = Clearance::PasswordStrategies::BCrypt
	config.redirect_url = "/organizations"
	# config.rotate_csrf_on_sign_in = false
	# config.secure_cookie = false
	# config.sign_in_guards = []
	config.user_model = User	
 end