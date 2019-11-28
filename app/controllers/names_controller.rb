class NamesController < ApplicationController

    def index
        render json: Name.all
    end

    def show
        render json: Name.find(params[:id])
    end

    def create

    end
    
end
