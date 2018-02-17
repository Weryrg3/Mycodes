################################################################################
#:cerl.abstract                                         #                     /1
#:cerl.add_ann                                          #                     /2
#:cerl.alias_pat                                        #                     /1
#:cerl.alias_var                                        #                     /1
#:cerl.ann_abstract                                     #                     /2
#:cerl.ann_c_alias                                      #                     /3
#:cerl.ann_c_apply                                      #                     /3
#:cerl.ann_c_atom                                       #                     /2
#:cerl.ann_c_binary                                     #                     /2
#:cerl.ann_c_bitstr                                     #                     /5
#:cerl.ann_c_bitstr                                     #                     /6
#:cerl.ann_c_call                                       #                     /4
#:cerl.ann_c_case                                       #                     /3
#:cerl.ann_c_catch                                      #                     /2
#:cerl.ann_c_char                                       #                     /2
#:cerl.ann_c_clause                                     #                     /3
#:cerl.ann_c_clause                                     #                     /4
#:cerl.ann_c_cons                                       #                     /3
#:cerl.ann_c_cons_skel                                  #                     /3
#:cerl.ann_c_float                                      #                     /2
#:cerl.ann_c_fname                                      #                     /3
#:cerl.ann_c_fun                                        #                     /3
#:cerl.ann_c_int                                        #                     /2
#:cerl.ann_c_let                                        #                     /4
#:cerl.ann_c_letrec                                     #                     /3
#:cerl.ann_c_map                                        #                     /2
#:cerl.ann_c_map                                        #                     /3
#:cerl.ann_c_map_pair                                   #                     /4
#:cerl.ann_c_map_pattern                                #                     /2
#:cerl.ann_c_module                                     #                     /4
#:cerl.ann_c_module                                     #                     /5
#:cerl.ann_c_nil                                        #                     /1
#:cerl.ann_c_primop                                     #                     /3
#:cerl.ann_c_receive                                    #                     /2
#:cerl.ann_c_receive                                    #                     /4
#:cerl.ann_c_seq                                        #                     /3
#:cerl.ann_c_string                                     #                     /2
#:cerl.ann_c_try                                        #                     /6
#:cerl.ann_c_tuple                                      #                     /2
#:cerl.ann_c_tuple_skel                                 #                     /2
#:cerl.ann_c_values                                     #                     /2
#:cerl.ann_c_var                                        #                     /2
#:cerl.ann_make_data                                    #                     /3
#:cerl.ann_make_data_skel                               #                     /3
#:cerl.ann_make_list                                    #                     /2
#:cerl.ann_make_list                                    #                     /3
#:cerl.ann_make_tree                                    #                     /3
#:cerl.apply_args                                       #                     /1
#:cerl.apply_arity                                      #                     /1
#:cerl.apply_op                                         #                     /1
#:cerl.atom_lit                                         #                     /1
#:cerl.atom_name                                        #                     /1
#:cerl.atom_val                                         #                     /1
#:cerl.binary_segments                                  #                     /1
#:cerl.bitstr_bitsize                                   #                     /1
#:cerl.bitstr_flags                                     #                     /1
#:cerl.bitstr_size                                      #                     /1
#:cerl.bitstr_type                                      #                     /1
#:cerl.bitstr_unit                                      #                     /1
#:cerl.bitstr_val                                       #                     /1
#:cerl.c_alias                                          #                     /2
#:cerl.c_apply                                          #                     /2
#:cerl.c_atom                                           #                     /1
#:cerl.c_binary                                         #                     /1
#:cerl.c_bitstr                                         #                     /3
#:cerl.c_bitstr                                         #                     /4
#:cerl.c_bitstr                                         #                     /5
#:cerl.c_call                                           #                     /3
#:cerl.c_case                                           #                     /2
#:cerl.c_catch                                          #                     /1
#:cerl.c_char                                           #                     /1
#:cerl.c_clause                                         #                     /2
#:cerl.c_clause                                         #                     /3
#:cerl.c_cons                                           #                     /2
#:cerl.c_cons_skel                                      #                     /2
#:cerl.c_float                                          #                     /1
#:cerl.c_fname                                          #                     /2
#:cerl.c_fun                                            #                     /2
#:cerl.c_int                                            #                     /1
#:cerl.c_let                                            #                     /3
#:cerl.c_letrec                                         #                     /2
#:cerl.c_map                                            #                     /1
#:cerl.c_map_pair                                       #                     /2
#:cerl.c_map_pair_exact                                 #                     /2
#:cerl.c_map_pattern                                    #                     /1
#:cerl.c_module                                         #                     /3
#:cerl.c_module                                         #                     /4
#:cerl.c_nil                                            #                     /0
#:cerl.c_primop                                         #                     /2
#:cerl.c_receive                                        #                     /1
#:cerl.c_receive                                        #                     /3
#:cerl.c_seq                                            #                     /2
#:cerl.c_string                                         #                     /1
#:cerl.c_try                                            #                     /5
#:cerl.c_tuple                                          #                     /1
#:cerl.c_tuple_skel                                     #                     /1
#:cerl.c_values                                         #                     /1
#:cerl.c_var                                            #                     /1
#:cerl.call_args                                        #                     /1
#:cerl.call_arity                                       #                     /1
#:cerl.call_module                                      #                     /1
#:cerl.call_name                                        #                     /1
#:cerl.case_arg                                         #                     /1
#:cerl.case_arity                                       #                     /1
#:cerl.case_clauses                                     #                     /1
#:cerl.catch_body                                       #                     /1
#:cerl.char_lit                                         #                     /1
#:cerl.char_val                                         #                     /1
#:cerl.clause_arity                                     #                     /1
#:cerl.clause_body                                      #                     /1
#:cerl.clause_guard                                     #                     /1
#:cerl.clause_pats                                      #                     /1
#:cerl.clause_vars                                      #                     /1
#:cerl.concrete                                         #                     /1
#:cerl.cons_hd                                          #                     /1
#:cerl.cons_tl                                          #                     /1
#:cerl.copy_ann                                         #                     /2
#:cerl.data_arity                                       #                     /1
#:cerl.data_es                                          #                     /1
#:cerl.data_type                                        #                     /1
#:cerl.float_lit                                        #                     /1
#:cerl.float_val                                        #                     /1
#:cerl.fname_arity                                      #                     /1
#:cerl.fname_id                                         #                     /1
#:cerl.fold_literal                                     #                     /1
#:cerl.from_records                                     #                     /1
#:cerl.fun_arity                                        #                     /1
#:cerl.fun_body                                         #                     /1
#:cerl.fun_vars                                         #                     /1
#:cerl.get_ann                                          #                     /1
#:cerl.int_lit                                          #                     /1
#:cerl.int_val                                          #                     /1
#:cerl.is_c_alias                                       #                     /1
#:cerl.is_c_apply                                       #                     /1
#:cerl.is_c_atom                                        #                     /1
#:cerl.is_c_binary                                      #                     /1
#:cerl.is_c_bitstr                                      #                     /1
#:cerl.is_c_call                                        #                     /1
#:cerl.is_c_case                                        #                     /1
#:cerl.is_c_catch                                       #                     /1
#:cerl.is_c_char                                        #                     /1
#:cerl.is_c_clause                                      #                     /1
#:cerl.is_c_cons                                        #                     /1
#:cerl.is_c_float                                       #                     /1
#:cerl.is_c_fname                                       #                     /1
#:cerl.is_c_fun                                         #                     /1
#:cerl.is_c_int                                         #                     /1
#:cerl.is_c_let                                         #                     /1
#:cerl.is_c_letrec                                      #                     /1
#:cerl.is_c_list                                        #                     /1
#:cerl.is_c_map                                         #                     /1
#:cerl.is_c_map_empty                                   #                     /1
#:cerl.is_c_map_pattern                                 #                     /1
#:cerl.is_c_module                                      #                     /1
#:cerl.is_c_nil                                         #                     /1
#:cerl.is_c_primop                                      #                     /1
#:cerl.is_c_receive                                     #                     /1
#:cerl.is_c_seq                                         #                     /1
#:cerl.is_c_string                                      #                     /1
#:cerl.is_c_try                                         #                     /1
#:cerl.is_c_tuple                                       #                     /1
#:cerl.is_c_values                                      #                     /1
#:cerl.is_c_var                                         #                     /1
#:cerl.is_data                                          #                     /1
#:cerl.is_leaf                                          #                     /1
#:cerl.is_literal                                       #                     /1
#:cerl.is_literal_term                                  #                     /1
#:cerl.is_print_char                                    #                     /1
#:cerl.is_print_string                                  #                     /1
#:cerl.let_arg                                          #                     /1
#:cerl.let_arity                                        #                     /1
#:cerl.let_body                                         #                     /1
#:cerl.let_vars                                         #                     /1
#:cerl.letrec_body                                      #                     /1
#:cerl.letrec_defs                                      #                     /1
#:cerl.letrec_vars                                      #                     /1
#:cerl.list_elements                                    #                     /1
#:cerl.list_length                                      #                     /1
#:cerl.make_data                                        #                     /2
#:cerl.make_data_skel                                   #                     /2
#:cerl.make_list                                        #                     /1
#:cerl.make_list                                        #                     /2
#:cerl.make_tree                                        #                     /2
#:cerl.map_arg                                          #                     /1
#:cerl.map_es                                           #                     /1
#:cerl.map_pair_key                                     #                     /1
#:cerl.map_pair_op                                      #                     /1
#:cerl.map_pair_val                                     #                     /1
#:cerl.meta                                             #                     /1
#:cerl.module_attrs                                     #                     /1
#:cerl.module_defs                                      #                     /1
#:cerl.module_exports                                   #                     /1
#:cerl.module_info                                      #                     /0
#:cerl.module_info                                      #                     /1
#:cerl.module_name                                      #                     /1
#:cerl.module_vars                                      #                     /1
#:cerl.pat_list_vars                                    #                     /1
#:cerl.pat_vars                                         #                     /1
#:cerl.primop_args                                      #                     /1
#:cerl.primop_arity                                     #                     /1
#:cerl.primop_name                                      #                     /1
#:cerl.receive_action                                   #                     /1
#:cerl.receive_clauses                                  #                     /1
#:cerl.receive_timeout                                  #                     /1
#:cerl.seq_arg                                          #                     /1
#:cerl.seq_body                                         #                     /1
#:cerl.set_ann                                          #                     /2
#:cerl.string_lit                                       #                     /1
#:cerl.string_val                                       #                     /1
#:cerl.subtrees                                         #                     /1
#:cerl.to_records                                       #                     /1
#:cerl.try_arg                                          #                     /1
#:cerl.try_body                                         #                     /1
#:cerl.try_evars                                        #                     /1
#:cerl.try_handler                                      #                     /1
#:cerl.try_vars                                         #                     /1
#:cerl.tuple_arity                                      #                     /1
#:cerl.tuple_es                                         #                     /1
#:cerl.type                                             #                     /1
#:cerl.unfold_literal                                   #                     /1
#:cerl.update_c_alias                                   #                     /3
#:cerl.update_c_apply                                   #                     /3
#:cerl.update_c_binary                                  #                     /2
#:cerl.update_c_bitstr                                  #                     /5
#:cerl.update_c_bitstr                                  #                     /6
#:cerl.update_c_call                                    #                     /4
#:cerl.update_c_case                                    #                     /3
#:cerl.update_c_catch                                   #                     /2
#:cerl.update_c_clause                                  #                     /4
#:cerl.update_c_cons                                    #                     /3
#:cerl.update_c_cons_skel                               #                     /3
#:cerl.update_c_fname                                   #                     /2
#:cerl.update_c_fname                                   #                     /3
#:cerl.update_c_fun                                     #                     /3
#:cerl.update_c_let                                     #                     /4
#:cerl.update_c_letrec                                  #                     /3
#:cerl.update_c_map                                     #                     /3
#:cerl.update_c_map_pair                                #                     /4
#:cerl.update_c_module                                  #                     /5
#:cerl.update_c_primop                                  #                     /3
#:cerl.update_c_receive                                 #                     /4
#:cerl.update_c_seq                                     #                     /3
#:cerl.update_c_try                                     #                     /6
#:cerl.update_c_tuple                                   #                     /2
#:cerl.update_c_tuple_skel                              #                     /2
#:cerl.update_c_values                                  #                     /2
#:cerl.update_c_var                                     #                     /2
#:cerl.update_data                                      #                     /3
#:cerl.update_data_skel                                 #                     /3
#:cerl.update_list                                      #                     /2
#:cerl.update_list                                      #                     /3
#:cerl.update_tree                                      #                     /2
#:cerl.update_tree                                      #                     /3
#:cerl.values_arity                                     #                     /1
#:cerl.values_es                                        #                     /1
#:cerl.var_name                                         #                     /1
#-------------------------------------------------------#----------------------#
# :cerl_clauses.any_catchall                            #                     /1
# :cerl_clauses.eval_guard                              #                     /1
# :cerl_clauses.is_catchall                             #                     /1
# :cerl_clauses.match                                   #                     /2
# :cerl_clauses.match_list                              #                     /2
# :cerl_clauses.module_info                             #                     /0
# :cerl_clauses.module_info                             #                     /1
# :cerl_clauses.reduce                                  #                     /1
# :cerl_clauses.reduce                                  #                     /2
#-------------------------------------------------------#----------------------#
# :cerl_inline.core_transform                           #                     /2
# :cerl_inline.module_info                              #                     /0
# :cerl_inline.module_info                              #                     /1
# :cerl_inline.transform                                #                     /1
# :cerl_inline.transform                                #                     /2
#-------------------------------------------------------#----------------------#
# :cerl_sets.add_element                                #                     /2
# :cerl_sets.del_element                                #                     /2
# :cerl_sets.filter                                     #                     /2
# :cerl_sets.fold                                       #                     /3
# :cerl_sets.from_list                                  #                     /1
# :cerl_sets.intersection                               #                     /1
# :cerl_sets.intersection                               #                     /2
# :cerl_sets.is_disjoint                                #                     /2
# :cerl_sets.is_element                                 #                     /2
# :cerl_sets.is_set                                     #                     /1
# :cerl_sets.is_subset                                  #                     /2
# :cerl_sets.module_info                                #                     /0
# :cerl_sets.module_info                                #                     /1
# :cerl_sets.new                                        #                     /0
# :cerl_sets.size                                       #                     /1
# :cerl_sets.subtract                                   #                     /2
# :cerl_sets.to_list                                    #                     /1
# :cerl_sets.union                                      #                     /1
# :cerl_sets.union                                      #                     /2
#-------------------------------------------------------#----------------------#
# :cerl_trees.depth                                     #                     /1
# :cerl_trees.fold                                      #                     /3
# :cerl_trees.free_variables                            #                     /1
# :cerl_trees.get_label                                 #                     /1
# :cerl_trees.label                                     #                     /1
# :cerl_trees.label                                     #                     /2
# :cerl_trees.map                                       #                     /2
# :cerl_trees.mapfold                                   #                     /3
# :cerl_trees.mapfold                                   #                     /4
# :cerl_trees.module_info                               #                     /0
# :cerl_trees.module_info                               #                     /1
# :cerl_trees.size                                      #                     /1
# :cerl_trees.variables                                 #                     /1
################################################################################
# :code.add_path                                        #                     /1
# :code.add_patha                                       #                     /1
# :code.add_paths                                       #                     /1
# :code.add_pathsa                                      #                     /1
# :code.add_pathsz                                      #                     /1
# :code.add_pathz                                       #                     /1
# :code.all_loaded                                      #                     /0
# :code.atomic_load                                     #                     /1
# :code.clash                                           #                     /0
# :code.compiler_dir                                    #                     /0
# :code.del_path                                        #                     /1
# :code.delete                                          #                     /1
# :code.ensure_loaded                                   #                     /1
# :code.ensure_modules_loaded                           #                     /1
# :code.finish_loading                                  #                     /1
# :code.get_chunk                                       #                     /2
# :code.get_mode                                        #                     /0
# :code.get_object_code                                 #                     /1
# :code.get_path                                        #                     /0
# :code.is_loaded                                       #                     /1
# :code.is_module_native                                #                     /1
# :code.is_sticky                                       #                     /1
# :code.lib_dir                                         #                     /0
# :code.lib_dir                                         #                     /1
# :code.lib_dir                                         #                     /2
# :code.load_abs                                        #                     /1
# :code.load_abs                                        #                     /2
# :code.load_binary                                     #                     /3
# :code.load_file                                       #                     /1
# :code.load_native_partial                             #                     /2
# :code.load_native_sticky                              #                     /3
# :code.make_stub_module                                #                     /3
# :code.modified_modules                                #                     /0
# :code.module_info                                     #                     /0
# :code.module_info                                     #                     /1
# :code.module_md5                                      #                     /1
# :code.module_status                                   #                     /1
# :code.objfile_extension                               #                     /0
# :code.prepare_loading                                 #                     /1
# :code.priv_dir                                        #                     /1
# :code.purge                                           #                     /1
# :code.rehash                                          #                     /0
# :code.replace_path                                    #                     /2
# :code.root_dir                                        #                     /0
# :code.set_path                                        #                     /1
# :code.set_primary_archive                             #                     /4
# :code.soft_purge                                      #                     /1
# :code.start_link                                      #                     /0
# :code.stick_dir                                       #                     /1
# :code.stick_mod                                       #                     /1
# :code.stop                                            #                     /0
# :code.unstick_dir                                     #                     /1
# :code.unstick_mod                                     #                     /1
# :code.where_is_file                                   #                     /1
# :code.where_is_file                                   #                     /2
# :code.which                                           #                     /1
#-------------------------------------------------------#----------------------#
# :code_server.call                                     #                     /1
# :code_server.error_msg                                #                     /2
# :code_server.info_msg                                 #                     /2
# :code_server.module_info                              #                     /0
# :code_server.module_info                              #                     /1
# :code_server.start_link                               #                     /1
# :code_server.system_code_change                       #                     /4
################################################################################
# :compile.compile                                      #                     /3
# :compile.compile_asm                                  #                     /3
# :compile.compile_beam                                 #                     /3
# :compile.compile_core                                 #                     /3
# :compile.env_compiler_options                         #                     /0
# :compile.file                                         #                     /1
# :compile.file                                         #                     /2
# :compile.format_error                                 #                     /1
# :compile.forms                                        #                     /1
# :compile.forms                                        #                     /2
# :compile.iofile                                       #                     /1
# :compile.module_info                                  #                     /0
# :compile.module_info                                  #                     /1
# :compile.noenv_file                                   #                     /2
# :compile.noenv_forms                                  #                     /2
# :compile.noenv_output_generated                       #                     /1
# :compile.options                                      #                     /0
# :compile.output_generated                             #                     /1
################################################################################
# :core_lib.is_var_used                                 #                     /2
# :core_lib.make_values                                 #                     /1
# :core_lib.module_info                                 #                     /0
# :core_lib.module_info                                 #                     /1
#-------------------------------------------------------#----------------------#
# :core_lint.format_error                               #                     /1
# :core_lint.module                                     #                     /1
# :core_lint.module                                     #                     /2
# :core_lint.module_inf                                 #                     o0
# :core_lint.module_inf                                 #                     o1
#-------------------------------------------------------#----------------------#
# :core_parse.format_error                              #                     /1
# :core_parse.module_info                               #                     /0
# :core_parse.module_info                               #                     /1
# :core_parse.parse                                     #                     /1
# :core_parse.parse_and_scan                            #                     /1
#-------------------------------------------------------#----------------------#
# :core_pp.format                                       #                     /1
# :core_pp.format_all                                   #                     /1
# :core_pp.module_info                                  #                     /0
# :core_pp.module_info                                  #                     /1
#-------------------------------------------------------#----------------------#
# :core_scan.format_error                               #                     /1
# :core_scan.module_info                                #                     /0
# :core_scan.module_info                                #                     /1
# :core_scan.string                                     #                     /1
# :core_scan.string                                     #                     /2
