class PicsController < ApplicationController
    def index
    
    end

    def new
        @pic = Pic.new
    end

    def create
        @pic = Pic.create(pic_params)
        redirect_to root_path
    end


    private
    
    def pic_params
        params.require(:pic).permit(:caption)
    end
end
