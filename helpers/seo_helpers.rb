module SeoHelpers
  def canonical_url
    if development?
      "http://localhost:4567#{current_page.url || "/"}"
    else
      "https://www.#{data.site.canonical_domain}#{current_page.url || "/"}"
    end
  end

  def meta_description
    begin
      current_page.data.meta.description
    rescue
      false
    end
  end
end
