class Nav < ContentfulModel::Base
  self.content_type_id = 'nav'
  has_many :pages, class_name: 'page'
end 