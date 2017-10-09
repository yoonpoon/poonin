class Nav < ContentfulModel::Base
  self.content_type_id = 'nav'
  has_many :pages, class_name: 'Page'

  return_nil_for_empty  :content,
                        :excerpt
end
