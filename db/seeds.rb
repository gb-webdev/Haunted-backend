testuser1 = User.where(email: "testuser1@test.com").first_or_create(password: "testpass", password_confirmation: "testpass")

testuser2 = User.where(email: "testuser2@test.com").first_or_create(password: "testpass", password_confirmation: "testpass")

testuser1_items = [
    {
    title: "2004 Rav4",
    price: 3000.00,
    contact: "lorem55@exmple.net",
    location: "WA",
    condition: "Good",
    description: "Belonged to my late uncle",
    image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
    }
]

testuser2_items = [
    {
    title: "Piano",
    price: 800.00,
    contact: "999-999-9999",
    location: "Carmel Highlands, CA",
    condition: "Needs work",
    description: "My late husbands piano, it has not been tuned in some time",
    image: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fceat.com.tn%2Fkjyo.aspx%3Fcname%3Dcable%2Band%2Bsons%2Bbaby%2Bgrand%2Bpiano%26cid%3D95&psig=AOvVaw1oHFZjiB-zzgrnaJF5H0CH&ust=1713150551425000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMDdkKTdwIUDFQAAAAAdAAAAABAV"
    }
]

testuser1_items.each do |item|
    testuser1.items.create(item)
    p "created #{item}"
end

testuser2_items.each do |item|
    testuser2.items.create(item)
    p "created #{item}"
end