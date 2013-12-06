ActiveAdmin.register Project do
  controller do
    def permitted_params
      params.permit!
    end
  end

  form html: { multipart: true } do |f|
    f.inputs "Project Info" do
      f.input :name

      banner_args = [
        as: :rich_picker,
        config: {
          allowed_styles: [:banner],
          style: 'width: 400px !important;'
        }
      ]

      f.input :banner, *banner_args
      f.input :banner_hover, *banner_args
    end

    f.inputs "Publish Info" do
      f.input :featured
      f.input :published_at, label: true
    end
    f.actions
  end
end
