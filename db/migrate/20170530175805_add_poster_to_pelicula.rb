class AddPosterToPelicula < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :poster, :string
  end
end
