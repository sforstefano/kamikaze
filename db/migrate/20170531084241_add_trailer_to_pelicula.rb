class AddTrailerToPelicula < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :trailer, :string
  end
end
