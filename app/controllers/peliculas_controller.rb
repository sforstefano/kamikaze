class PeliculasController < ApplicationController

before_action :authenticate_user!, except: [:index, :show]
   def index
      @peliculas = Pelicula.all
      #muestra las peliculas que hay en la base de datos
   end
   
   def show
      @pelicula = Pelicula.find(params[:id])
      #muestra una pelicula
   end
   
   def new
      @pelicula = Pelicula.new
      #crea una pelicula
   end
   
   def create
      @pelicula = Pelicula.new(pelicula_params)
      #no tiene vista, procesa la pelicula
      if @pelicula.save
         redirect_to root_path, :notice => "Se ha guardado la peli"
      else
         render "new"
      end
   end
   
   def edit
      @pelicula = Pelicula.find(params[:id])
      #actualiza la peli
   end
   
 
   def update
      @pelicula = Pelicula.find(params[:id])
    
      if @pelicula.update_attributes(pelicula_params)
         redirect_to root_path, :notice => "éxito!"
      else
       render "edit"
      end
   end

   
   def destroy
      @pelicula = Pelicula.find(params[:id])
      @pelicula.destroy
      redirect_to root_path, :notice => "Eliminado"

      #render "index"
   end

   

   private

      def pelicula_params
            params.require(:pelicula).permit(:name, :main_actor, :stars, :year, :description, :trailer, :poster)
      
      end

end
