class ProjectsController < InheritedResources::Base
  def index
    @projects = find_projects

    render json: { projects: @projects }
  end

  private

  def find_projects
    [{
      id: 1,
      name: "The Philadelphia Experiment",
      numeral: "I",
      slug: "the-philadelphia-experiment",
      pages: [
        { url: image_url("the-philadelphia-experiment/1.jpg") },
        { url: image_url("the-philadelphia-experiment/2.jpg") },
        { url: image_url("the-philadelphia-experiment/3.jpg") },
        { url: image_url("the-philadelphia-experiment/4.jpg") },
        { url: image_url("the-philadelphia-experiment/5.jpg") },
        { url: image_url("the-philadelphia-experiment/6.jpg") },
        { url: image_url("the-philadelphia-experiment/7.jpg") },
        { url: image_url("the-philadelphia-experiment/8.jpg") },
        { url: image_url("the-philadelphia-experiment/9.jpg") },
        { url: image_url("the-philadelphia-experiment/10.jpg") },
        { url: vimeo_url(61014435), is_video: true },
        { url: image_url("the-philadelphia-experiment/12.jpg") },
      ]
    }, {
      id: 2,
      name: "Zachary Armstrong",
      numeral: "II",
      slug: "zachary-armstrong",
      pages: [
        { url: image_url("zachary-armstrong/1.jpg") },
        { url: image_url("zachary-armstrong/2.jpg") },
        { url: image_url("zachary-armstrong/3.jpg") },
        { url: image_url("zachary-armstrong/4.jpg") },
        { url: image_url("zachary-armstrong/5.jpg") },
        { url: image_url("zachary-armstrong/6.jpg") },
        { url: image_url("zachary-armstrong/7.jpg") },
        { url: image_url("zachary-armstrong/8.jpg") },
        { url: image_url("zachary-armstrong/9.jpg") },
        { url: vimeo_url(86785302), is_video: true },
        { url: image_url("zachary-armstrong/11.jpg") },
      ]
    }, {
      id: 3,
      name: "Magenta",
      numeral: "III",
      slug: "magenta",
      pages: [
        { url: image_url("magenta/1.jpg") },
        { url: image_url("magenta/2.jpg") },
        { url: image_url("magenta/3.jpg") },
        { url: image_url("magenta/4.jpg") },
        { url: image_url("magenta/5.jpg") },
        { url: vimeo_url(90116548), is_video: true },
        { url: image_url("magenta/7.jpg") },
        { url: image_url("magenta/8.jpg") },
        { url: image_url("magenta/9.jpg") },
        { url: image_url("magenta/10.jpg") },
        { url: image_url("magenta/11.jpg") },
        { url: vimeo_url(93339618), is_video: true },
        { url: image_url("magenta/13.jpg") },
      ]
    }]
  end

  def image_url(name)
    self.class.helpers.image_url("projects/#{name}")
  end

  def vimeo_url(id)
    "http://player.vimeo.com/video/#{id}?title=0&amp;byline=0&amp;portrait=0&amp;color=cfcfcf%22%20width=%22888"
  end
end
