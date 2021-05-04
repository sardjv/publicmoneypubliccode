module BootstrapIconsHelper
  # refer https://icons.getbootstrap.com/
  def icon(icon, options = {})
    file = File.read("node_modules/bootstrap-icons/icons/#{icon}.svg")
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] += " " + options[:class]
    end
      doc.to_html.html_safe
  end
end
