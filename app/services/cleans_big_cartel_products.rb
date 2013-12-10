require 'net/http'

class CleansBigCartelProducts
  def clean!
    Product.find_each do |product|
      uri       = URI(["http://store.castequality.com", product.url].join)
      response  = Net::HTTP.get_response(uri)

      if response.code.to_i > 300
        puts "Deleting product #{product.id}:"
        puts "  #{product.url}"
        puts
        product.delete
      end
    end
  end
end
