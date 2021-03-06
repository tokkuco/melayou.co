Devise.setup do |config|

  config.mailer_sender = 'Amin @ Melayou <no-reply@melayou.com>'


  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = false
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  config.omniauth :facebook, '2007985679442670', 'dc275c517e0e4be31308a89609e3e271', scope: 'email', info_fields: 'email, name'
end