module UsersHelper
    def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email)
        url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    
        image_tag(url)
    end
end
