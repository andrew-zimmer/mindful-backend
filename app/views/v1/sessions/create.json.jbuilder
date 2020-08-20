json.data do
    json.user do
        json.call(
            @user,
            :email,
            :id,
            :username
        )
    end
end
