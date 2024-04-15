require 'rails_helper'

RSpec.describe Item, type: :model do
  
  let(:user) { User.create(
  email: "testuser1@test.com",
  password: "test",
  password_confirmation: "test"
  )
}

  it "should validate title" do
    item = user.items.create(
      price: 3000.00,
      contact: "lorem55@exmple.net",
      location: "WA",
      condition: "Good",
      description: "Belonged to my late uncle",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
    )
    expect(item.errors[:title]).to include("can't be blank")
  end

  it "should validate title" do
    item = user.items.create(
      title: "2004 Rav4",
      contact: "lorem55@exmple.net",
      location: "WA",
      condition: "Good",
      description: "Belonged to my late uncle",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
    )
    expect(item.errors[:price]).to include("can't be blank")
  end

  it "should validate title" do
    item = user.items.create(
      title: "2004 Rav4",
      price: 3000.00,
      location: "WA",
      condition: "Good",
      description: "Belonged to my late uncle",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
    )
    expect(item.errors[:contact]).to include("can't be blank")
  end

  it "should validate title" do
    item = user.items.create(
      title: "2004 Rav4",
      price: 3000.00,
      contact: "lorem55@exmple.net",
      condition: "Good",
      description: "Belonged to my late uncle",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
    )
    expect(item.errors[:location]).to include("can't be blank")
  end

  it "should validate title" do
    item = user.items.create(
      title: "2004 Rav4",
      price: 3000.00,
      contact: "lorem55@exmple.net",
      location: "WA",
      description: "Belonged to my late uncle",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
    )
    expect(item.errors[:condition]).to include("can't be blank")
  end

  it "should validate title" do
    item = user.items.create(
      title: "2004 Rav4",
      price: 3000.00,
      contact: "lorem55@exmple.net",
      location: "WA",
      condition: "Good",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
    )
    expect(item.errors[:description]).to include("can't be blank")
  end

  it "should validate title" do
    item = user.items.create(
      title: "2004 Rav4",
      price: 3000.00,
      contact: "lorem55@exmple.net",
      location: "WA",
      condition: "Good",
      description: "Belonged to my late uncle",
    )
    expect(item.errors[:image]).to include("can't be blank")
  end
end
