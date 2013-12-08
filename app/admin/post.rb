ActiveAdmin.register Post do
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs "Basic info" do
      f.input :name

      f.input :body, as: :rich, config: { height: '400px', default_style: 'blog' }
      f.input :published_at, label: true
    end
    f.actions
  end
end

