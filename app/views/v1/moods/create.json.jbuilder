json.data do
    json.mood do
        json.id @mood.id
        json.mood @mood.mood
        json.comment @mood.comment
        json.created_at @mood.created_at
    end
end
