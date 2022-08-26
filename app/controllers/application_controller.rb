class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/types' do
    types = Type.all
    types.to_json
  end

  get '/users' do
    types = User.all
    types.to_json
  end
  
  get '/get_card_data' do
    card = Card.full_data
    card.to_json
  end

  get '/get_leaderboard' do
    card = Leaderboards.all.order(total_win: :desc)
    card.to_json
  end

  get '/cards' do
    card = Card.values_card
    card.to_json
  end

  post '/create_card' do
    cards_data = Card.create(
      card_name: params[:card_name],
      card_attack: params[:card_attack],
      card_defense: params[:card_defense],
      type_id: params[:type_id],
      user_id: params[:user_id]
    )
    cards_data.to_json
  end
  post '/add_user' do
    user_data = User.create(
      user_name: params[:user_name],
      user_password: params[:user_password],
      user_role: params[:user_role],
    )
    user_data.to_json
  end

  post '/add_leaderboard' do
    game_data = Leaderboards.create(
      user_name: params[:user_name],
      total_win: params[:total_win],
      total_lose: params[:total_lose],
      total_draw: params[:total_draw],
      user_id: params[:user_id]
    )
    cards_data.to_json
  end

  patch '/edit_card/:id' do
    # see the BakedGood class for the  method definition of `.by_price`
    crd = Card.find(params[:id])
    crd.update(
    card_name: params[:card_name],
    card_attack: params[:card_attack],
    card_defense: params[:card_defense],
    type_id: params[:type_id],
    user_id: params[:user_id]
    )
    crd.to_json
  end

  delete '/delete_card/:id' do
    crd = Card.find(params[:id])
    crd.destroy
    crd.to_json
  end

end
