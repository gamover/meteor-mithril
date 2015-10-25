m.route.mode = 'pathname'

component =
  controller: ->
    data =
      data: m.prop 'test'


    setTimeout ->
      m.startComputation()
      setTimeout ->
        data.data '1'
        m.redraw()
      , 1000

      setTimeout ->
        data.data '2'
        m.endComputation()
      , 3000
    , 1000

    data
  view: (ctrl)->
    [
      m '.text-center[style=margin-top: 50px;]', [
        m '.slider.slider-horizontal',
          config: (elm, isInit, ctx)->
            $(elm).slider
              min: 0
              max: 5000
              ticks: [0, 1000, 2000, 3000, 4000, 5000]
              value: [0, 5000]
              step: 500
              tooltip_position: 'bottom'
      ]
    ]

Template.body.onRendered ->
  body = $ 'body'
  body.removeClass();
  body.addClass 'skin-blue sidebar-mini'

  MeteorAdminLTE.run()

  m.route document.body, '/',
    '/': component