class ComentariosController < ApplicationController
before_action :find_pelicula
	def create
		@pelicula = Pelicula.find(params[:pelicula_id])
		@comentario = @pelicula.comentarios.create(coments_params)
		#@comentario.pelicula_id = current_pelicula.id
		@comentario.save
			if @comentario.save
				redirect_to pelicula_path(@pelicula)
			else
				render "new"
			end
	end

	private
		def find_pelicula
			@pelicula = Pelicula.find(params[:pelicula_id])
		end

end
