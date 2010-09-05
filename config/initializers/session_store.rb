# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_debtfu_session',
  :secret      => '6682b58795ded7adbfdfc0d1176dc60f123de7e27fa8919fa887572ed36c4e157fa3f07b342bd24a855cc8e24b11ca6822204c991b8d8270192ce1d9fb223c03'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
