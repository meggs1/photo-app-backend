class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :caption, :image, :user_id, :image_file
  
  def image_file
    rails_blob_path(object.image_file, only_path: true) if object.image_file.attached?
  end

end
