js_of_ocaml main.cmo
js_of_ocaml ~/.opam/4.12.1/lib/ocaml/stdlib.cma -o stdlib.js
js_of_ocaml build-runtime -o runtime.js
js_of_ocaml link runtime.js stdlib.js main.js -o a.js

# jsoo_dynload
