module ViderVideoTag
  # A view helper for creating a video background element
  def vider_tag bg, options={}
    width         = options[:width]  || '100%'
    height        = options[:height] || '100%'
    volume        = options[:volume] || 1
    playback_rate = options[:playback_rate] || 1
    muted         = options[:muted] || true
    looping       = options[:loop] || true
    autoplay      = options[:autoplay] || true
    position      = options[:position] || "50% 50%"
    poster_type   = options[:poster_type] || "detect"

    video_options = "volume: #{volume}, playback_rate: #{playback_rate}, muted: #{muted}, loop: #{looping}, autoplay: #{autoplay}, position: #{position}, poster_type: #{poster_type}" || 'loop: false, muted: false, position: 0% 0%'

    content_tag :div, '', id: 'vider-element', data: { vide_bg: bg, vide_options: video_options }
  end

  # A view helper for adding a video background to an existing element
  # TODO: Implement this helper
  def vider_for_element_tag bg, options={}
  end
end

# Add gem's view helpers to ActionView
ActionView::Base.send :include, ViderVideoTag if defined? ActionView::Base
