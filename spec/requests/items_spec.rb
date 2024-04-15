require 'rails_helper'

RSpec.describe "Items", type: :request do
  let(:user) { User.create(
    email: "testuser1@test.com",
    password: "test",
    password_confirmation: "test"
  )
}
  describe "GET /index" do
    it "gets a list of items" do
      item = user.items.create(
        title: "2004 Rav4",
        price: 3000.00,
        contact: "lorem55@exmple.net",
        location: "WA",
        condition: "Good",
        description: "Belonged to my late uncle",
        image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
      )

      get '/items'

      item = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(item.first["title"]).to eq("2004 Rav4")
    end
  end
end
