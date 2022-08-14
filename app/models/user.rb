class User < ActiveRecord::Base
    has_many :cards
    belongs_to :leaderboards
end