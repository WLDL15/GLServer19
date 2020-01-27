module UsersHelper
  def gravatar_for(user, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def next_point_badge(user)
    if user.badges.last != Badge.last
      @next_badge = Badge.where("need_point > ?", user.points_total).first
      @next_point = @next_badge.need_point - user.points_total
      content_tag :span do
        @next_point.to_s
      end
    else
      content_tag :span do
        "--"
      end
    end
  end
  
end