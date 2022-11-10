class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


  #Post - adding to the Shopping List
  post '/items' do
    send =Item.create(
      # t.string "name"
      # t.string "quantity"
      # t.integer "price"
      # t.string "description"

      name: params[:name],
      quantity: params[:quantity],
      price: params[:price],
      description: params[:description]
    )
    send.to_json
  end

   # Get request- fetch items from Item model
   get "/items" do 
    all_items=Item.all
    all_items.to_json
  end

  #Delete request to items
delete "/items/:id" do
  remove_item=Item.find(params[:id])
  remove_item.destroy
  "Item record deleted successfully"
end

  #Get request on shopping list - Display all shopping list

  get "/list" do 
    all_shopping=ShoppingList.all
    all_shopping.to_json
  end
 # Get specific List - Display one specific list
   get "/list/:id" do
    one_shopping_list=ShoppingList.find(params[:id])
    one_shopping_list.to_json
   end

     #Delete request to shopping List - Removes all shopping list
      delete "/list/:id" do
        remove_shopping_list=ShoppingList.find(params[:id])
        remove_shopping_list.destroy
        "Shopping List delete successful"
      end

      ## More tests ###
      # Get Users
      get "/users" do
        all_users=User.all
        all_users.to_json
      end

      # Get Individual Users
      get "/users/:id" do
        one_user=User.find(params[:id])
       one_user.to_json
      end

      post "/users" do
        send =User.create(
          first_name: params[:first_name],
          last_name: params[:last_name],
          email: params[:email],
          user_name: params[:user_name]
          password: params[:password]
        )
        send.to_json
      end
end
