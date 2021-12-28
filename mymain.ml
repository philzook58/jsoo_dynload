(*
open Js_of_ocaml_toplevel
let () = JsooTop.initialize ()
*)
let () = Printf.printf "%b\n" Dynlink.is_native
let _ = Dynlink.loadfile "plugin.cmo"
let () = print_endline "hello"
