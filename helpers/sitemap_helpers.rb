module SitemapHelpers
  def sitemap_path(resource)
    "#{canonical_url_prefix}/#{resource.destination_path}"
  end

  def sitemap_resources
    sitemap.resources
      .reject { |r| r.destination_path.include?("sitemap.xml") }
      .reject { |r| r.destination_path.end_with?(".css") }
      .reject { |r| r.destination_path.end_with?(".png") }
      .reject { |r| r.destination_path.end_with?(".js") }
      .reject { |r| r.destination_path.end_with?(".eot") }
      .reject { |r| r.destination_path.end_with?(".otf") }
      .reject { |r| r.destination_path.end_with?(".gif") }
      .reject { |r| r.destination_path.end_with?(".svg") }
      .reject { |r| r.destination_path.end_with?(".ttf") }
      .reject { |r| r.destination_path.end_with?(".woff") }
      .reject { |r| r.destination_path.end_with?(".woff2") }
      .reject { |r| r.destination_path.include?("robots.txt") }
  end

  def sitemap_priority(resource)
    if resource.data.sitemap && resource.data.sitemap.priority
      resource.data.sitemap.priority
    else
      "0.7"
    end
  end
end
