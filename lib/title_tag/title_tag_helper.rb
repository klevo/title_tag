module TitleTag
  module TitleTagHelper
    def title_tag global_title
      options = { no_append: false }
      if @_title_options
        options.merge! @_title_options
      end

      global_title = h global_title
      title = global_title

      if options[:no_append] && content_for?(:title)
        title = h content_for(:title)
      elsif content_for?(:title)
        # Combine the global title and title
        title = "#{h content_for(:title)} - #{global_title}"
      end
      
      content_tag :title, title.html_safe
    end

    # Use this method to set the title in a template
    # and/or to output a H1 with the title
    def title title, options = {}
      @_title_options = options
      content_for :title, title
      content_tag :h1, title
    end
  end
end