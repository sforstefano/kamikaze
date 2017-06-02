class AddDescriptionToPelicula < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :description, :text
  end
end
