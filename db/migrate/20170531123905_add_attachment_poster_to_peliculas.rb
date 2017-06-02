class AddAttachmentPosterToPeliculas < ActiveRecord::Migration
  def self.up
    change_table :peliculas do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :peliculas, :poster
  end
end
