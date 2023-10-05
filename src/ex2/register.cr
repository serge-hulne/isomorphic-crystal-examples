# file register.cr

# ====================
# Action registration
# ====================

require "kemal"

require "gui/macros"
require "gui/settings"
require "gui/run"

require "./app"
require "./state"

state = STATE

spawn do #
  Kemal.config.port = (ENV["PORT"]? || PORT).to_i
  Kemal.config.host_binding = ENV["HOST_BINDING"]? || "#{IP}"
  # Kemal.config.env = "production"
  Kemal.config.env = "development"

  get "/#{ROOT}" do
    app = App.new.to_html
  end

  # Registering actions via the utily macro `register`
  register(env, state, increment)
  register(env, state, decrement)

  # Run server
  Kemal.run
end # spawn

# Run app
run_app("Example 1 demo")
