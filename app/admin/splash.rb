ActiveAdmin.register Splash do
  form do |f|
    f.inputs "Vimeo Splash" do
      f.input :vimeo_id
    end

    f.inputs "Other Videos" do
      f.input :video_url
    end

    f.inputs "Publishing" do
      f.input :name
      f.input :published_at
      f.input :featured
    end

    f.actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end
end
