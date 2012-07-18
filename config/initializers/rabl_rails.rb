RablRails.configure do |config|
  config.cache_templates = false
  # config.include_json_root = true
  # config.json_engine = :yajl
end

ActiveSupport.on_load(:action_view) do
  ActionView::Template.register_template_handler :fast, RablRails::Handlers::Rabl
end