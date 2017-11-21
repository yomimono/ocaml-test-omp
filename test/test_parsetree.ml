module Forward = Migrate_parsetree_405_406_migrate
module Backward = Migrate_parsetree_406_405_migrate

let () =
  Crowbar.(add_test ~name:"expression" [Parsetree_405.expression_to_crowbar]
             (fun expression ->
                check_eq ~pp:(Printast.expression 0)
                  expression
                  (Backward.copy_expression @@ Forward.copy_expression
                     expression)))
