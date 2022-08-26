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

  get '/leaderboards' do
    card = Leaderboards.all.order(total_win: :desc)
    card.to_json
  end

  post '/leaderboards' do
    game_data = Leaderboards.create(
      user_name: params[:user_name],
      total_win: params[:total_win],
      total_lose: params[:total_lose],
      total_draw: params[:total_draw],
      user_id: params[:user_id]
    )
    cards_data.to_json
  end

 

end
