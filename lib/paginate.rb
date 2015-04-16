module Paginate

  def paginate(options = {})
    page = options[:page] || 1
    per_page = options[:per_page] || 20 

    limit(per_page).offset(page.to_i * per_page)

  end
end