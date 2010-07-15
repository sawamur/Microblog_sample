# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_microblog_session',
  :secret      => '68646ac2821e94a04d775e4c2cdf34b0d27bee321410c9c9399369f99fa32198f5d9ba63a78630a63f839a43df3cf8390ce87d5600363c496bc00749c7f8542b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
