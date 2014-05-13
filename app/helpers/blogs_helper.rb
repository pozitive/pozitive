module BlogsHelper
  def manage_blog
    if admin_signed_in?
      raw <<-HTML
          <nav class="button-bar">
            <ul class="button-group radius">
              <li>#{link_to 'Edit', edit_blog_path(@blog), class: "button"}</li>
              <li>#{link_to 'Back', blogs_path, class: "button"}</li>
              <li>#{link_to 'Destroy', @blog, :method => :delete, class: "button alert", data: { :confirm => 'Are you sure?' }}</li>
            </ul>
          <nav>
      HTML
    end
  end
end
