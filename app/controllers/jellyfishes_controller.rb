class JellyfishesController < ApplicationController
    before_action :set_jellyfish, only: %i[show edit update destroy]
    def index
        @jellyfishes = Jellyfish.all
    end

    def new
        @jellyfish = Jellyfish.new
    end

    def create
        @jellyfish.create(jellyfish_params)
    end
    
    def show ;end

    def edit ;end
    
    def update
        @jellyfish.update(jellyfish_params)
        redirect_to jellyfish
    end

    def destroy
        @jellyfish.destroy!
        redirect_to jellyfish_path
    end
    
    private

    def set_jellyfish
        @jellyfish = Jellyfish.find(params[:id])
    end

    def jellyfish_params
        params.require(:jellyfish).permit(:title, :body, :jellyfish_image, :jellyfish_image_cache)
    end
end
