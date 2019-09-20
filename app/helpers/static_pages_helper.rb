module StaticPagesHelper
  # renders and SVG from the landkit assets folder
  # path is a string relative to the `assets` folder
  def render_landkit_svg(path)
    render inline: Rails.root.join("vendor/Landkit-1.1.0/src/assets/#{path}").read
  end
end
