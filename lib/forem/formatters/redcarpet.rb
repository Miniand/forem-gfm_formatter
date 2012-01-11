require 'redcarpet'

module Forem
  module Formatters
    class Redcarpet
      def self.format(text)
        formatter = ::Redcarpet::Markdown.new(::Redcarpet::Render::HTML)
        formatter.render(ERB::Util.h(text)).html_safe
      end


      def self.blockquote(text)
        text.split("\n").map do |line|
          "> " + line
        end.join("\n")
      end
    end
  end
end
