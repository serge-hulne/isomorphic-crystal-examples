# file app.cr

# ===========================
# Pages (Structure/interface)
# ===========================

require "blueprint/html"

require "gui/pico"
require "gui/macros"

require "./css"
require "./register"
require "./state"

class App
  include Blueprint::HTML

  def initialize(@state = STATE)
  end

  private def blueprint
    # Global style (provided by the libary)
    style { picoCSS }

    # Local widget Style (see css.cr)
    style { LocalCSS }

    # HTMX
    script src: "https://unpkg.com/htmx.org@1.9.6"

    # GUI Definition (uses Blueprint)
    div class: "main" {
      br
      article {
        input type: "text", value: "This text should not change when the counter changes"
      }

      br
      article {
        br
        form {
          button "hx-post": action(increment),
            "hx-target": "#counter" {
            "Increment counter"
          }
        }

        br
        form {
          button "hx-post": action(decrement),
            "hx-target": "#counter" {
            "Decrement counter"
          }
        }
      }

      br
      article {
        label id: "counter" { "State : #{@state.count}" }
      }
    }
    div class: "message" { "state demo" }
  end
end

def increment(env : HTTP::Server::Context, state : State)
  state.count = state.count + 1
  "<div> State: #{state.count} </div>"
end

def decrement(env : HTTP::Server::Context, state : State)
  state.count = state.count - 1
  "<div> State: #{state.count} </div>"
end
