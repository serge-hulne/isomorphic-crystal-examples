# file app.cr

# ====================
# Widgets / layout
# =====================

require "blueprint/html"

require "gui/pico"
require "gui/macros"

require "./css"
require "./register"
require "./state"
require "./w3css"

class App
  include Blueprint::HTML

  def initialize(@state = STATE)
  end

  private def blueprint

    title {"Isomorphic Crystql : Example 2"}

    style { W3CSS }
    style { LocalCSS }

    # HTMX
    script src: HTMX
    
    # HTMX debug
    script src: "https://unpkg.com/htmx.org/dist/ext/debug.js"


    # GUI Definition (uses Blueprint)
    div class: "main w3-panel" {
     
      div {
        input type: "text", value: "This editable text should not change when the counter changes", class: "w3-input"
      }
      
      div  {
        button class: "w3-btn w3-circle w3-blue w3-margin w3-large w3-monospace",
          "hx-post": action(increment),
          "hx-target": "#counter",
          "hx-ext": "debug" {
          "+"
        }
        button class: "w3-btn w3-circle w3-green w3-margin w3-large w3-monospace",
          "hx-post": action(decrement),
          "hx-target": "#counter",
          "hx-ext": "debug" {
          "-"
        }
      }      
    }

    div class: "message" {
      label id: "counter" { "State : #{@state.count}" }
    }

  end # method Blueprint
end # Class

# ====================
# Actions 
# =====================

def increment(env : HTTP::Server::Context, state : State)
  state.count = state.count + 1
  "<div> State: #{state.count} </div>"
end

def decrement(env : HTTP::Server::Context, state : State)
  state.count = state.count - 1
  "<div> State: #{state.count} </div>"
end
