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
# :core_lint.
#-------------------------------------------------------#----------------------#
# :core_parse.
#-------------------------------------------------------#----------------------#
# :core_pp.
#-------------------------------------------------------#----------------------#
# :core_scan.
################################################################################
# :dets.
#-------------------------------------------------------#----------------------#
# :dets_server.
#-------------------------------------------------------#----------------------#
# :dets_sup.
#-------------------------------------------------------#----------------------#
# :dets_utils.
#-------------------------------------------------------#----------------------#
# :dets_v9.
################################################################################
# :dict.
################################################################################
# :digraph.
#-------------------------------------------------------#----------------------#
# :digraph_utils.
################################################################################
# :disk_log.
#-------------------------------------------------------#----------------------#
# :disk_log_1.
#-------------------------------------------------------#----------------------#
# :disk_log_server.
#-------------------------------------------------------#----------------------#
# :disk_log_sup.
################################################################################
# :dist_ac.
#-------------------------------------------------------#----------------------#
# :dist_util.
################################################################################
# :edlin.
#-------------------------------------------------------#----------------------#
# :edlin_expand.
################################################################################
# :elixir.
#-------------------------------------------------------#----------------------#
# :elixir_aliases.
#-------------------------------------------------------#----------------------#
# :elixir_bitstring.
#-------------------------------------------------------#----------------------#
# :elixir_bootstrap.
#-------------------------------------------------------#----------------------#
# :elixir_clauses.
#-------------------------------------------------------#----------------------#
# :elixir_code_server.
#-------------------------------------------------------#----------------------#
# :elixir_compiler.
#-------------------------------------------------------#----------------------#
# :elixir_config.
#-------------------------------------------------------#----------------------#
# :elixir_def.
#-------------------------------------------------------#----------------------#
# :elixir_dispatch.
#-------------------------------------------------------#----------------------#
# :elixir_env.
#-------------------------------------------------------#----------------------#
# :elixir_erl.
#-------------------------------------------------------#----------------------#
# :elixir_erl_clauses.
#-------------------------------------------------------#----------------------#
# :elixir_erl_compiler.
#-------------------------------------------------------#----------------------#
# :elixir_erl_for.
#-------------------------------------------------------#----------------------#
# :elixir_erl_pass.
#-------------------------------------------------------#----------------------#
# :elixir_erl_try.
#-------------------------------------------------------#----------------------#
# :elixir_erl_var.
#-------------------------------------------------------#----------------------#
# :elixir_errors.
#-------------------------------------------------------#----------------------#
# :elixir_expand.
#-------------------------------------------------------#----------------------#
# :elixir_fn.
#-------------------------------------------------------#----------------------#
# :elixir_import.
#-------------------------------------------------------#----------------------#
# :elixir_interpolation.
#-------------------------------------------------------#----------------------#
# :elixir_lexical.
#-------------------------------------------------------#----------------------#
# :elixir_locals.
#-------------------------------------------------------#----------------------#
# :elixir_map.
#-------------------------------------------------------#----------------------#
# :elixir_module.
#-------------------------------------------------------#----------------------#
# :elixir_overridable.
#-------------------------------------------------------#----------------------#
# :elixir_parser.
#-------------------------------------------------------#----------------------#
# :elixir_quote.
#-------------------------------------------------------#----------------------#
# :elixir_rewrite.
#-------------------------------------------------------#----------------------#
# :elixir_sup.
#-------------------------------------------------------#----------------------#
# :elixir_tokenizer.
#-------------------------------------------------------#----------------------#
# :elixir_utils.
################################################################################
# :epp.
################################################################################
# :erl_abstract_code.
#-------------------------------------------------------#----------------------#
# :erl_anno.
#-------------------------------------------------------#----------------------#
# :erl_bifs.
#-------------------------------------------------------#----------------------#
# :erl_bits.
#-------------------------------------------------------#----------------------#
# :erl_boot_server.
#-------------------------------------------------------#----------------------#
# :erl_compile.
#-------------------------------------------------------#----------------------#
# :erl_ddll.
#-------------------------------------------------------#----------------------#
# :erl_distribution.
#-------------------------------------------------------#----------------------#
# :erl_epmd.
#-------------------------------------------------------#----------------------#
# :erl_eval.
#-------------------------------------------------------#----------------------#
# :erl_expand_records.
#-------------------------------------------------------#----------------------#
# :erl_internal.
#-------------------------------------------------------#----------------------#
# :erl_lint.
#-------------------------------------------------------#----------------------#
# :erl_parse.
#-------------------------------------------------------#----------------------#
# :erl_posix_msg.
#-------------------------------------------------------#----------------------#
# :erl_pp.
#-------------------------------------------------------#----------------------#
# :erl_prim_loader.
#-------------------------------------------------------#----------------------#
# :erl_reply.
#-------------------------------------------------------#----------------------#
# :erl_scan.
#-------------------------------------------------------#----------------------#
# :erl_signal_handler.
#-------------------------------------------------------#----------------------#
# :erl_tar.
#-------------------------------------------------------#----------------------#
# :erl_tracer.
################################################################################
# :erlang.
################################################################################
# :error_handler.
#-------------------------------------------------------#----------------------#
# :error_logger.
#-------------------------------------------------------#----------------------#
# :error_logger_file_h.
#-------------------------------------------------------#----------------------#
# :error_logger_tty_h.
################################################################################
# :erts_code_purger.
#-------------------------------------------------------#----------------------#
# :erts_debug.
#-------------------------------------------------------#----------------------#
# :erts_dirty_process_code_checker.
#-------------------------------------------------------#----------------------#
# :erts_internal.
#-------------------------------------------------------#----------------------#
# :erts_literal_area_collector.
################################################################################
# :escript.
################################################################################
# :ets.
################################################################################
# :eval_bits.
################################################################################
# :file.
#-------------------------------------------------------#----------------------#
# :file_io_server.
#-------------------------------------------------------#----------------------#
# :file_server.
#-------------------------------------------------------#----------------------#
# :file_sorter.
#-------------------------------------------------------#----------------------#
# :filelib.
#-------------------------------------------------------#----------------------#
# :filename.
################################################################################
# :gb_sets.
#-------------------------------------------------------#----------------------#
# :gb_trees.
################################################################################
# :gen.
#-------------------------------------------------------#----------------------#
# :gen_event.
#-------------------------------------------------------#----------------------#
# :gen_fsm.
#-------------------------------------------------------#----------------------#
# :gen_sctp.
#-------------------------------------------------------#----------------------#
# :gen_server.
#-------------------------------------------------------#----------------------#
# :gen_statem.
#-------------------------------------------------------#----------------------#
# :gen_tcp.
#-------------------------------------------------------#----------------------#
# :gen_udp.
################################################################################
# :global.
#-------------------------------------------------------#----------------------#
# :global_group.
#-------------------------------------------------------#----------------------#
# :global_search.
################################################################################
# :group.
#-------------------------------------------------------#----------------------#
# :group_history.
################################################################################
# :heart.
################################################################################
# :hipe_unified_loader.
################################################################################
# :inet.
#-------------------------------------------------------#----------------------#
# :inet6_sctp.
#-------------------------------------------------------#----------------------#
# :inet6_tcp.
#-------------------------------------------------------#----------------------#
# :inet6_tcp_dist.
#-------------------------------------------------------#----------------------#
# :inet6_udp.
#-------------------------------------------------------#----------------------#
# :inet_config.
#-------------------------------------------------------#----------------------#
# :inet_db.
#-------------------------------------------------------#----------------------#
# :inet_dns.
#-------------------------------------------------------#----------------------#
# :inet_gethost_native.
#-------------------------------------------------------#----------------------#
# :inet_hosts.
#-------------------------------------------------------#----------------------#
# :inet_parse.
#-------------------------------------------------------#----------------------#
# :inet_res.
#-------------------------------------------------------#----------------------#
# :inet_sctp.
#-------------------------------------------------------#----------------------#
# :inet_tcp.
#-------------------------------------------------------#----------------------#
# :inet_tcp_dist.
#-------------------------------------------------------#----------------------#
# :inet_udp.
################################################################################
# :init.
################################################################################
# :io.
################################################################################
# :io_lib.
#-------------------------------------------------------#----------------------#
# :io_lib_format.
#-------------------------------------------------------#----------------------#
# :io_lib_fread.
#-------------------------------------------------------#----------------------#
# :io_lib_pretty.
################################################################################
# :kernel.
#-------------------------------------------------------#----------------------#
# :kernel_config.
################################################################################
# :lib.
################################################################################
# :lists.
################################################################################
# :local_tcp.
#-------------------------------------------------------#----------------------#
# :local_udp.
################################################################################
# :log_mf_h.
################################################################################
# :maps.
################################################################################
# :math.acos()                                          #                     /1
# :math.acosh()                                         #                     /1
# :math.asin()                                          #                     /1
# :math.asinh()                                         #                     /1
# :math.atan()                                          #                     /1
# :math.atan2()                                         #                     /2
# :math.atanh()                                         #                     /1
# :math.ceil()                                          #                     /1
# :math.cos()                                           #                     /1
# :math.cosh()                                          #                     /1
# :math.erf()                                           #                     /1
# :math.erfc()                                          #                     /1
# :math.exp()                                           #                     /1
# :math.floor()                                         #                     /1
# :math.fmod()                                          #                     /2
# :math.log()                                           #                     /1
# :math.log10()                                         #                     /1
# :math.log2()                                          #                     /1
:math.pi()                                              # 3.141592653589793   /0    \ Pi
:math.pow(2, 4)                                         # 16.0                /2    \ Elevação 
# :math.sin()                                           #                     /1
# :math.sinh()                                          #                     /1
# :math.sqrt()                                          #                     /1
# :math.tan()                                           #                     /1
# :math.tanh()                                          #                     /1
################################################################################
# :ms_transform.
################################################################################
# :net.
#-------------------------------------------------------#----------------------#
# :net_adm.
#-------------------------------------------------------#----------------------#
# :net_kernel.
################################################################################
# :orddict.
################################################################################
# :ordsets.
################################################################################
# :os.
################################################################################
# :otp_internal.
#-------------------------------------------------------#----------------------#
# :otp_ring0.
################################################################################
# :pg2.
################################################################################
# :pool.
################################################################################
# :prim_eval.
#-------------------------------------------------------#----------------------#
# :prim_file.
#-------------------------------------------------------#----------------------#
# :prim_inet.
#-------------------------------------------------------#----------------------#
# :prim_zip.
################################################################################
# :proc_lib.
################################################################################
# :proplists.
################################################################################
# :qlc.
#-------------------------------------------------------#----------------------#
# :qlc_pt.
################################################################################
# :queue.
################################################################################
# :ram_file.
################################################################################
# :rand.
################################################################################
# :random.
################################################################################
# :re.
################################################################################
# :rec_env.
################################################################################
# :rpc.
################################################################################
# :seq_trace.
################################################################################
# :sets.
################################################################################
# :shell.
#-------------------------------------------------------#----------------------#
# :shell_default.
################################################################################
# :slave.
################################################################################
# :sofs.
################################################################################
# :standard_error.
################################################################################
# :string.
################################################################################
# :supervisor.
#-------------------------------------------------------#----------------------#
# :supervisor_bridge.
################################################################################
# :sys.
#-------------------------------------------------------#----------------------#
# :sys_core_bsm.
#-------------------------------------------------------#----------------------#
# :sys_core_dsetel.
#-------------------------------------------------------#----------------------#
# :sys_core_fold.
#-------------------------------------------------------#----------------------#
# :sys_core_fold_lists.
#-------------------------------------------------------#----------------------#
# :sys_core_inline.
#-------------------------------------------------------#----------------------#
# :sys_pre_attributes.
################################################################################
# :timer.
################################################################################
# :unicode.
#-------------------------------------------------------#----------------------#
# :unicode_util.
################################################################################
# :user.
#-------------------------------------------------------#----------------------#
# :user_drv.
#-------------------------------------------------------#----------------------#
# :user_sup.
################################################################################
# :v3_codegen.
#-------------------------------------------------------#----------------------#
# :v3_core.
#-------------------------------------------------------#----------------------#
# :v3_kernel.
#-------------------------------------------------------#----------------------#
# :v3_kernel_pp.
#-------------------------------------------------------#----------------------#
# :v3_life.
################################################################################
# :win32reg.
################################################################################
# :wrap_log_reader.
################################################################################
# :zip.
################################################################################
# :zlib.