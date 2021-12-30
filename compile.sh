#ocamlfind ocamlc -g  -package js_of_ocaml -package js_of_ocaml-toplevel -linkpkg dynlink.cma mymain.ml -o mymain.o #-package js_of_ocaml -package js_of_ocaml.toplevel 
#js_of_ocaml --pretty --toplevel --dynlink +toplevel.js +dynlink.js -I . mymain.o -o mymain.js
ocamlfind ocamlc -g  -package dynlink,js_of_ocaml-toplevel -linkpkg mymain.ml -o mymain.out #-package js_of_ocaml -package js_of_ocaml.toplevel 
#js_of_ocaml --pretty --toplevel --dynlink +toplevel.js +dynlink.js -I . mymain.o -o mymain.js
js_of_ocaml --pretty --file ./plugin.cmo --dynlink +dynlink.js --toplevel +toplevel.js --extern-fs -I . mymain.out -o mymain.js
#ocamlc plugin.ml
#ocamlfind ocamlc -g  -package js_of_ocaml -package js_of_ocaml-toplevel -linkpkg dynlink.cma mymain.ml
#js_of_ocaml --dynlink mymain.cmo -o mymain.js
#js_of_ocaml ~/.opam/4.12.1/lib/ocaml/stdlib.cma -o stdlib.js
#js_of_ocaml ~/.opam/4.12.1/lib/ocaml/dynlink.cma -o dynlink.js
#js_of_ocaml build-runtime -o runtime.js
#js_of_ocaml --pretty /home/philip/.opam/4.12.1/lib/js_of_ocaml-toplevel/js_of_ocaml_toplevel.cma -o toplevel.js
#js_of_ocaml link runtime.js stdlib.js dynlink.js mymain.js -o a.js #toplevel.js