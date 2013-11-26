CasteServer::Application.configure do
  InheritedResources::Base.send(:include, Paginated)
end
