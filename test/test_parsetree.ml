module Forward = Migrate_parsetree_405_406_migrate
module Backward = Migrate_parsetree_406_405_migrate

let () =
  Crowbar.(add_test ~name:"expression" [Parsetree_405.expression_to_crowbar]
             (fun expression ->
                check_eq ~pp:(Printast.expression 0)
                  expression
                  (Backward.copy_expression @@ Forward.copy_expression expression)));
  Crowbar.(add_test ~name:"structure" [Parsetree_405.structure_to_crowbar]
             (fun structure -> check_eq ~pp:(Printast.structure 0)
                 structure
                 (Backward.copy_structure @@ Forward.copy_structure structure)));
  Crowbar.(add_test ~name:"payload" [Parsetree_405.payload_to_crowbar]
             (fun payload -> check_eq ~pp:(Printast.payload 0)
                 payload
                 (Backward.copy_payload @@ Forward.copy_payload payload)));
  Crowbar.(add_test ~name:"toplevel_phrase" [Parsetree_405.toplevel_phrase_to_crowbar]
             (fun toplevel_phrase -> check_eq ~pp:(Printast.top_phrase)
                 toplevel_phrase
                 (Backward.copy_toplevel_phrase @@
                  Forward.copy_toplevel_phrase toplevel_phrase)));
