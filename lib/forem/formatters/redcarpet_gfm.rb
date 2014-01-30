require 'redcarpet'

module Forem
  module Formatters
    class RedcarpetGfm
      def self.format(text)
        formatter = ::Redcarpet::Markdown.new(::Redcarpet::Render::HTML,
          :no_intra_emphasis => true, :fenced_code_blocks => true,
          :autolink => true, :lax_html_blocks => true)
        formatter.render(text).html_safe
      end


      def self.blockquote(text)
        text.split("\n").map do |line|
          "> " + line
        end.join("\n") + "\n\n"
      end
    end
  end
end
