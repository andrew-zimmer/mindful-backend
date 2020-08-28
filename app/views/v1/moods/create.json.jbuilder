json.data do
    json.mood do
        json.user_id @mood.user_id
        json.mood @mood.mood
        json.comment @mood.comment
        json.created_at @mood.created_at
    end
end
