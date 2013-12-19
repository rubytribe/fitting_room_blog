# coding: utf-8
class StaticSidebar < Sidebar
  DEFAULT_TEXT = %q{
<ul>
  <li><a href="/admin">Admin</a></li>
</ul>
}
  description "Static content, like links to other sites, advertisements, or blog meta-information"

  setting :title, 'Links'
  setting :body,  DEFAULT_TEXT, :input_type => :text_area

end
