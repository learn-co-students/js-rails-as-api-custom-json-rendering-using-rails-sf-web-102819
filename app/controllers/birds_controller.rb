class BirdsController < ApplicationController
    def index
      birds = Bird.all
      # render 'birds/index.html.erb'
      # render plain: "Hello #{@birds[3].name}"
      # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
      # render json: { message: 'Hashes of data will get converted to JSON' }
      # render json: @birds
      # render json: { birds: birds , messages: ['Hello Birds', 'Goodbye Birds'] }
      render json: birds, only: [:id, :name, :species]
    end
  
    def show
      bird = Bird.find_by(id: params[:id])
        if bird
          render json: bird
        else
          render json: {message: "Bird not found"}
        end
      end
    end
  