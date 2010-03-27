class Tourpoint < ActiveRecord::Base
  has_attached_file :photo,
    :styles => { :large => ["600x600>", :png], :medium => ["300x300>", :png], :thumb => ["100x100>", :png] },
    # O path irá salvar as imagens em sua_app/public/images/user/avatar/1/thumb_originalfilename.jpg
    :path => ":rails_root/public/images/:class/:attachment/:id/Nervie_:basename_:style.:extension",
    # A url irá ficar: localhost:3000/user/avatar/1/thumb_originalfilename.jpg
    :url => "/images/:class/:attachment/:id/Nervie_:basename_:style.:extension"

  # O content_type diz o tipo de extensão que o sistema aceita para validar o upload.
  validates_attachment_content_type :photo, :content_type => ["image/bmp", "image/x-png", "image/pjpeg", "image/jpg", "image/jpeg", "image/png", "image/gif"]

  # O size diz o tamanho máximo para que seja efetuado o upload na sua aplicação que no caso é de 1 megabyte.
  validates_attachment_size :photo, :less_than => 1.megabyte
end
