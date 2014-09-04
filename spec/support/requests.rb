module RequestsHelper
  def json_header
    { "Content-Type" => "application/json" }
  end
end

RSpec.configure do |config|
  config.include RequestsHelper, type: :request
end
