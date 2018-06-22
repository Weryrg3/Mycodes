# Earlang executado em Elixir
# erl

# :application.behaviour_info                           #                     /1
# :application.ensure_all_started                       #                     /1
# :application.ensure_all_started                       #                     /2
# :application.ensure_started                           #                     /1
# :application.ensure_started                           #                     /2
# :application.get_all_env                              #                     /0
# :application.get_all_env                              #                     /1
# :application.get_all_key                              #                     /0
# :application.get_all_key                              #                     /1
# :application.get_application                          #                     /0
# :application.get_application                          #                     /1
# :application.get_env                                  #                     /1
# :application.get_env                                  #                     /2
# :application.get_env                                  #                     /3
# :application.get_key                                  #                     /1
# :application.get_key                                  #                     /2
# :application.info                                     #                     /0
# :application.load                                     #                     /1
# :application.load                                     #                     /2
# :application.loaded_applications                      #                     /0
# :application.module_info                              #                     /0
# :application.module_info                              #                     /1
# :application.permit                                   #                     /2
# :application.set_env                                  #                     /3
# :application.set_env                                  #                     /4
# :application.start                                    #                     /1
# :application.start                                    #                     /2
# :application.start_boot                               #                     /1
# :application.start_boot                               #                     /2
# :application.start_type                               #                     /0
# :application.stop                                     #                     /1
# :application.takeover                                 #                     /2
# :application.unload                                   #                     /1
# :application.unset_env                                #                     /2
# :application.unset_env                                #                     /3
# :application.which_applications                       #                     /0
# :application.which_applications                       #                     /1
#-------------------------------------------------------#----------------------#
# :application_controller.change_application_data       #                     /2
# :application_controller.code_change                   #                     /3
# :application_controller.config_change                 #                     /1
# :application_controller.control_application           #                     /1
# :application_controller.do_config_diff                #                     /2
# :application_controller.get_all_env                   #                     /1
# :application_controller.get_all_key                   #                     /1
# :application_controller.get_application               #                     /1
# :application_controller.get_application_module        #                     /1
# :application_controller.get_env                       #                     /2
# :application_controller.get_key                       #                     /2
# :application_controller.get_loaded                    #                     /1
# :application_controller.get_master                    #                     /1
# :application_controller.get_pid_all_env               #                     /1
# :application_controller.get_pid_all_key               #                     /1
# :application_controller.get_pid_env                   #                     /2
# :application_controller.get_pid_key                   #                     /2
# :application_controller.handle_call                   #                     /3
# :application_controller.handle_cast                   #                     /2
# :application_controller.handle_info                   #                     /2
# :application_controller.info                          #                     /0
# :application_controller.init_starter                  #                     /4
# :application_controller.load_application              #                     /1
# :application_controller.loaded_applications           #                     /0
# :application_controller.module_info                   #                     /0
# :application_controller.module_info                   #                     /1
# :application_controller.permit_application            #                     /2
# :application_controller.prep_config_change            #                     /0
# :application_controller.set_env                       #                     /3
# :application_controller.set_env                       #                     /4
# :application_controller.start                         #                     /1
# :application_controller.start_application             #                     /2
# :application_controller.start_boot_application        #                     /2
# :application_controller.start_type                    #                     /1
# :application_controller.stop_application              #                     /1
# :application_controller.terminate                     #                     /2
# :application_controller.test_change_apps              #                     /2
# :application_controller.unload_application            #                     /1
# :application_controller.unset_env                     #                     /2
# :application_controller.unset_env                     #                     /3
# :application_controller.which_applications            #                     /0
# :application_controller.which_applications            #                     /1
#-------------------------------------------------------#----------------------#
# :application_master.get_child                         #                     /1
# :application_master.init                              #                     /4
# :application_master.module_info                       #                     /0
# :application_master.module_info                       #                     /1
# :application_master.start_it                          #                     /4
# :application_master.start_link                        #                     /2
# :application_master.start_type                        #                     /0
# :application_master.stop                              #                     /1
#-------------------------------------------------------#----------------------#
# :application_starter.module_info                      #                     /0
# :application_starter.module_info                      #                     /1
# :application_starter.start                            #                     /3
################################################################################
# :array.default                                        #                     /1
# :array.fix                                            #                     /1
# :array.foldl                                          #                     /3
# :array.foldr                                          #                     /3
# :array.from_list                                      #                     /1
# :array.from_list                                      #                     /2
# :array.from_orddict                                   #                     /1
# :array.from_orddict                                   #                     /2
# :array.get                                            #                     /2
# :array.is_array                                       #                     /1
# :array.is_fix                                         #                     /1
# :array.map                                            #                     /2
# :array.module_info                                    #                     /0
# :array.module_info                                    #                     /1
# :array.new                                            # {:array, 0, 10, :undefined, 10}     /0  -> Terminal
# :array.new(20)                                        # {:array, 20, 0, :undefined, 100}    /1  -> Terminal
# :array.new                                            #                     /2
# :array.relax                                          #                     /1
# :array.reset                                          #                     /2
# :array.resize                                         #                     /1
# :array.resize                                         #                     /2
# :array.set                                            #                     /3
# :array.size                                           #                     /1
# :array.sparse_foldl                                   #                     /3
# :array.sparse_foldr                                   #                     /3
# :array.sparse_map                                     #                     /2
# :array.sparse_size                                    #                     /1
# :array.sparse_to_list                                 #                     /1
# :array.sparse_to_orddict                              #                     /1
# :array.to_list                                        #                     /1
# :array.to_orddict                                     #                     /1
################################################################################
# :auth.code_change                                     #                     /3
# :auth.cookie                                          #                     /0
# :auth.cookie                                          #                     /1
# :auth.get_cookie                                      #                     /0
# :auth.get_cookie                                      #                     /1
# :auth.handle_call                                     #                     /3
# :auth.handle_cast                                     #                     /2
# :auth.handle_info                                     #                     /2
# :auth.init                                            #                     /1
# :auth.is_auth                                         #                     /1
# :auth.module_info                                     #                     /0
# :auth.module_info                                     #                     /1
# :auth.node_cookie                                     #                     /1
# :auth.node_cookie                                     #                     /2
# :auth.print                                           #                     /3
# :auth.set_cookie                                      #                     /1
# :auth.set_cookie                                      #                     /2
# :auth.start_link                                      #                     /0
# :auth.sync_cookie                                     #                     /0
# :auth.terminate                                       #                     /2
################################################################################
# :base64.decode                                        #                     /1
# :base64.decode_to_string                              #                     /1
# :base64.encode                                        #                     /1
# :base64.encode_to_string                              #                     /1
# :base64.mime_decode                                   #                     /1
# :base64.mime_decode_to_string                         #                     /1
# :base64.module_info                                   #                     /0
# :base64.module_info                                   #                     /1
################################################################################
# :beam_a.module                                        #                     /2
# :beam_a.module_info                                   #                     /0
# :beam_a.module_info                                   #                     /1
#-------------------------------------------------------#----------------------#
# :beam_asm.encode                                      #                     /2
# :beam_asm.module                                      #                     /5
# :beam_asm.module_info                                 #                     /0
# :beam_asm.module_info                                 #                     /1
#-------------------------------------------------------#----------------------#
# :beam_block.module                                    #                     /2
# :beam_block.module_info                               #                     /0
# :beam_block.module_info                               #                     /1
#-------------------------------------------------------#----------------------#
# :beam_bs.module                                       #                     /2
# :beam_bs.module_info                                  #                     /0
# :beam_bs.module_info                                  #                     /1
#-------------------------------------------------------#----------------------#
# :beam_bsm.format_error                                #                     /1
# :beam_bsm.module                                      #                     /2
# :beam_bsm.module_info                                 #                     /0
# :beam_bsm.module_info                                 #                     /1
#-------------------------------------------------------#----------------------#
# :beam_clean.bs_clean_saves                            #                     /1
# :beam_clean.clean_labels                              #                     /1
# :beam_clean.module                                    #                     /2
# :beam_clean.module_info                               #                     /0
# :beam_clean.module_info                               #                     /1
#-------------------------------------------------------#----------------------#
# :beam_dead.module                                     #                     /2
# :beam_dead.module_info                                #                     /0
# :beam_dead.module_info                                #                     /1
#-------------------------------------------------------#----------------------#
# :beam_dict.atom                                       #                     /2
# :beam_dict.atom_table                                 #                     /2
# :beam_dict.export                                     #                     /4
# :beam_dict.export_table                               #                     /1
# :beam_dict.fname                                      #                     /2
# :beam_dict.highest_opcode                             #                     /1
# :beam_dict.import                                     #                     /4
# :beam_dict.import_table                               #                     /1
# :beam_dict.lambda                                     #                     /3
# :beam_dict.lambda_table                               #                     /1
# :beam_dict.line                                       #                     /2
# :beam_dict.line_table                                 #                     /1
# :beam_dict.literal                                    #                     /2
# :beam_dict.literal_table                              #                     /1
# :beam_dict.local                                      #                     /4
# :beam_dict.local_table                                #                     /1
# :beam_dict.module_info                                #                     /0
# :beam_dict.module_info                                #                     /1
# :beam_dict.new                                        #                     /0
# :beam_dict.opcode                                     #                     /2
# :beam_dict.string                                     #                     /2
# :beam_dict.string_table                               #                     /1
#-------------------------------------------------------#----------------------#
# :beam_disasm.file                                     #                     /1
# :beam_disasm.format_error                             #                     /1
# :beam_disasm.function__code                           #                     /1
# :beam_disasm.module_info                              #                     /0
# :beam_disasm.module_info                              #                     /1
#-------------------------------------------------------#----------------------#
# :beam_except.module                                   #                     /2
# :beam_except.module_info                              #                     /0
# :beam_except.module_info                              #                     /1
#-------------------------------------------------------#----------------------#
# :beam_flatten.module                                  #                     /2
# :beam_flatten.module_info                             #                     /0
# :beam_flatten.module_info                             #                     /1
#-------------------------------------------------------#----------------------#
# :beam_jump.is_exit_instruction                        #                     /1
# :beam_jump.is_unreachable_after                       #                     /1
# :beam_jump.module                                     #                     /2
# :beam_jump.module_info                                #                     /0
# :beam_jump.module_info                                #                     /1
# :beam_jump.remove_unused_labels                       #                     /1
#-------------------------------------------------------#----------------------#
# :beam_lib.all_chunks                                  #                     /1
# :beam_lib.build_module                                #                     /1
# :beam_lib.chunks                                      #                     /2
# :beam_lib.chunks                                      #                     /3
# :beam_lib.clear_crypto_key_fun                        #                     /0
# :beam_lib.cmp                                         #                     /2
# :beam_lib.cmp_dirs                                    #                     /2
# :beam_lib.code_change                                 #                     /3
# :beam_lib.crypto_key_fun                              #                     /1
# :beam_lib.diff_dirs                                   #                     /2
# :beam_lib.format_error                                #                     /1
# :beam_lib.get_crypto_key                              #                     /1
# :beam_lib.handle_call                                 #                     /3
# :beam_lib.handle_cast                                 #                     /2
# :beam_lib.handle_info                                 #                     /2
# :beam_lib.info                                        #                     /1
# :beam_lib.init                                        #                     /1
# :beam_lib.make_crypto_key                             #                     /2
# :beam_lib.md5                                         #                     /1
# :beam_lib.module_info                                 #                     /0
# :beam_lib.module_info                                 #                     /1
# :beam_lib.strip                                       #                     /1
# :beam_lib.strip_files                                 #                     /1
# :beam_lib.strip_release                               #                     /1
# :beam_lib.terminate                                   #                     /2
# :beam_lib.version                                     #                     /1
#-------------------------------------------------------#----------------------#
# :beam_listing.module                                  #                     /2
# :beam_listing.module_info                             #                     /0
# :beam_listing.module_info                             #                     /1
#-------------------------------------------------------#----------------------#
# :beam_opcodes.format_number                           #                     /0
# :beam_opcodes.module_info                             #                     /0
# :beam_opcodes.module_info                             #                     /1
# :beam_opcodes.opcode                                  #                     /2
# :beam_opcodes.opname                                  #                     /1
#-------------------------------------------------------#----------------------#
# :beam_peep.module                                     #                     /2
# :beam_peep.module_info                                #                     /0
# :beam_peep.module_info                                #                     /1
#-------------------------------------------------------#----------------------#
# :beam_receive.module                                  #                     /2
# :beam_receive.module_info                             #                     /0
# :beam_receive.module_info                             #                     /1
#-------------------------------------------------------#----------------------#
# :beam_record.module                                   #                     /2
# :beam_record.module_info                              #                     /0
# :beam_record.module_info                              #                     /1
#-------------------------------------------------------#----------------------#
# :beam_reorder.module                                  #                     /2
# :beam_reorder.module_info                             #                     /0
# :beam_reorder.module_info                             #                     /1
#-------------------------------------------------------#----------------------#
# :beam_split.module                                    #                     /2
# :beam_split.module_info                               #                     /0
# :beam_split.module_info                               #                     /1
#-------------------------------------------------------#----------------------#
# :beam_trim.module                                     #                     /2
# :beam_trim.module_info                                #                     /0
# :beam_trim.module_info                                #                     /1
#-------------------------------------------------------#----------------------#
# :beam_type.module                                     #                     /2
# :beam_type.module_info                                #                     /0
# :beam_type.module_info                                #                     /1
#-------------------------------------------------------#----------------------#
# :beam_utils.bif_to_test                               #                     /3
# :beam_utils.code_at                                   #                     /2
# :beam_utils.combine_heap_needs                        #                     /2
# :beam_utils.delete_live_annos                         #                     /1
# :beam_utils.empty_label_index                         #                     /0
# :beam_utils.index_label                               #                     /3
# :beam_utils.index_labels                              #                     /1
# :beam_utils.is_killed                                 #                     /3
# :beam_utils.is_killed_at                              #                     /3
# :beam_utils.is_killed_block                           #                     /2
# :beam_utils.is_not_used                               #                     /3
# :beam_utils.is_pure_test                              #                     /1
# :beam_utils.live_opt                                  #                     /1
# :beam_utils.module_info                               #                     /0
# :beam_utils.module_info                               #                     /1
# :beam_utils.split_even                                #                     /1
#-------------------------------------------------------#----------------------#
# :beam_validator.format_error                          #                     /1
# :beam_validator.module                                #                     /2
# :beam_validator.module_info                           #                     /0
# :beam_validator.module_info                           #                     /1
#-------------------------------------------------------#----------------------#
# :beam_z.module                                        #                     /2
# :beam_z.module_info                                   #                     /0
# :beam_z.module_info                                   #                     /1
################################################################################
# :binary.at                                            #                     /2
# :binary.bin_to_list                                   #                     /1
# :binary.bin_to_list                                   #                     /2
# :binary.bin_to_list                                   #                     /3
# :binary.compile_pattern                               #                     /1
# :binary.copy                                          #                     /1
# :binary.copy                                          #                     /2
# :binary.decode_unsigned                               #                     /1
# :binary.decode_unsigned                               #                     /2
# :binary.encode_unsigned                               #                     /1
# :binary.encode_unsigned                               #                     /2
# :binary.first                                         #                     /1
# :binary.last                                          #                     /1
# :binary.list_to_bin                                   #                     /1
# :binary.longest_common_prefix                         #                     /1
# :binary.longest_common_suffix                         #                     /1
# :binary.match                                         #                     /2
# :binary.match                                         #                     /3
# :binary.matches                                       #                     /2
# :binary.matches                                       #                     /3
# :binary.module_info                                   #                     /0
# :binary.module_info                                   #                     /1
# :binary.part                                          #                     /2
# :binary.part                                          #                     /3
# :binary.referenced_byte_size                          #                     /1
# :binary.replace                                       #                     /3
# :binary.replace                                       #                     /4
# :binary.split                                         #                     /2
# :binary.split                                         #                     /3
################################################################################
# :c.appcall                                            #                     /4
# :c.bi                                                 #                     /1
# :c.bt                                                 #                     /1
# :c.c                                                  #                     /1
# :c.c                                                  #                     /2
# :c.c                                                  #                     /3
# :c.cd                                                 #                     /1
# :c.display_info                                       #                     /1
# :c.erlangrc                                           #                     /0
# :c.erlangrc                                           #                     /1
# :c.flush                                              #                     /0
# :c.help                                               #                     /0
# :c.i                                                  #                     /0
# :c.i                                                  #                     /1
# :c.i                                                  #                     /3
# :c.l                                                  #                     /1
# :c.lc                                                 #                     /1
# :c.lc_batch                                           #                     /0
# :c.lc_batch                                           #                     /1
# :c.lm                                                 #                     /0
# :c.ls                                                 #                     /0
# :c.ls                                                 #                     /1
# :c.m                                                  #                     /0
# :c.m                                                  #                     /1
# :c.memory                                             #                     /0
# :c.memory                                             #                     /1
# :c.mm                                                 #                     /0
# :c.module_info                                        #                     /0
# :c.module_info                                        #                     /1
# :c.nc                                                 #                     /1
# :c.nc                                                 #                     /2
# :c.ni                                                 #                     /0
# :c.nl                                                 #                     /1
# :c.nregs                                              #                     /0
# :c.pid                                                #                     /3
# :c.pwd                                                #                     /0
# :c.q                                                  #                     /0
# :c.regs                                               #                     /0
# :c.uptime                                             #                     /0
# :c.xm                                                 #                     /1
# :c.y                                                  #                     /1
# :c.y                                                  #                     /2
################################################################################
# :calendar.date_to_gregorian_days                      #                     /1
# :calendar.date_to_gregorian_days                      #                     /3
# :calendar.datetime_to_gregorian_seconds               #                     /1
# :calendar.day_of_the_week                             #                     /1
# :calendar.day_of_the_week                             #                     /3
# :calendar.gregorian_days_to_date                      #                     /1
# :calendar.gregorian_seconds_to_datetime               #                     /1
# :calendar.is_leap_year                                #                     /1
# :calendar.iso_week_number                             #                     /0
# :calendar.iso_week_number                             #                     /1
# :calendar.last_day_of_the_month                       #                     /2
# :calendar.local_time                                  #                     /0
# :calendar.local_time_to_universal_time                #                     /1
# :calendar.local_time_to_universal_time                #                     /2
# :calendar.local_time_to_universal_time_dst            #                     /1
# :calendar.module_info                                 #                     /0
# :calendar.module_info                                 #                     /1
# :calendar.now_to_datetime                             #                     /1
# :calendar.now_to_local_time                           #                     /1
# :calendar.now_to_universal_time                       #                     /1
# :calendar.seconds_to_daystime                         #                     /1
# :calendar.seconds_to_time                             #                     /1
# :calendar.time_difference                             #                     /2
# :calendar.time_to_seconds                             #                     /1
# :calendar.universal_time                              #                     /0
# :calendar.universal_time_to_local_time                #                     /1
# :calendar.valid_date                                  #                     /1
# :calendar.valid_date                                  #                     /3
