require 'json'
require 'net/http'

module ExternalJSON
  class ExternalJSONTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end
    def render(context)
      if /(.+) from url (.+)/.match(@text)
        url = context[$2] || $2
        resp = Net::HTTP.get_response(URI(url.strip))
        data = resp.body
        context[$1] = JSON data
        nil
      else
        # syntax error
        raise ArgumentError, 'ERROR:bad_syntax'
      end
    end    
  end
end

Liquid::Template.register_tag('externalJSON', ExternalJSON::ExternalJSONTag)

