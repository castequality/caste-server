ActiveAdmin.register Banner do
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs "Basic info" do
      banner_args = [
        as: :rich_picker,
        config: {
          allowed_styles: [:banner],
          style: 'width: 400px !important;'
        }
      ]

      f.input :image_url, *banner_args
      f.input :hover_image_url, *banner_args

      f.input :resource_type, collection: ["Project", "Splash"]
      f.input :resource_id, as: :number
    end
    f.actions
  end
end
