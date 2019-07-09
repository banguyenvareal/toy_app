class User < ApplicationRecord
	has_many :miccroposts
	validates :name, presence: true
end
