module PagesHelper

  def services_item(name)
    name
    # page = Page.find_by_permalink(name) 
    # raw <<-HTML
    #   <a href="#{page_path(page)}" class="">
    #     #{image_tag(name + '.png')}
    #     <h3>#{page.name}</h3>
    #     <p>#{truncate(page.content, length: 150)}</p>
    #   </a>
    # HTML
  end

  def content_item(name)
    name
    # page = Page.find_by_permalink(name)
    # raw <<-HTML
    #     <h1>#{page.name}</h1>
    #     <hr>
    #     #{markdown page.content}
    # HTML
  end

  def manage_page
    if admin_signed_in?
      raw <<-HTML
          <nav class="button-bar">
            <ul class="button-group radius">
              <li>#{link_to 'Edit', edit_page_path(@page), class: "button"}</li>
              <li>#{link_to 'Back', pages_path, class: "button"}</li>
              <li>#{link_to 'Destroy', @page, :method => :delete, class: "button alert", data: { :confirm => 'Are you sure?' }}</li>
            </ul>
          <nav>
      HTML
    end
  end

end
