

# jsoo_dynload

If I try to just use `--dynlink +dynlink.js`

```
>> Fatal error: Toplevel bytecode executable is corrupted
Fatal error: exception Dynlink_compilerlibs.Misc.Fatal_error
```

If I try to include toplevel with `--toplevel +toplevel.js`

```
Fatal error: exception Failure("Toplevel not initialized (toplevelCompile)")
```

If I initialize Jsoo.toplevel

```
Fatal error: exception Invalid_argument("The dynlink.cma library cannot be used inside the OCaml toplevel")
```


Other approach using Seperate compilation, not better
```
js_of_ocaml main.cmo
js_of_ocaml ~/.opam/4.12.1/lib/ocaml/stdlib.cma -o stdlib.js
js_of_ocaml build-runtime -o runtime.js
js_of_ocaml link runtime.js stdlib.js main.js -o a.js
```