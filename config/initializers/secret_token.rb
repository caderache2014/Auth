# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Auth::Application.config.secret_key_base = '68e5038ada4f1a65e1e8c01f9166b663298dbfa0a133060463a6291c7cbdb7d002eb73af9d2ba17df579ba230051d1f422c6c3cf05f21632d0239e4587fa4785'
