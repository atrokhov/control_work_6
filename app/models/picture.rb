class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  belongs_to :score

  has_attached_file :image,
                    styles: { large: '1000x1000>', medium: '400x400>', thumb: '200x200>'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, 
                    content_type: ['image/jpg', 'image/png']

end
