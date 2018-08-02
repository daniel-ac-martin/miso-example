Building
--------

Run stack setup. This might take a long time, since it will have to build GHCJS.

```bash
stack setup
```

Run stack build to get the static assets

```bash
stack build
```

See the result

```bash
open $(stack path --local-install-root)/bin/app.jsexe/index.html
```

Using GHCJSi

```bash
stack ghci
```

If that warns with socket.io not found, browser session not available, you'll need to install socket.io

```bash
npm install socket.io
```

and update your NODE_PATH

```bash
export NODE_PATH=$(pwd)/node_modules
```

Now you should be connected, and the app viewable in GHCJSi (open http://localhost:6400).

```
➜  stack ghci
app-0.1.0.0: initial-build-steps (exe)
Configuring GHCi with the following packages: app
GHCJSi, version 0.2.0.9006020-7.10.3: http://www.github.com/ghcjs/ghcjs/  :? for help
[1 of 1] Compiling Main             ( /Users/david/Desktop/miso/sample-app/Main.hs, interpreted )
socket.io found, browser session available at http://localhost:6400
Ok, modules loaded: Main.
*Main> main
browser connected, code runs in browser from now on
```
