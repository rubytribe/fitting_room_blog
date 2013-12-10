class PopularSidebar < Sidebar
  description 'Displays the most popular posts'
  setting :title, 'Popular posts'
  setting :count,      4,   :label => 'Number articles'

  attr_accessor :popular

  def parse_request(contents, params)
    @popular = Article.bestof.limit(4)
  end
end
