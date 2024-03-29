class User < ActiveRecord::Base
  attr_accessor :password, :email, :password_confirmation
  validates_confirmation_of :password
  valdiates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def encrypt_password
    if password_present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret (password, user.password_salt)
      user
    else
      nil
    end
  end
end
