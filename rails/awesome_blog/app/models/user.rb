class User < ApplicationRecord
    has_many :microposts #array object

    before_save { email.downcase! }

    validates :name, presence: true

    #constant variable
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true,
                    format: { with: EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

    has_secure_password

    def active_relationships
        Relationship.where(follower_id: id)
        # SELECT * FROM relationships WHERE
        # follower_id = id 
    end

    def passive_relationships
        Relationship.where(followed_id: id)
    end

    def followers
        ids = passive_relationships.pluck(:follower_id)
        User.where(id: ids)
    end

    def following
        ids = active_relationships.pluck(:followed_id)
        User.where(id: ids)
    end

    def follow(other_user)
        Relationship.create(
            follower_id: id,
            followed_id: other_user.id
        )
    end

    def relationship(other_user)
        active_relationships.find_by(
            followed_id: other_user.id
        )
    end

    def feed
        ids = following.pluck(:id)
        ids << id

        Micropost.where(user_id: ids)
        # SELECT * FROM microposts WHERE user_id = [2, 3] OR user_id = 1
    end
end
