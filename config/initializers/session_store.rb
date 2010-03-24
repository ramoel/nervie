# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nervie_session',
  :secret      => 'ea02f9b25783879ae797b867182f0050fcd26c962641f2318791aefa93b35b9b5c8e914b1774ec8de3e5f784d88df3d3bb329a89504524833f1d60c545dfa595'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
