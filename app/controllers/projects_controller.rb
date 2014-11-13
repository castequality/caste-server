class ProjectsController < StaticController
  def index
    @projects = find_projects

    render json: { projects: @projects }
  end

  private

  def find_projects
    [{
      id: 1,
      numeral: "I",
      slug: "the-philadelphia-experiment",
      pages: [
        { url: image_url("projects/the-philadelphia-experiment/1.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/2.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/3.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/4.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/5.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/6.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/7.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/8.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/9.jpg") },
        { url: image_url("projects/the-philadelphia-experiment/10.jpg") },
        { url: vimeo_url(61014435), video: true },
        { url: image_url("projects/the-philadelphia-experiment/12.jpg") },
      ]
    }, {
      id: 2,
      numeral: "II",
      slug: "zachary-armstrong",
      pages: [
        { url: image_url("projects/zachary-armstrong/1.jpg") },
        { url: image_url("projects/zachary-armstrong/2.jpg") },
        { url: image_url("projects/zachary-armstrong/3.jpg") },
        { url: image_url("projects/zachary-armstrong/4.jpg") },
        { url: image_url("projects/zachary-armstrong/5.jpg") },
        { url: image_url("projects/zachary-armstrong/6.jpg") },
        { url: image_url("projects/zachary-armstrong/7.jpg") },
        { url: image_url("projects/zachary-armstrong/8.jpg") },
        { url: image_url("projects/zachary-armstrong/9.jpg") },
        { url: vimeo_url(86785302), video: true },
        { url: image_url("projects/zachary-armstrong/11.jpg") },
      ]
    }, {
      id: 3,
      numeral: "III",
      slug: "magenta",
      pages: [
        { url: image_url("projects/magenta/1.jpg") },
        { url: image_url("projects/magenta/2.jpg") },
        { url: image_url("projects/magenta/3.jpg") },
        { url: image_url("projects/magenta/4.jpg") },
        { url: image_url("projects/magenta/5.jpg") },
        { url: vimeo_url(90116548), video: true },
        { url: image_url("projects/magenta/7.jpg") },
        { url: image_url("projects/magenta/8.jpg") },
        { url: image_url("projects/magenta/9.jpg") },
        { url: image_url("projects/magenta/10.jpg") },
        { url: image_url("projects/magenta/11.jpg") },
        { url: vimeo_url(93339618), video: true },
        { url: image_url("projects/magenta/13.jpg") },
      ]
    }]
  end
end
