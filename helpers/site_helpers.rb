module SiteHelpers
  def site_name
    data.site.name
  end

  def _partial(str)
    partial "partials/#{str}"
  end

  def _slim(str)
    partial "partials/#{str}.html.slim"
  end

  def _snippet(str)
    partial "snippets/#{str}.markdown"
  end
end
