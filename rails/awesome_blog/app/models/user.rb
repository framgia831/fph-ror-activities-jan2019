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
end
