module.exports = (env, callback) ->

  defaults =
    filename: 'data/tipue.json'

  options = env.config.tipue or {}
  for key, value of defaults
    options[key] ?= defaults[key]

  class TipuePage extends env.ContentPlugin
    constructor: () ->

    getFilename: -> options.filename

    getView: -> (env, locals, contents, templates, callback) ->
      pages = []
      for file in env.ContentTree.flatten contents
        pages.push
          title: file.title
          text: if file.markdown? then file.markdown.replace(/\n+/g, " ") else ""
          tags: ""
          loc: file.getUrl()
      data =
        pages: pages
      callback null, new Buffer(JSON.stringify(data))

  env.registerGenerator 'tipue', (contents, callback) ->
    rv =
      "tipue.page": new TipuePage
    callback null, rv

  callback()
