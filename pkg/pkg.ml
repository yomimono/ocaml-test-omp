#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe ~readmes:[] ~licenses:[] ~change_logs:[] ~opams:[] "test_parsetree" @@ fun c -> Ok [
    Pkg.bin "test/test_parsetree";
  ]
