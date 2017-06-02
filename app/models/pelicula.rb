class Pelicula < ApplicationRecord
	# belongs_to :language
	# belongs_to :country
	# belongs_to :genre
	has_many :comentarios
	has_attached_file :poster, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :poster, content_type: /\Aimage\/.*\z/
end
