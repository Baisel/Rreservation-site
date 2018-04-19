class User < ApplicationRecord
  validates :name, presence: true,length: { minimum: 2, maximum: 20, allow_blank: true }
  validates :mail, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :performance_id , presence: true, inclusion: { in: 1..60 }
  validates :num, presence: true, inclusion: { in: 1..3 }
  validates :auth, length: { in: 20..20 }, uniqueness: true
  validates :key, inclusion: { in: 0..9999 }
end
