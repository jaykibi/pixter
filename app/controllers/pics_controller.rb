class PicsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :destroy]
    def index
        @pics = Pic.last(12).reverse
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

    def destroy
        @pic = Pic.find_by_id(params[:id])

        if current_user.id == @pic.user_id
            Pic.destroy(@pic.id)
            redirect_to root_path
        else
            redirect_to pic_path(@pic.id), notice: "You cannot delete photos from other users"
        end
    end

    private
    
    def pic_params
        params.require(:pic).permit(:caption, :image)
    end
end
