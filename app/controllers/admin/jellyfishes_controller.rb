class Admin::JellyfishesController < Admin::BaseController
   before_action :set_jellyfish, only: %i[show edit update destroy]
   def new
    @jellyfish = Jellyfish.new
   end
   
   def index
     @jellyfishes = Jellyfish.all
   end

   def show ;end

   def edit ;end

   def update
     @jellyfish.update(jellyfish_params)
     redirect_to admin_jellyfish_path
   end

   def destroy
     @jellyfish.destroy!
     redirect_to admin_jellyfish_path
   end
          
   private
      
   def set_jellyfish 
     @jellyfish = Jellyfish.find(params[:id])
   end

   def jellyfish_params
     params.require(:jellyfish).permit(:title, :body, :jellyfish_image, :jellyfish_image_cache)
   end
end
