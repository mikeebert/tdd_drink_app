require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module DrinkApp
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib)

  end
end
