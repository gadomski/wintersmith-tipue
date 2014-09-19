wintersmith = require 'wintersmith'

describe "The wintersmith environment", () ->
  env = wintersmith "./example/config.json"

  it "loads", () ->
    expect(env).toEqual(any(wintersmith.Environment))

  describe "when loaded", () ->
    beforeEach (done) ->
      env.load (error, result) =>
        @result = result
        done()

    it "has a tipue.page", () ->
      expect(@result.contents["tipue.page"]).toBeDefined()
