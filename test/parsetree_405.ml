module Lexing = struct
  include Lexing
  type p = [%import: Lexing.position] [@@deriving crowbar]
  let position_to_crowbar = p_to_crowbar
end

module Location = struct
  include Location
  type p = [%import: Location.t] [@@deriving crowbar]
  let to_crowbar = p_to_crowbar
end

module Asttypes = struct
  include Ast_405.Asttypes
  type 'a l = [%import: 'a Asttypes.loc] [@@deriving crowbar]
  type arg_label_ = [%import: Asttypes.arg_label] [@@deriving crowbar]
  type label_ = [%import: Asttypes.label] [@@deriving crowbar]
  type closed_flag_ = [%import: Asttypes.closed_flag] [@@deriving crowbar]
  type rec_flag_ = [%import: Asttypes.rec_flag] [@@deriving crowbar]
  type direction_flag_ = [%import: Asttypes.direction_flag] [@@deriving crowbar]
  type override_flag_ = [%import: Asttypes.override_flag] [@@deriving crowbar]
  type variance_ = [%import: Asttypes.variance] [@@deriving crowbar]
  type private_flag_ = [%import: Asttypes.private_flag] [@@deriving crowbar]
  type mutable_flag_ = [%import: Asttypes.mutable_flag] [@@deriving crowbar]
  type virtual_flag_ = [%import: Asttypes.virtual_flag] [@@deriving crowbar]
  let loc_to_crowbar = l_to_crowbar
  let arg_label_to_crowbar = arg_label__to_crowbar
  let closed_flag_to_crowbar = closed_flag__to_crowbar
  let label_to_crowbar = label__to_crowbar
  let rec_flag_to_crowbar = rec_flag__to_crowbar
  let direction_flag_to_crowbar = direction_flag__to_crowbar
  let override_flag_to_crowbar = override_flag__to_crowbar
  let variance_to_crowbar = variance__to_crowbar
  let private_flag_to_crowbar = private_flag__to_crowbar
  let mutable_flag_to_crowbar = mutable_flag__to_crowbar
  let virtual_flag_to_crowbar = virtual_flag__to_crowbar
end

module Longident = struct
  include Longident
  type q = [%import: Longident.t] [@@deriving crowbar]
  let to_crowbar = q_to_crowbar
end

open Asttypes
module Parsetree = Ast_405.Parsetree

type constant = [%import: Parsetree.constant] [@@deriving crowbar]
type attribute = [%import: Parsetree.attribute]
and extension = [%import: Parsetree.extension]
and attributes = [%import: Parsetree.attributes]
and payload = [%import: Parsetree.payload]
and core_type = [%import: Parsetree.core_type]
and core_type_desc = [%import: Parsetree.core_type_desc]
and package_type = [%import: Parsetree.package_type]
and row_field = [%import: Parsetree.row_field]
and pattern = [%import: Parsetree.pattern]
and pattern_desc = [%import: Parsetree.pattern_desc]
and expression = [%import: Parsetree.expression]
and expression_desc = [%import: Parsetree.expression_desc]
and case = [%import: Parsetree.case]
and value_description = [%import: Parsetree.value_description]
and type_declaration = [%import: Parsetree.type_declaration]
and type_kind = [%import: Parsetree.type_kind]
and label_declaration = [%import: Parsetree.label_declaration]
and constructor_declaration = [%import: Parsetree.constructor_declaration]
and constructor_arguments = [%import: Parsetree.constructor_arguments]
and type_extension = [%import: Parsetree.type_extension]
and extension_constructor = [%import: Parsetree.extension_constructor]
and extension_constructor_kind = [%import: Parsetree.extension_constructor_kind]
and class_type = [%import: Parsetree.class_type]
and class_type_desc = [%import: Parsetree.class_type_desc]
and class_signature = [%import: Parsetree.class_signature]
and class_type_field = [%import: Parsetree.class_type_field]
and class_type_field_desc = [%import: Parsetree.class_type_field_desc]
and 'a class_infos = [%import: 'a Parsetree.class_infos]
and class_description = [%import: Parsetree.class_description]
and class_type_declaration = [%import: Parsetree.class_type_declaration]
and class_expr = [%import: Parsetree.class_expr]
and class_expr_desc = [%import: Parsetree.class_expr_desc]
and class_structure = [%import: Parsetree.class_structure]
and class_field = [%import: Parsetree.class_field]
and class_field_desc = [%import: Parsetree.class_field_desc]
and class_field_kind = [%import: Parsetree.class_field_kind]
and class_declaration = [%import: Parsetree.class_declaration]
and module_type = [%import: Parsetree.module_type]
and module_type_desc = [%import: Parsetree.module_type_desc]
and signature = [%import: Parsetree.signature]
and signature_item = [%import: Parsetree.signature_item]
and signature_item_desc = [%import: Parsetree.signature_item_desc]
and module_declaration = [%import: Parsetree.module_declaration]
and module_type_declaration = [%import: Parsetree.module_type_declaration]
and open_description = [%import: Parsetree.open_description]
and 'a include_infos = [%import: 'a Parsetree.include_infos]
and include_description = [%import: Parsetree.include_description]
and include_declaration = [%import: Parsetree.include_declaration]
and with_constraint = [%import: Parsetree.with_constraint]
and module_expr = [%import: Parsetree.module_expr]
and module_expr_desc = [%import: Parsetree.module_expr_desc]
and structure = [%import: Parsetree.structure]
and structure_item = [%import: Parsetree.structure_item]
and structure_item_desc = [%import: Parsetree.structure_item_desc]
and value_binding = [%import: Parsetree.value_binding]
and module_binding = [%import: Parsetree.module_binding]
[@@deriving crowbar]

type toplevel_phrase = [%import: Parsetree.toplevel_phrase]
and directive_argument = [%import: Parsetree.directive_argument]
[@@deriving crowbar]
