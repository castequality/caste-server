require "open-uri"

namespace :visual do
  desc "Cleanup dead visuals"
  task cleanup: :environment do
    Visual.find_each do |visual|
      cleanup_visual!(visual)
    end
  end

  def cleanup_visual!(visual)
    open(visual.photo)
  rescue OpenURI::HTTPError
    Rails.logger.info "Destroying dead Visual: #{visual.id}"
    visual.destroy!
  end
end
