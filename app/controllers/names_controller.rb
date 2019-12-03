class NamesController < ApplicationController

    def index
        render json: Name.all
    end

    def show
        render json: Name.find(params[:id])
    end

    def new

    end

    def create(g)
        Name.create(name: Name.create_from_API(g), gender: g)
    end

end

