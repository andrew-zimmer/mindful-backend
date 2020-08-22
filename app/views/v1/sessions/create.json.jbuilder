json.data do
    json.user do
        json.call(
            @user,
            :email,
            :id,
            :username,
            :authentication_token,
            :moods
        )
    end
end
