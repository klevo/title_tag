require 'title_tag/title_tag_helper'

module TitleTag
  class Railtie < Rails::Railtie
    initializer "title_tag.view_helpers" do
      ActionView::Base.send :include, TitleTagHelper
    end
  end
end
