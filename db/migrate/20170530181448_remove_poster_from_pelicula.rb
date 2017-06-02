class RemovePosterFromPelicula < ActiveRecord::Migration[5.0]
  def change
    remove_column :peliculas, :poster, :string
  end
end
