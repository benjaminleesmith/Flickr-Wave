# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flickr_wave_session',
  :secret      => '71475c6c17a3561f9b469e4622c6c15284c586a85c37171b374dae2f659030ecabdf72bb3ada3e9bede52fb9cd0c8aa380b88b74afa50c32cca46d9b6d700692'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
