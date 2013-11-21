RSpec::Matchers.define :match_store_link do
  MATCHER = /store.#{ENV['HOST'] || "castequality.com"}/i

  match do |node|
    node.present? && !MATCHER.match(node['href']).nil?
  end

  failure_message_for_should do |node|
    "expected #{node['href']} to match: /#{MATCHER.source}/i"
  end
end