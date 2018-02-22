# Unit testing framework for Elixir.
# Testes feitos em Project Mix: geometry/lib/teste.ex
#################### Atenção não tentar compilar este arquivo #################################
# não precisa do mix para funcionar

ExUnit.start()                                  # [#Function<2.80697779/1 in ExUnit.start/1>]   /0    \ Starts ExUnit and automatically runs tests right before the VM terminates. (Net)
ExUnit.configuration()                          # [max cases: 8, *"...."]                       /0    \ Retorna configurações ExUnit. *muitas.
ExUnit.configure()                              #                                               /1
ExUnit.plural_rule()                            #                                               /1
ExUnit.plural_rule()                            #                                               /2
ExUnit.run()                                    #                                               /0
ExUnit.start()                                  #                                               /1
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.Assertions.assert()                      #                                               /1
ExUnit.Assertions.assert()                      #                                               /2
ExUnit.Assertions.assert_in_delta()             #                                               /3
ExUnit.Assertions.assert_in_delta()             #                                               /4
ExUnit.Assertions.assert_raise()                #                                               /2
ExUnit.Assertions.assert_raise()                #                                               /3
ExUnit.Assertions.assert_receive()              #                                               /1
ExUnit.Assertions.assert_receive()              #                                               /2
ExUnit.Assertions.assert_receive()              #                                               /3
ExUnit.Assertions.assert_received()             #                                               /1
ExUnit.Assertions.assert_received()             #                                               /2
ExUnit.Assertions.catch_error()                 #                                               /1
ExUnit.Assertions.catch_exit()                  #                                               /1
ExUnit.Assertions.catch_throw()                 #                                               /1
ExUnit.Assertions.flunk()                       #                                               /0
ExUnit.Assertions.flunk()                       #                                               /1
ExUnit.Assertions.refute()                      #                                               /1
ExUnit.Assertions.refute()                      #                                               /2
ExUnit.Assertions.refute_in_delta()             #                                               /3
ExUnit.Assertions.refute_in_delta()             #                                               /4
ExUnit.Assertions.refute_receive()              #                                               /1
ExUnit.Assertions.refute_receive()              #                                               /2
ExUnit.Assertions.refute_receive()              #                                               /3
ExUnit.Assertions.refute_received()             #                                               /1
ExUnit.Assertions.refute_received()             #                                               /2
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.Callbacks.on_exit()                      #                                               /1
ExUnit.Callbacks.on_exit()                      #                                               /2
ExUnit.Callbacks.setup()                        #                                               /1
ExUnit.Callbacks.setup()                        #                                               /2
ExUnit.Callbacks.setup_all()                    #                                               /1
ExUnit.Callbacks.setup_all()                    #                                               /2
ExUnit.Callbacks.start_supervised!()            #                                               /1
ExUnit.Callbacks.start_supervised!()            #                                               /2
ExUnit.Callbacks.start_supervised()             #                                               /1
ExUnit.Callbacks.start_supervised()             #                                               /2
ExUnit.Callbacks.stop_supervised()              #                                               /1
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.CaptureIO.capture_io()                   #                                               /1
ExUnit.CaptureIO.capture_io()                   #                                               /2
ExUnit.CaptureIO.capture_io()                   #                                               /3
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.CaptureLog.capture_log()                 #                                               /1
ExUnit.CaptureLog.capture_log()                 #                                               /2
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.Case.describe()                          #                                               /2
ExUnit.Case.register_attribute()                #                                               /2
ExUnit.Case.register_attribute()                #                                               /3
ExUnit.Case.register_test()                     #                                               /4
ExUnit.Case.test()                              #                                               /1
ExUnit.Case.test()                              #                                               /2
ExUnit.Case.test()                              #                                               /3
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.CaseTemplate.using()                     #                                               /1
ExUnit.CaseTemplate.using()                     #                                               /2
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.DocTest.doctest()                        #                                               /1
ExUnit.DocTest.doctest()                        #                                               /2
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.Filters.eval()                           #                                               /4
ExUnit.Filters.normalize()                      #                                               /2
ExUnit.Filters.parse()                          #                                               /1
ExUnit.Filters.parse_path()                     #                                               /1
#+++++++++++++++++++++++++++++++++++++++++++++++#++++++++++++++++++++++++++++++++++++++++++++++++#
ExUnit.Formatter.format_assertion_error()       #                                               /6
ExUnit.Formatter.format_filters()               #                                               /2
ExUnit.Formatter.format_test_all_failure()      #                                               /5
ExUnit.Formatter.format_test_failure()          #                                               /5
ExUnit.Formatter.format_time()                  #                                               /2

