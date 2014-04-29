exports.config =
  conventions:
    assets: /(assets|font)/

  files:
    javascripts:
      joinTo:
        'scripts/app.js': /^app\/scripts/
        'scripts/vendor.js': /^(bower_components)/
      order:
        before: [
          'bower_components/jquery/dist/jquery.js'
        ]

    stylesheets:
      joinTo:
        'styles/app.css': /^app\/styles/

    templates:
      joinTo: 'scripts/app.js'

  modules:
    nameCleaner: (path) ->
      path.replace /^app\/scripts\//, ''

  plugins:
    digest:
      precision: 32

  server:
    port: 3000
