CasteServer::Application.configure do
  config.after_initialize do
    InheritedResources::Base.send(:include, Paginated)
  end
end
