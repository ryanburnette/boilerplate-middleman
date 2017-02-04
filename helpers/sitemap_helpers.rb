module SitemapHelpers
  def sitemap_resources
    sitemap.resources.
      reject { |r| r.destination_path.include?("sitemap.xml") }.
      reject { |r| r.destination_path.end_with?(".css") }.
      reject { |r| r.destination_path.end_with?(".png") }.
      reject { |r| r.destination_path.end_with?(".js") }.
      reject { |r| r.destination_path.end_with?("robots.txt") }
  end

  def sitemap_priority(resource)
    if resource.data.sitemap && resource.data.sitemap.priority
      resource.data.sitemap.priority
    else
      "0.7"
    end
  end
end
