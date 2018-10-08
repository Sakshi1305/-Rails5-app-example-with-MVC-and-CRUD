class Post < ApplicationRecord
  def self.to_permalink(string)
    parameterize_string = string.parameterize.truncate(80, omission: '')
    post = Post.where(permalink: parameterize_string)
    if post.count > 1
      parameterize_string + "-" + "#{post.count+1}"
    else
      parameterize_string
    end
  end

  def to_param
    permalink
  end

  def self.add_permalinks
    update(permalink: to_permalink(name))
  end
end
