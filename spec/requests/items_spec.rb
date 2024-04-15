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

  describe "POST /create" do
    it "creates a new item" do
      item_params = {
        item: {
          title: "2004 Rav4",
          price: 3000.00,
          contact: "lorem55@exmple.net",
          location: "WA",
          condition: "Good",
          description: "Belonged to my late uncle",
          image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ",
          user_id: user.id
        }
      }
        post "/items", params: item_params

        expect(response).to have_http_status(200)

      item = Item.first
      expect(item.title).to eq "2004 Rav4" 
      expect(item.price).to eq 3000.00
      expect(item.contact).to eq "lorem55@exmple.net" 
      expect(item.location).to eq "WA" 
      expect(item.condition).to eq "Good" 
      expect(item.description).to eq "Belonged to my late uncle" 
      expect(item.image).to eq "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ"
      expect(item.user_id).to eq user.id
    end
  end

  describe "PATCH /update" do
    it "updates an item" do
      item_params = {
        item: {
          title: "2004 Rav4",
          price: 3000.00,
          contact: "lorem55@exmple.net",
          location: "WA",
          condition: "Good",
          description: "Belonged to my late uncle",
          image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ",
          user_id: user.id
        }
      }
      post "/items", params: item_params

      item = Item.first
        update_item_params = {
          item: {
            title: "2004 Rav4",
            price: 3000.00,
            contact: "lorem55@exmple.net",
            location: "WA",
            condition: "Good",
            description: "Belonged to my late uncle",
            image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ",
            user_id: user.id
          }
        }

        patch "/items/#{item.id}", params: update_item_params
        updated_item = Item.find(item.id)

        expect(updated_item.location).to eq "WA"
    end
  end

  describe "DELETE /destroy" do
    it "deletes an item" do
      item_params = {
        item: {
          title: "2004 Rav4",
          price: 3000.00,
          contact: "lorem55@exmple.net",
          location: "WA",
          condition: "Good",
          description: "Belonged to my late uncle",
          image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fjuanelo242a%2F46878562554&psig=AOvVaw0R5-SKtCUgaR3dqjJht7Q9&ust=1713150240628000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIi31JLcwIUDFQAAAAAdAAAAABAJ",
          user_id: user.id
        }
      }

      post "/items", params: item_params
      
      item = Item.first

      delete "/items/#{item.id}"

      expect(response).to have_http_status(200)

      items = Item.all

      expect(items).to be_empty

    end
  end

end
