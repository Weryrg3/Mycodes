##################################################################################################
IO.puts("\nCode \n")                                                       #                     #
# IO.inspect(Code.Formatter.equivalent())                                  #                    /2
# IO.inspect(Code.Formatter.to_algebra!())                                 #                    /1
# IO.inspect(Code.Formatter.to_algebra!())                                 #                    /2
# IO.inspect(Code.Formatter.to_algebra())                                  #                    /1
# IO.inspect(Code.Formatter.to_algebra())                                  #                    /2
#--------------------------------------------------------------------------#---------------------#
# IO.inspect(Code.Identifier.binary_op())                                  #                    /1
# IO.inspect(Code.Identifier.classify())                                   #                    /1
# IO.inspect(Code.Identifier.escape())                                     #                    /2
# IO.inspect(Code.Identifier.escape())                                     #                    /3
# IO.inspect(Code.Identifier.escape())                                     #                    /4
# IO.inspect(Code.Identifier.extract_anonymous_fun_parent())               #                    /1
# IO.inspect(Code.Identifier.inspect_as_atom())                            #                    /1
# IO.inspect(Code.Identifier.inspect_as_function())                        #                    /1
# IO.inspect(Code.Identifier.inspect_as_key())                             #                    /1
# IO.inspect(Code.Identifier.unary_op())                                   #                    /1
#--------------------------------------------------------------------------#---------------------#
# IO.inspect(Code.LoadError.xception())                                    #                    /1
# IO.inspect(Code.LoadError.message())                                     #                    /1
#--------------------------------------------------------------------------#---------------------#
# IO.inspect(Code.append_path())                                           #                    /1
IO.inspect(Code.available_compiler_options())                            #                    /0
# IO.inspect(Code.compile_quoted())                                        #                    /1
# IO.inspect(Code.compile_quoted())                                        #                    /2
# IO.inspect(Code.compile_string())                                        #                    /1
# IO.inspect(Code.compile_string())                                        #                    /2
IO.inspect(Code.compiler_options())                                      #                    /0
# IO.inspect(Code.compiler_options())                                      #                    /1
# IO.inspect(Code.delete_path())                                           #                    /1
# IO.inspect(Code.ensure_compiled())                                       #                    /1
# IO.inspect(Code.ensure_compiled?())                                      #                    /1
# IO.inspect(Code.ensure_loaded())                                         #                    /1
# IO.inspect(Code.ensure_loaded?())                                        #                    /1
# IO.inspect(Code.eval_file())                                             #                    /1
# IO.inspect(Code.eval_file())                                             #                    /2
# IO.inspect(Code.eval_quoted())                                           #                    /1
# IO.inspect(Code.eval_quoted())                                           #                    /2
# IO.inspect(Code.eval_quoted())                                           #                    /3
# IO.inspect(Code.eval_string())                                           #                    /1
# IO.inspect(Code.eval_string())                                           #                    /2
# IO.inspect(Code.eval_string())                                           #                    /3
# IO.inspect(Code.format_file!())                                          #                    /1
# IO.inspect(Code.format_file!())                                          #                    /2
# IO.inspect(Code.format_string!())                                        #                    /1
# IO.inspect(Code.format_string!())                                        #                    /2
# IO.inspect(Code.get_docs())                                              #                    /2
# IO.inspect(Code.load_file())                                             #                    /1
# IO.inspect(Code.load_file())                                             #                    /2
IO.inspect(Code.loaded_files())                                          #                    /0
# IO.inspect(Code.prepend_path())                                          #                    /1
# IO.inspect(Code.require_file())                                          #                    /1
# IO.inspect(Code.require_file())                                          #                    /2
# IO.inspect(Code.string_to_quoted!())                                     #                    /1
# IO.inspect(Code.string_to_quoted!())                                     #                    /2
# IO.inspect(Code.string_to_quoted())                                      #                    /1
# IO.inspect(Code.string_to_quoted())                                      #                    /2
# IO.inspect(Code.unload_files())                                          #                    /1
##################################################################################################
IO.puts("\nMacro \n")                                                      #                     #
# IO.inspect(Macro.Env.in_guard?())                                        #                    /1
# IO.inspect(Macro.Env.in_match?())                                        #                    /1
# IO.inspect(Macro.Env.location())                                         #                    /1
# IO.inspect(Macro.Env.stacktrace())                                       #                    /1
# IO.inspect(Macro.Env.to_match())                                         #                    /1
#--------------------------------------------------------------------------#---------------------#
# IO.inspect(Macro.camelize())                                             #                    /1
# IO.inspect(Macro.decompose_call())                                       #                    /1
# IO.inspect(Macro.escape())                                               #                    /1
# IO.inspect(Macro.escape())                                               #                    /2
# IO.inspect(Macro.expand())                                               #                    /2
# IO.inspect(Macro.expand_once())                                          #                    /2
# IO.inspect(Macro.generate_arguments())                                   #                    /2
# IO.inspect(Macro.pipe())                                                 #                    /3
# IO.inspect(Macro.postwalk())                                             #                    /2
# IO.inspect(Macro.postwalk())                                             #                    /3
# IO.inspect(Macro.prewalk())                                              #                    /2
# IO.inspect(Macro.prewalk())                                              #                    /3
# IO.inspect(Macro.to_string())                                            #                    /1
# IO.inspect(Macro.to_string())                                            #                    /2
# IO.inspect(Macro.traverse())                                             #                    /4
# IO.inspect(Macro.underscore())                                           #                    /1
# IO.inspect(Macro.unescape_string())                                      #                    /1
# IO.inspect(Macro.unescape_string())                                      #                    /2
# IO.inspect(Macro.unpipe())                                               #                    /1
# IO.inspect(Macro.update_meta())                                          #                    /2
# IO.inspect(Macro.validate())                                             #                    /1
# IO.inspect(Macro.var())                                                  #                    /2
##################################################################################################
IO.puts("\nModule \n")                                                     #                     #
# IO.inspect(Module.LocalsTracker.add_defaults())                          #                    /4
# IO.inspect(Module.LocalsTracker.add_import())                            #                    /4
# IO.inspect(Module.LocalsTracker.add_local())                             #                    /3
# IO.inspect(Module.LocalsTracker.collect_unused_locals())                 #                    /3
# IO.inspect(Module.LocalsTracker.delete())                                #                    /1
IO.inspect(Module.LocalsTracker.init())                                  #                    /0
# IO.inspect(Module.LocalsTracker.reachable_from())                        #                    /2
# IO.inspect(Module.LocalsTracker.reattach())                              #                    /5
# IO.inspect(Module.LocalsTracker.yank())                                  #                    /2
#--------------------------------------------------------------------------#---------------------#
# IO.inspect(Module.concat())                                              #                    /1
# IO.inspect(Module.concat())                                              #                    /2
# IO.inspect(Module.create())                                              #                    /3
# IO.inspect(Module.defines?())                                            #                    /2
# IO.inspect(Module.defines?())                                            #                    /3
# IO.inspect(Module.definitions_in())                                      #                    /1
# IO.inspect(Module.definitions_in())                                      #                    /2
# IO.inspect(Module.delete_attribute())                                    #                    /2
# IO.inspect(Module.eval_quoted())                                         #                    /2
# IO.inspect(Module.eval_quoted())                                         #                    /3
# IO.inspect(Module.eval_quoted())                                         #                    /4
# IO.inspect(Module.get_attribute())                                       #                    /2
# IO.inspect(Module.make_overridable())                                    #                    /2
# IO.inspect(Module.open?())                                               #                    /1
# IO.inspect(Module.overridable?())                                        #                    /2
# IO.inspect(Module.put_attribute())                                       #                    /3
# IO.inspect(Module.register_attribute())                                  #                    /3
# IO.inspect(Module.safe_concat())                                         #                    /1
# IO.inspect(Module.safe_concat())                                         #                    /2
# IO.inspect(Module.split())                                               #                    /1
##################################################################################################
IO.puts("\nOptinoParser \n")                                               #                     #
# IO.inspect(OptionParser.ParseError.exception())                          #                    /1
# IO.inspect(OptionParser.ParseError.message())                            #                    /1
#--------------------------------------------------------------------------#---------------------#
# IO.inspect(OptionParser.next())                                          #                    /1
# IO.inspect(OptionParser.next())                                          #                    /2
# IO.inspect(OptionParser.parse!())                                        #                    /1
# IO.inspect(OptionParser.parse!())                                        #                    /2
# IO.inspect(OptionParser.parse())                                         #                    /1
# IO.inspect(OptionParser.parse())                                         #                    /2
# IO.inspect(OptionParser.parse_head!())                                   #                    /1
# IO.inspect(OptionParser.parse_head!())                                   #                    /2
# IO.inspect(OptionParser.parse_head())                                    #                    /1
# IO.inspect(OptionParser.parse_head())                                    #                    /2
# IO.inspect(OptionParser.split())                                         #                    /1
# IO.inspect(OptionParser.to_argv())                                       #                    /1
# IO.inspect(OptionParser.to_argv())                                       #                    /2
##################################################################################################
IO.puts("\nPath \n")                                                       #                     # 
# IO.inspect(Path.Wildcard.list_dir())                                     #                    /1
# IO.inspect(Path.Wildcard.read_link_info())                               #                    /1
#--------------------------------------------------------------------------#---------------------#
# IO.inspect(Path.absname())                                               #                    /1
# IO.inspect(Path.absname())                                               #                    /2
# IO.inspect(Path.basename())                                              #                    /1
# IO.inspect(Path.basename())                                              #                    /2
# IO.inspect(Path.dirname())                                               #                    /1
# IO.inspect(Path.expand())                                                #                    /1
# IO.inspect(Path.expand())                                                #                    /2
# IO.inspect(Path.extname())                                               #                    /1
# IO.inspect(Path.join())                                                  #                    /1
# IO.inspect(Path.join())                                                  #                    /2
# IO.inspect(Path.relative())                                              #                    /1
# IO.inspect(Path.relative_to())                                           #                    /2
# IO.inspect(Path.relative_to_cwd())                                       #                    /1
# IO.inspect(Path.rootname())                                              #                    /1
# IO.inspect(Path.rootname())                                              #                    /2
# IO.inspect(Path.split())                                                 #                    /1
# IO.inspect(Path.type())                                                  #                    /1
# IO.inspect(Path.wildcard())                                              #                    /1
# IO.inspect(Path.wildcard())                                              #                    /2
##################################################################################################
IO.puts("\nPort \n")                                                       #                     #
# IO.inspect(Port.close())                                                 #                    /1
# IO.inspect(Port.command())                                               #                    /2
# IO.inspect(Port.command())                                               #                    /3
# IO.inspect(Port.connect())                                               #                    /2
# IO.inspect(Port.demonitor())                                             #                    /1
# IO.inspect(Port.demonitor())                                             #                    /2
# IO.inspect(Port.info())                                                  #                    /1
# IO.inspect(Port.info())                                                  #                    /2
#IO.inspect(Port.list())                                                  #      big            /0
# IO.inspect(Port.monitor())                                               #                    /1
# IO.inspect(Port.open())                                                  #                    /2
##################################################################################################
IO.puts("\nProtocol \n")                                                   #                     #
# IO.inspect(Protocol.UndefinedError.exception())                          #                    /1
# IO.inspect(Protocol.UndefinedError.message())                            #                    /1
#--------------------------------------------------------------------------#---------------------#
# IO.inspect(Protocol.assert_impl!())                                      #                    /2
# IO.inspect(Protocol.assert_protocol!())                                  #                    /1
# IO.inspect(Protocol.consolidate())                                       #                    /2
# IO.inspect(Protocol.consolidated?())                                     #                    /1
# IO.inspect(Protocol.def())                                               #                    /1
# IO.inspect(Protocol.derive())                                            #                    /2
# IO.inspect(Protocol.derive())                                            #                    /3
# IO.inspect(Protocol.extract_impls())                                     #                    /2
# IO.inspect(Protocol.extract_protocols())                                 #                    /1
################################################################################################################
IO.puts("\nSystem \n")                                                     #                                   #
IO.inspect(System.argv())                                                  # []                               /0
# IO.inspect(System.argv())                                                #                                  /1
# IO.inspect(System.at_exit())                                             #                                  /1
#IO.inspect(System.build_info())                                           #                                  /0
# IO.inspect(System.cmd())                                                 #                                  /2
# IO.inspect(System.cmd())                                                 #                                  /3
IO.inspect(System.compiled_endianness())                                   # :little                          /0
# IO.inspect(System.convert_time_unit())                                   #                                  /3
IO.inspect(System.cwd!())                                                  # "/home/wesley/1.Wesley/Mycodes0" /0
IO.inspect(System.cwd())                                                   # "/home/wesley/1.Wesley/Mycodes0" /0
# IO.inspect(System.delete_env())                                          #                                  /1
IO.inspect(System.endianness())                                            # :little                          /0
# IO.inspect(System.find_executable())                                     #                                  /1
#IO.inspect(System.get_env())                                              #        complex +++ estud         /0
# IO.inspect(System.get_env())                                             #                                  /1
#IO.inspect(System.get_pid())                                              #        complex +++ estud         /0
#IO.inspect(System.halt())                                                 #        complex +++ estud         /0
# IO.inspect(System.halt())                                                #                                  /1
#IO.inspect(System.monotonic_time())                                       #        complex +++ estud         /0
# IO.inspect(System.monotonic_time())                                      #                                  /1
#IO.inspect(System.os_time())                                              #        complex +++ estud         /0
# IO.inspect(System.os_time())                                             #                                  /1
#IO.inspect(System.otp_release())                                          #        complex +++ estud         /0
# IO.inspect(System.put_env())                                             #                                  /1
# IO.inspect(System.put_env())                                             #                                  /2
#IO.inspect(System.schedulers())                                           #        complex +++ estud         /0
#IO.inspect(System.schedulers_online())                                    #        complex +++ estud         /0
#IO.inspect(System.stacktrace())                                           #        complex +++ estud         /0
#IO.inspect(System.stop())                                                 #        complex +++ estud         /0
# IO.inspect(System.stop())                                                #                                  /1
#IO.inspect(System.system_time())                                          #        complex +++ estud         /0
# IO.inspect(System.system_time())                                         #                                  /1
#IO.inspect(System.time_offset())                                          #        complex +++ estud         /0
# IO.inspect(System.time_offset())                                         #                                  /1
#IO.inspect(System.tmp_dir!())                                             #        complex +++ estud         /0
#IO.inspect(System.tmp_dir())                                              #        complex +++ estud         /0
#IO.inspect(System.unique_integer())                                       #        complex +++ estud         /0
# IO.inspect(System.unique_integer())                                      #                                  /1
#IO.inspect(System.user_home!())                                           #        complex +++ estud         /0
#IO.inspect(System.user_home())                                            #        complex +++ estud         /0
#IO.inspect(System.version())                                              #        complex +++ estud         /0