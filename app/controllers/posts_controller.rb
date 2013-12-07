class PostsController < InheritedResources::Base
  NETWORKS = %w[vimeo youtube twitter facebook].freeze

  protected

    def social_networks
      NETWORKS
    end
    helper_method :social_networks
end
