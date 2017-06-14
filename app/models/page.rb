class Page < ContentfulModel::Base
  return_nil_for_empty :content, :excerpt  
  self.content_type_id = 'page'
end 