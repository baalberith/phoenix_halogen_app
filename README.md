# PhoenixHalogenApp

To make this app from scratch:

  * Create new phoenix app with `mix phoenix.new phoenix_halogen_app`
  * `cd phoenix_halogen_app`
  * Install purescript, pulp and bower with `npm -g purescript pulp bower`
  * Install concurrently with `npm install --save-dev concurrently`
  * Add scripts section to package.json:
  ```
  "scripts": {
    "pulp-watch": "pulp --watch browserify --optimise --to priv/static/js/bundle.js",
    "brunch-watch": "node node_modules/brunch/bin/brunch watch --stdin",
    "start": "concurrently --kill-others 'npm run pulp-watch' 'npm run brunch-watch'"
  }
  ```
  * Change watchers in config/dev.exs to `watchers: [npm: ["start"]]`
  * move .gitignore (pulp creates new one) and init purescript app with `mv .gitignore .gitignore-temp && pulp init`
  * `cat .gitignore-temp >> .gitignore && rm .gitignore-temp`
  * Include bundle.js in web/templates/layout/app.html.eex under app.js
  ```
  <script src="<%= static_path(@conn, "/js/bundle.js") %>"></script>
  ```
  * Install virtual-dom with `npm install --save virtual-dom`
  * Install purescript-halogen with `bower install --save purescript-halogen`
  * Copy example halogen app (https://github.com/slamdata/purescript-halogen/blob/master/examples/counter/src/Main.purs) to src/Main.purs
  * Build purescript app with `pulp build`
  * `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
