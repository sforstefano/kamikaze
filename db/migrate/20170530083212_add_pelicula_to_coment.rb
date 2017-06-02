class AddPeliculaToComent < ActiveRecord::Migration[5.0]
  def change
    add_reference :comentarios, :peliculas, foreign_key: true
  end
end
