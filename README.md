# Isomorphic Crystal GUI

# GUI lib for Crystal-lang allowing for developing simple desktop apps using Crystal-lang.

- Expressive (JSX-like).
- Concise (it's like writing HTML).
- Modular (A custom visual widget can include other custom widgets)
- Stylable using regular CSS.
- Easy layout coding.
- Easy state management of the app.
- Ajax support.

# Built on :

- Blueprint: https://github.com/stephannv/blueprint
- Webview for Crystal : https://github.com/naqvis/webview
- Pico CSS : https://picocss.coma
- HTMX : https://github.com/bigskysoftware/htmx
- Crystal (Crystal-lang) : https://crystal-lang.org

# Dependencies on Linux (or MingW): 
- libwebkit2gtk-4.0-dev
- libgtk : gtk+-3.0
(See your package manager for instructions ("apt-get" or "yum" or "pacman", or other, depending upon your linux distribution))

## Installation

1. `git clone https://github.com/serge-hulne/isomorphic-crystal-examples`
2. `cd isomorphic-crystal-examples`
3. `shards install`
4. `make`
5. `./ex1`
6. Edit :  app.cr, state.cr and register.cr to create your own app.


## Updates / news :
https://forum.crystal-lang.org/t/isomorphic-crystal-updates/6007

## Usage
The aim is to provide a portable GUI library which will allows developers to code desktop apps in Crystal.

- One goal is to make it as easy to use as Tkinter for Python.
- Another goal is portability across platforms (Linux, Mac, Windows)
- Another goal is to make it easy to distribute : The only dependency is Webview for Crystal. The app is simply one (binary executable) file.
- The library uses Crystal, HTML, CSS and Webmin, internally but developers using the library only need to master Crystal (no HTML, CSS, JS knowledge required).
- The author expects to develop a fairly complete set of widgets, to match the most commonly used HTML tags, once the initial tests are conclusive. 
  
GUI lib for Crystal-lang allowing for developing simple desktop apps using Crystal only. Zero dependencies.

## illustrations 

![Screenshot 2023-09-24 at 10 57 39](https://github.com/serge-hulne/Isomorphic-crystal/assets/303502/8a70e436-432a-4d46-a1f4-319a6de1c0ce)
![Screenshot 2023-09-24 at 10 56 47](https://github.com/serge-hulne/Isomorphic-crystal/assets/303502/a8e3f0e6-da5e-4176-88c4-644c1b476b59)
![Screenshot 2023-10-05 at 07 26 52](https://github.com/serge-hulne/isomorphic-crystal-examples/assets/303502/1952f480-1d0a-4b83-a822-f083c94b7c14)


## Layouts / Styling / Customisation
To experiment with layouts, graphical appearance, the CSS which is used is pico.css (provided in the module: pico.cr), therefore most of the features of pico.css are available in the current version of the framework.


## Contributing

1. Fork it (<https://github.com/your-github-user/gui_1/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Serge Hulne](https://github.com/serge-hulne) - creator and maintainer

### pico.cr is based on pico.css (https://picocss.com)
