class PicsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
        @pics = Pic.last(12)
    end

    def new
        @pic = Pic.new
    end

    def create
        @pic = current_user.pics.create(pic_params)
        redirect_to root_path
    end

    def show
        @pic = Pic.find_by_id(params[:id])
        if @pic.blank?
          render plain: 'Not Found :(', status: :not_found
        end
    end


    private
    
    def pic_params
        params.require(:pic).permit(:caption)
    end
end
