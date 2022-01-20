class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :caption, :image_file, :user_id, :user
  
  def image_file
    rails_blob_path(object.image_file, only_path: true) if object.image_file.attached?
  end

  def user
    object.user.username
  end

end
