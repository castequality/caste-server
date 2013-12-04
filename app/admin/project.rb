ActiveAdmin.register Project do
  controller do
    def permitted_params
      params.permit!
    end
  end

  form html: { multipart: true } do |f|
    f.inputs "Project Info" do
      f.input :name

      f.input :banner, as: :rich_picker, config: { style: 'width: 400px !important;' }
      f.input :banner_hover, as: :rich_picker, config: { style: 'width: 400px !important;' }
    end

    f.inputs "Publish Info" do
      f.input :featured
      f.input :published_at, label: true
    end
    f.actions
  end
end
