require "rest-client"
require "JSON"
require "htmlentities"

class DesignQuotes

  def self.show
    gibberish = RestClient.get("http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1")

    arrhash = JSON.parse(gibberish)
    hash = arrhash.first

    author = hash["title"]
    quote = HTMLEntities.new.decode(hash["content"]).gsub(/(<.{1,3}>)/, "").strip

    quote = "\"#{quote}\""

    puts quote
    puts "-#{author}"
  end

end
