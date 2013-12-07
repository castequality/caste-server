module LightboxHelper
  def lightbox_tag(thumbnail, url, caption = nil, group: nil, **opts)
    link_opts         = {}
    link_opts[:rel]   ||= "lightbox[#{group}]" if group.present?
    link_opts[:title] ||= caption if caption.present?

    link_to url, link_opts do
      image_tag thumbnail, opts
    end
  end
end
