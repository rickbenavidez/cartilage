#
# Usage Bar View
#

class window.Cartilage.Views.UsageBarView extends Cartilage.View

  className: "usage-bar-view"

  colors: [ '#6ba2d4', '#a765a2', '#f69062', '#8ccc64', '#c26bb4', '#e9d243' ]

  value: null
  segments: null
  barView: null

  #
  # Initialization
  #
  initialize: (options = {}) ->

    # Apply options
    @colors = options["colors"] if options["colors"]?
    @segments = options["segments"] || (@segments ?= [])
    @value = options["value"] || (@value ?= 0)

    @barView = new Cartilage.Views.BarView

  render: ->

    # Render the Bar View
    @barView.segments.reset @segments
    @barView.colors = @colors
    @barView.value = @value
    ($ @el).html @barView.render().el

    @
