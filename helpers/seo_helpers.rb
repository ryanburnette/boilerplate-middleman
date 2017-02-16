module SeoHelpers
  def canonical_url_prefix
    return "http://localhost:4567" if development?
    "http://www.#{data.site.canonical_domain}"
  end

  def canonical_url
    "#{canonical_url_prefix}/#{current_page.url || "/"}"
  end

  def meta_description
    begin
      current_page.data.meta.description
    rescue
      false
    end
  end
end
