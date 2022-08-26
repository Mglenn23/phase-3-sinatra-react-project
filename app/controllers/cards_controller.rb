class CardsController < ApplicationController

    get '/get_card_data' do
      card = Card.full_data
      card.to_json
    end

    get '/cards' do
      card = Card.values_card
      card.to_json
    end
  
    post '/cards' do
      cards_data = Card.create(
        card_name: params[:card_name],
        card_attack: params[:card_attack],
        card_defense: params[:card_defense],
        type_id: params[:type_id],
        user_id: params[:user_id]
      )
      cards_data.to_json
    end
  
    patch '/cards/:id' do
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
  
    delete '/cards/:id' do
      crd = Card.find(params[:id])
      crd.destroy
      crd.to_json
    end
  
  end
  