class User < ApplicationRecord
  acts_as_google_authenticated lookup_token: :persistence_token, drift: 30, issuer: 'Test two factor'
  before_save { |record| record.persistence_token = SecureRandom.hex unless record.persistence_token }
  after_create { |record| record.set_google_secret }
end
