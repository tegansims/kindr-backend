class NamesController < ApplicationController

    def index
        render json: Name.all
    end
    
    def show
        render json: Name.find(params[:id])      
    end
    
    def new
        
    end
    
    def random_name
        name = Name.all.sample
        render json: name
    end
    

    def create
        Name.create(name: Name.create_from_API(g, usage), gender: g)
    end

    private
    def name_params
        params.require(:name).permit(:gender, :usage, )
    end

end

