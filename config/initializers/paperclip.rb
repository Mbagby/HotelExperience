module Paperclip
  class Attachment
    alias_method :original_url, :url

    def url(style_name = default_style, options = {})
      if @instance.public_send("#{@name.to_s}_file_name").blank?
        'default-pp-large.jpg'
      else
        original_url(style_name, options)
      end
    end
  end
end