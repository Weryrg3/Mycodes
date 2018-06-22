IO.puts("\n Agent\n")
#################################################################################
# IO.inspect(Agent.Server.init())                        #                     /1
# IO.inspect(Agent.cast())                               #                     /2
# IO.inspect(Agent.cast())                               #                     /4
# IO.inspect(Agent.get())                                #                     /2
# IO.inspect(Agent.get())                                #                     /3
# IO.inspect(Agent.get())                                #                     /4
# IO.inspect(Agent.get())                                #                     /5
# IO.inspect(Agent.get_and_update())                     #                     /2
# IO.inspect(Agent.get_and_update())                     #                     /3
# IO.inspect(Agent.get_and_update())                     #                     /4
# IO.inspect(Agent.get_and_update())                     #                     /5
# IO.inspect(Agent.start())                              #                     /1
# IO.inspect(Agent.start())                              #                     /2
# IO.inspect(Agent.start())                              #                     /3
# IO.inspect(Agent.start())                              #                     /4
# IO.inspect(Agent.start_link())                         #                     /1
# IO.inspect(Agent.start_link())                         #                     /2
# IO.inspect(Agent.start_link())                         #                     /3
# IO.inspect(Agent.start_link())                         #                     /4
# IO.inspect(Agent.stop())                               #                     /1
# IO.inspect(Agent.stop())                               #                     /2
# IO.inspect(Agent.stop())                               #                     /3
# IO.inspect(Agent.update())                             #                     /2
# IO.inspect(Agent.update())                             #                     /3
# IO.inspect(Agent.update())                             #                     /4
# IO.inspect(Agent.update())                             #                     /5
#################################################################################
IO.puts("\nApplication\n")                               #                      #
# aplicação isolada                                      #                      #
# IO.inspect(Application.app_dir())                      #                     /1
# IO.inspect(Application.app_dir())                      #                     /2
# IO.inspect(Application.delete_env())                   #                     /2
# IO.inspect(Application.delete_env())                   #                     /3
# IO.inspect(Application.ensure_all_started())           #                     /1
# IO.inspect(Application.ensure_all_started())           #                     /2
# IO.inspect(Application.ensure_started())               #                     /1
# IO.inspect(Application.ensure_started())               #                     /2
# IO.inspect(Application.fetch_env!())                   #                     /2
# IO.inspect(Application.fetch_env())                    #                     /2
# IO.inspect(Application.format_error())                 #                     /1
# IO.inspect(Application.get_all_env())                  #                     /1
# IO.inspect(Application.get_application())              #                     /1
# IO.inspect(Application.get_env())                      #                     /2
# IO.inspect(Application.get_env())                      #                     /3
# IO.inspect(Application.load())                         #                     /1
#IO.inspect(Application.loaded_applications())           #---------------------/0
# IO.inspect(Application.put_env())                      #                     /3
# IO.inspect(Application.put_env())                      #                     /4
# IO.inspect(Application.spec())                         #                     /1
# IO.inspect(Application.spec())                         #                     /2
# IO.inspect(Application.start())                        #                     /1
# IO.inspect(Application.start())                        #                     /2
#IO.inspect(Application.started_applications())          #---------------------/0
# IO.inspect(Application.started_applications())         #                     /1
# IO.inspect(Application.stop())                         #                     /1
# IO.inspect(Application.unload())                       #                     /1
#################################################################################
IO.puts("\nDynamicSupervisor \n")                        #                      #
# IO.inspect(DynamicSupervisor.count_children())         #                     /1
# IO.inspect(DynamicSupervisor.start_child())            #                     /2
# IO.inspect(DynamicSupervisor.start_link())             #                     /1
# IO.inspect(DynamicSupervisor.start_link())             #                     /2
# IO.inspect(DynamicSupervisor.start_link())             #                     /3
# IO.inspect(DynamicSupervisor.terminate_child())        #                     /2
# IO.inspect(DynamicSupervisor.which_children())         #                     /1
#################################################################################
IO.puts("\nGenServer \n")                                #                      #
# Servidor genérico                                      #                      #
# IO.inspect(GenServer.abcast())                         #                     /2
# IO.inspect(GenServer.abcast())                         #                     /3
# IO.inspect(GenServer.call())                           #                     /2
# IO.inspect(GenServer.call())                           #                     /3
# IO.inspect(GenServer.cast())                           #                     /2
# IO.inspect(GenServer.multi_call())                     #                     /2
# IO.inspect(GenServer.multi_call())                     #                     /3
# IO.inspect(GenServer.multi_call())                     #                     /4
# IO.inspect(GenServer.reply())                          #                     /2
# IO.inspect(GenServer.start())                          #                     /2
# IO.inspect(GenServer.start())                          #                     /3
# IO.inspect(GenServer.start_link())                     #                     /2
# IO.inspect(GenServer.start_link())                     #                     /3
# IO.inspect(GenServer.stop())                           #                     /1
# IO.inspect(GenServer.stop())                           #                     /2
# IO.inspect(GenServer.stop())                           #                     /3
# IO.inspect(GenServer.whereis())                        #                     /1
#################################################################################
IO.puts("\nNode \n")                                     #                      #
IO.inspect(Node.alive?())                                # false               /0
# IO.inspect(Node.connect())                             #                     /1
# IO.inspect(Node.disconnect())                          #                     /1
IO.inspect(Node.get_cookie())                            #                     /0
IO.inspect(Node.list())                                  #                     /0
# IO.inspect(Node.list())                                #                     /1
# IO.inspect(Node.monitor())                             #                     /2
# IO.inspect(Node.monitor())                             #                     /3
# IO.inspect(Node.ping())                                #                     /1
IO.inspect(Node.self())                                  #                     /0
# IO.inspect(Node.set_cookie())                          #                     /1
# IO.inspect(Node.set_cookie())                          #                     /2
# IO.inspect(Node.spawn())                               #                     /2
# IO.inspect(Node.spawn())                               #                     /3
# IO.inspect(Node.spawn())                               #                     /4
# IO.inspect(Node.spawn())                               #                     /5
# IO.inspect(Node.spawn_link())                          #                     /2
# IO.inspect(Node.spawn_link())                          #                     /4
# IO.inspect(Node.start())                               #                     /1
# IO.inspect(Node.start())                               #                     /2
# IO.inspect(Node.start())                               #                     /3
IO.inspect(Node.stop())                                  #                     /0
#################################################################################
IO.puts("\nProcess \n")                                  #                      #
# IO.inspect(Process.alive?())                           #                     /1
# IO.inspect(Process.cancel_timer())                     #                     /1
# IO.inspect(Process.cancel_timer())                     #                     /2
# IO.inspect(Process.delete())                           #                     /1
# IO.inspect(Process.demonitor())                        #                     /1
# IO.inspect(Process.demonitor())                        #                     /2
# IO.inspect(Process.exit())                             #                     /2
# IO.inspect(Process.flag())                             #                     /2
# IO.inspect(Process.flag())                             #                     /3
#IO.inspect(Process.get())                               #---------------------/0
# IO.inspect(Process.get())                              #                     /1
# IO.inspect(Process.get())                              #                     /2
#IO.inspect(Process.get_keys())                          #---------------------/0
# IO.inspect(Process.get_keys())                         #                     /1
#IO.inspect(Process.group_leader())                      #---------------------/0
# IO.inspect(Process.group_leader())                     #                     /2
# IO.inspect(Process.hibernate())                        #                     /3
# IO.inspect(Process.info())                             #                     /1
# IO.inspect(Process.info())                             #                     /2
# IO.inspect(Process.link())                             #                     /1
#IO.inspect(Process.list())                              #---------------------/0
# IO.inspect(Process.monitor())                          #                     /1
# IO.inspect(Process.put())                              #                     /2
# IO.inspect(Process.read_timer())                       #                     /1
# IO.inspect(Process.register())                         #                     /2
#IO.inspect(Process.registered())                        #---------------------/0
# IO.inspect(Process.send())                             #                     /3
# IO.inspect(Process.send_after())                       #                     /3
# IO.inspect(Process.send_after())                       #                     /4
# IO.inspect(Process.sleep())                            #                     /1
# IO.inspect(Process.spawn())                            #                     /2
# IO.inspect(Process.spawn())                            #                     /4
# IO.inspect(Process.unlink())                           #                     /1
# IO.inspect(Process.unregister())                       #                     /1
# IO.inspect(Process.whereis())                          #                     /1
#################################################################################
IO.puts("\nRegistry \n")                                 #                      #
# IO.inspect(Registry.Partition.init())                  #                     /1
# IO.inspect(Registry.Partition.key_name())              #                     /2
# IO.inspect(Registry.Partition.pid_name())              #                     /2
# IO.inspect(Registry.Partition.start_link())            #                     /2
# IO.inspect(Registry.Supervisor.start_link())           #                     /5
# IO.inspect(Registry.dispatch())                        #                     /3
# IO.inspect(Registry.dispatch())                        #                     /4
# IO.inspect(Registry.keys())                            #                     /2
# IO.inspect(Registry.lookup())                          #                     /2
# IO.inspect(Registry.match())                           #                     /3
# IO.inspect(Registry.match())                           #                     /4
# IO.inspect(Registry.meta())                            #                     /2
# IO.inspect(Registry.put_meta())                        #                     /3
# IO.inspect(Registry.register())                        #                     /3
# IO.inspect(Registry.start_link())                      #                     /1
# IO.inspect(Registry.start_link())                      #                     /2
# IO.inspect(Registry.start_link())                      #                     /3
# IO.inspect(Registry.unregister())                      #                     /2
# IO.inspect(Registry.unregister_match())                #                     /3
# IO.inspect(Registry.unregister_match())                #                     /4
# IO.inspect(Registry.update_value())                    #                     /3
#################################################################################
IO.puts("\nSupervisor \n")                               #                      #
# Processo que supervisiona outros processos             #                      #
# IO.inspect(Supervisor.Default.init())                  #                     /1
# IO.inspect(Supervisor.Spec.supervise())                #                     /2
# IO.inspect(Supervisor.Spec.supervisor())               #                     /2
# IO.inspect(Supervisor.Spec.supervisor())               #                     /3
# IO.inspect(Supervisor.Spec.worker())                   #                     /2
# IO.inspect(Supervisor.Spec.worker())                   #                     /3
# IO.inspect(Supervisor.child_spec())                    #                     /2
# IO.inspect(Supervisor.count_children())                #                     /1
# IO.inspect(Supervisor.delete_child())                  #                     /2
# IO.inspect(Supervisor.init())                          #                     /2
# IO.inspect(Supervisor.restart_child())                 #                     /2
# IO.inspect(Supervisor.start_child())                   #                     /2
# IO.inspect(Supervisor.start_link())                    #                     /2
# IO.inspect(Supervisor.start_link())                    #                     /3
# IO.inspect(Supervisor.stop())                          #                     /1
# IO.inspect(Supervisor.stop())                          #                     /2
# IO.inspect(Supervisor.stop())                          #                     /3
# IO.inspect(Supervisor.terminate_child())               #                     /2
# IO.inspect(Supervisor.which_children())                #                     /1
#################################################################################
IO.puts("\nTask \n")                                     #                      #
# IO.inspect(Task.Supervised.noreply())                  #                     /2
# IO.inspect(Task.Supervised.reply())                    #                     /4
# IO.inspect(Task.Supervised.spawn_link())               #                     /3
# IO.inspect(Task.Supervised.spawn_link())               #                     /4
# IO.inspect(Task.Supervised.start())                    #                     /2
# IO.inspect(Task.Supervised.start_link())               #                     /2
# IO.inspect(Task.Supervised.start_link())               #                     /4
# IO.inspect(Task.Supervised.stream())                   #                     /6
# IO.inspect(Task.Supervisor.async())                    #                     /2
# IO.inspect(Task.Supervisor.async())                    #                     /3
# IO.inspect(Task.Supervisor.async())                    #                     /4
# IO.inspect(Task.Supervisor.async())                    #                     /5
# IO.inspect(Task.Supervisor.async_nolink())             #                     /2
# IO.inspect(Task.Supervisor.async_nolink())             #                     /3
# IO.inspect(Task.Supervisor.async_nolink())             #                     /4
# IO.inspect(Task.Supervisor.async_nolink())             #                     /5
# IO.inspect(Task.Supervisor.async_stream())             #                     /3
# IO.inspect(Task.Supervisor.async_stream())             #                     /4
# IO.inspect(Task.Supervisor.async_stream())             #                     /5
# IO.inspect(Task.Supervisor.async_stream())             #                     /6
# IO.inspect(Task.Supervisor.async_stream_nolink())      #                     /3
# IO.inspect(Task.Supervisor.async_stream_nolink())      #                     /4
# IO.inspect(Task.Supervisor.async_stream_nolink())      #                     /5
# IO.inspect(Task.Supervisor.async_stream_nolink())      #                     /6
# IO.inspect(Task.Supervisor.children())                 #                     /1
# IO.inspect(Task.Supervisor.start_child())              #                     /2
# IO.inspect(Task.Supervisor.start_child())              #                     /3
# IO.inspect(Task.Supervisor.start_child())              #                     /4
# IO.inspect(Task.Supervisor.start_child())              #                     /5
IO.inspect(Task.Supervisor.start_link())               #                     /0
# IO.inspect(Task.Supervisor.start_link())               #                     /1
# IO.inspect(Task.Supervisor.terminate_child())          #                     /2
IO.inspect(Task.__struct__())                          #                     /0
# IO.inspect(Task.async())                               #                     /1
# IO.inspect(Task.async())                               #                     /3
# IO.inspect(Task.async_stream())                        #                     /2
# IO.inspect(Task.async_stream())                        #                     /3
# IO.inspect(Task.async_stream())                        #                     /4
# IO.inspect(Task.async_stream())                        #                     /5
# IO.inspect(Task.await())                               #                     /1
# IO.inspect(Task.await())                               #                     /2
# IO.inspect(Task.shutdown())                            #                     /1
# IO.inspect(Task.shutdown())                            #                     /2
# IO.inspect(Task.start())                               #                     /1
# IO.inspect(Task.start())                               #                     /3
# IO.inspect(Task.start_link())                          #                     /1
# IO.inspect(Task.start_link())                          #                     /3
# IO.inspect(Task.yield())                               #                     /1
# IO.inspect(Task.yield())                               #                     /2
# IO.inspect(Task.yield_many())                          #                     /1
# IO.inspect(Task.yield_many())                          #                     /2
