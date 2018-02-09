############################# Inspect ######################################################
IO.puts("Inspect \n")                                      #                               #
IO.inspect([1, 2, 3, 4, 5], limit: 3)                      # "[1, 2, 3, ...]"             /2    \ Exclusive
IO.inspect([1, 2, 3], pretty: true, width: 0)              # "[1,\n 2,\n 3]"              /3    \ Exclusive
IO.inspect("olá" <> <<0>>)                                 # "<<111, 108, 195, 161, 0>>"  /1    \ Exclusive
IO.inspect("olá" <> <<0>>, binaries: :as_strings)          # "\"olá\\0\""                 /2    \ Exclusive
IO.inspect("olá", binaries: :as_binaries)                  # "<<111, 108, 195, 161>>"     /2    \ Exclusive
IO.inspect('bar')                                          # "'bar'"                      /1    \ Exclusive
IO.inspect([0 | 'bar'])                                    # "[0, 98, 97, 114]"           /1    \ Exclusive
IO.inspect(100, base: :octal)                              # "0o144"                      /2    \ Exclusive
IO.inspect(100, base: :hex)                                # "0x64"                       /2    \ Exclusive
# ---------------------------------------------------------#-------------------------------#
IO.inspect(Inspect.Algebra.break)                          # {:doc_break, " ", :strict}   /0
# IO.inspect(Inspect.Algebra.break                         #                              /1
# IO.inspect(Inspect.Algebra.collapse_lines                #                              /1
# IO.inspect(Inspect.Algebra.color                         #                              /3
# IO.inspect(Inspect.Algebra.concat                        #                              /1
# IO.inspect(Inspect.Algebra.concat                        #                              /2
# IO.inspect(Inspect.Algebra.container_doc                 #                              /5
# IO.inspect(Inspect.Algebra.container_doc                 #                              /6
IO.inspect(Inspect.Algebra.empty)                          # :doc_nil                     /0
IO.inspect(Inspect.Algebra.flex_break)                     # {:doc_break, " ", :flex}     /0
# IO.inspect(Inspect.Algebra.flex_break                    #                              /1
# IO.inspect(Inspect.Algebra.flex_glue                     #                              /2
# IO.inspect(Inspect.Algebra.flex_glue                     #                              /3
# IO.inspect(Inspect.Algebra.fold_doc                      #                              /2
# IO.inspect(Inspect.Algebra.force_unfit                   #                              /1
# IO.inspect(Inspect.Algebra.format                        #                              /2
# IO.inspect(Inspect.Algebra.glue                          #                              /2
# IO.inspect(Inspect.Algebra.glue                          #                              /3
# IO.inspect(Inspect.Algebra.group                         #                              /1
# IO.inspect(Inspect.Algebra.group                         #                              /2
IO.inspect(Inspect.Algebra.line)                           # :doc_line                    /0
# IO.inspect(Inspect.Algebra.line                          #                              /2
# IO.inspect(Inspect.Algebra.nest                          #                              /2
# IO.inspect(Inspect.Algebra.nest                          #                              /3
# IO.inspect(Inspect.Algebra.next_break_fits               #                              /1
# IO.inspect(Inspect.Algebra.next_break_fits               #                              /2
# IO.inspect(Inspect.Algebra.space                         #                              /2
# IO.inspect(Inspect.Algebra.string                        #                              /1
# IO.inspect(Inspect.Algebra.to_doc                        #                              /2
# ---------------------------------------------------------#-------------------------------#
# IO.inspect(Inspect.Any.inspect())                        #                              /2
# IO.inspect(Inspect.Atom.inspect())                       #                              /2
# IO.inspect(Inspect.BitString.inspect())                  #                              /2
# IO.inspect(Inspect.Date.inspect())                       #                              /2
# IO.inspect(Inspect.Range.inspect())                      #                              /2
# IO.inspect(Inspect.DateTime.inspect())                   #                              /2
# IO.inspect(Inspect.Error.exception())                    #                              /1
# IO.inspect(Inspect.Error.message())                      #                              /1
# IO.inspect(Inspect.Float.inspect())                      #                              /2
# IO.inspect(Inspect.Function.inspect())                   #                              /2
# IO.inspect(Inspect.HashDict.inspect())                   #                              /2
# IO.inspect(Inspect.HashSet.inspect())                    #                              /2
# IO.inspect(Inspect.Integer.inspect())                    #                              /2
# IO.inspect(Inspect.List.inspect())                       #                              /2
# IO.inspect(Inspect.Map.inspect())                        #                              /2
# IO.inspect(Inspect.Map.inspect())                        #                              /3
# IO.inspect(Inspect.MapSet.inspect())                     #                              /2
# IO.inspect(Inspect.NaiveDateTime.inspect())              #                              /2
# IO.inspect(Inspect.PID.inspect())                        #                              /2
# IO.inspect(Inspect.Port.inspect())                       #                              /2
# IO.inspect(Inspect.Range.inspect())                      #                              /2
# IO.inspect(Inspect.Reference.inspect())                  #                              /2
# IO.inspect(Inspect.Regex.inspect())                      #                              /2
# IO.inspect(Inspect.Stream.inspect())                     #                              /2
# IO.inspect(Inspect.Time.inspect())                       #                              /2
# IO.inspect(Inspect.Tuple.inspect())                      #                              /2
# IO.inspect(Inspect.Version.Requirement.inspect())        #                              /2
# IO.inspect(Inspect.Version.inspect())                    #                              /2
# ############################## IO ########################################################
IO.puts("\nIO \n")                                         #                               #
# IO.inspect(IO.binread())                                 #                              /1
# IO.inspect(IO.binread())                                 #                              /2
# IO.inspect(IO.binstream())                               #                              /2
# IO.inspect(IO.binwrite())                                #                              /1
# IO.inspect(IO.binwrite())                                #                              /2
IO.inspect(IO.chardata_to_string([0x0061, "bc"]))          # "abc"                        /1
# IO.inspect(IO.getn())                                    #                              /1
# IO.inspect(IO.getn())                                    #                              /2
# IO.inspect(IO.getn())                                    #                              /3
# IO.inspect(IO.gets())                                    #                              /1
# IO.inspect(IO.gets())                                    #                              /2
# IO.inspect(IO.inspect())                                 #                              /1
# IO.inspect(IO.inspect())                                 #                              /2
# IO.inspect(IO.inspect())                                 #                              /3
# IO.inspect(IO.iodata_length())                           #                              /1
# IO.inspect(IO.iodata_to_binary())                        #                              /1
# IO.inspect(IO.puts())                                    #                              /1
# IO.inspect(IO.puts())                                    #                              /2
# IO.inspect(IO.read())                                    #                              /1
# IO.inspect(IO.read())                                    #                              /2
# IO.inspect(IO.stream())                                  #                              /2
# IO.inspect(IO.warn())                                    #                              /1
# IO.inspect(IO.warn())                                    #                              /2
# IO.inspect(IO.write())                                   #                              /1
# IO.inspect(IO.write())                                   #                              /2
# ---------------------------------------------------------#-------------------------------#
# IO.StreamError.exception())                              #                              /1
# IO.StreamError.message())                                #                              /1
# ---------------------------------------------------------#-------------------------------#
# IO.ANSI.Docs.default_options())                          #                              /0
# IO.ANSI.Docs.print())                                    #                              /1
# IO.ANSI.Docs.print())                                    #                              /2
# IO.ANSI.Docs.print_heading())                            #                              /1
# IO.ANSI.Docs.print_heading())                            #                              /2
# ---------------------------------------------------------#-------------------------------#
# Sequence.defsequence())                                  #                              /2
# Sequence.defsequence())                                  #                              /3
# ---------------------------------------------------------#-------------------------------#
#IO.inspect(IO.ANSI.black())                               # "\e[30m"                     /0
#IO.inspect(IO.ANSI.black_background())                    # "\e[40m"                     /0
#IO.inspect(IO.ANSI.blink_off())                           # "\e[25m"                     /0
#IO.inspect(IO.ANSI.blink_rapid())                         # "\e[6m"                      /0
#IO.inspect(IO.ANSI.blink_slow())                          # "\e[5m"                      /0
#IO.inspect(IO.ANSI.blue())                                # "\e[34m"                     /0
#IO.inspect(IO.ANSI.blue_background())                     # "\e[44m"                     /0
#IO.inspect(IO.ANSI.bright())                              # "\e[1m"                      /0
#IO.inspect(IO.ANSI.clear())                               # "\e[2J"                      /0
#IO.inspect(IO.ANSI.clear_line())                          # "\e[2K"                      /0
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#+++++++++++++++++++++++++++++++#
#IO.inspect(IO.ANSI.color())                               #                              /1
# IO.inspect(IO.ANSI.color())                              #                              /3
# IO.inspect(IO.ANSI.color_background())                   #                              /1
# IO.inspect(IO.ANSI.color_background())                   #                              /3
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#+++++++++++++++++++++++++++++++#
#IO.inspect(IO.ANSI.conceal())                             # "\e[8m"                      /0
#IO.inspect(IO.ANSI.crossed_out())                         # "\e[9m"                      /0
#IO.inspect(IO.ANSI.cyan())                                # "\e[36m"                     /0
#IO.inspect(IO.ANSI.cyan_background())                     # "\e[46m"                     /0
#IO.inspect(IO.ANSI.default_background())                  # "\e[49m"                     /0
#IO.inspect(IO.ANSI.default_color())                       # "\e[39m"                     /0
#IO.inspect(IO.ANSI.enabled?())                            # true                         /0
#IO.inspect(IO.ANSI.encircled())                           # "\e[52m"                     /0
#IO.inspect(IO.ANSI.faint())                               # "\e[2m"                      /0
#IO.inspect(IO.ANSI.font_1())                              # "\e[11m"                     /0
#IO.inspect(IO.ANSI.font_2())                              # "\e[12m"                     /0
#IO.inspect(IO.ANSI.font_3())                              # "\e[13m"                     /0
#IO.inspect(IO.ANSI.font_4())                              # "\e[14m"                     /0
#IO.inspect(IO.ANSI.font_5())                              # "\e[15m"                     /0
#IO.inspect(IO.ANSI.font_6())                              # "\e[16m"                     /0
#IO.inspect(IO.ANSI.font_7())                              # "\e[17m"                     /0
#IO.inspect(IO.ANSI.font_8())                              # "\e[18m"                     /0
#IO.inspect(IO.ANSI.font_9())                              # "\e[19m"                     /0
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#+++++++++++++++++++++++++++++++#
# IO.inspect(IO.ANSI.format())                             #                              /1
# IO.inspect(IO.ANSI.format())                             #                              /2
# IO.inspect(IO.ANSI.format_fragment())                    #                              /1
# IO.inspect(IO.ANSI.format_fragment())                    #                              /2
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#+++++++++++++++++++++++++++++++#
#IO.inspect(IO.ANSI.framed())                              # "\e[51m"                     /0
#IO.inspect(IO.ANSI.green())                               # "\e[32m"                     /0
#IO.inspect(IO.ANSI.green_background())                    # "\e[42m"                     /0
#IO.inspect(IO.ANSI.home())                                # "\e[H"                       /0
#IO.inspect(IO.ANSI.inverse())                             # "\e[7m"                      /0
#IO.inspect(IO.ANSI.inverse_off())                         # "\e[27m"                     /0
#IO.inspect(IO.ANSI.italic())                              # "\e[3m"                      /0
#IO.inspect(IO.ANSI.light_black())                         # "\e[90m"                     /0
#IO.inspect(IO.ANSI.light_black_background())              # "\e[100m"                    /0
#IO.inspect(IO.ANSI.light_blue())                          # "\e[94m"                     /0
#IO.inspect(IO.ANSI.light_blue_background())               # "\e[104m"                    /0
#IO.inspect(IO.ANSI.light_cyan())                          # "\e[96m"                     /0
#IO.inspect(IO.ANSI.light_cyan_background())               # "\e[106m"                    /0
#IO.inspect(IO.ANSI.light_green())                         # "\e[92m"                     /0
#IO.inspect(IO.ANSI.light_green_background())              # "\e[102m"                    /0
#IO.inspect(IO.ANSI.light_magenta())                       # "\e[95m"                     /0
#IO.inspect(IO.ANSI.light_magenta_background())            # "\e[105m"                    /0
#IO.inspect(IO.ANSI.light_red())                           # "\e[91m"                     /0
#IO.inspect(IO.ANSI.light_red_background())                # "\e[101m"                    /0
#IO.inspect(IO.ANSI.light_white())                         # "\e[97m"                     /0
#IO.inspect(IO.ANSI.light_white_background())              # "\e[107m"                    /0
#IO.inspect(IO.ANSI.light_yellow())                        # "\e[93m"                     /0
#IO.inspect(IO.ANSI.light_yellow_background())             # "\e[103m"                    /0
#IO.inspect(IO.ANSI.magenta())                             # "\e[35m"                     /0
#IO.inspect(IO.ANSI.magenta_background())                  # "\e[45m"                     /0
#IO.inspect(IO.ANSI.no_underline())                        # "\e[24m"                     /0
#IO.inspect(IO.ANSI.normal())                              # "\e[22m"                     /0
#IO.inspect(IO.ANSI.not_framed_encircled())                # "\e[54m"                     /0
#IO.inspect(IO.ANSI.not_italic())                          # "\e[23m"                     /0
#IO.inspect(IO.ANSI.not_overlined())                       # "\e[55m"                     /0
#IO.inspect(IO.ANSI.overlined())                           # "\e[53m"                     /0
#IO.inspect(IO.ANSI.primary_font())                        # "\e[10m"                     /0
#IO.inspect(IO.ANSI.red())                                 # "\e[31m"                     /0
#IO.inspect(IO.ANSI.red_background())                      # "\e[41m"                     /0
#IO.inspect(IO.ANSI.reset())                               # "\e[0m"                      /0
#IO.inspect(IO.ANSI.reverse())                             # "\e[7m"                      /0
#IO.inspect(IO.ANSI.reverse_off())                         # "\e[27m"                     /0
#IO.inspect(IO.ANSI.underline())                           # "\e[4m"                      /0
#IO.inspect(IO.ANSI.white())                               # "\e[37m"                     /0
#IO.inspect(IO.ANSI.white_background())                    # "\e[47m"                     /0
#IO.inspect(IO.ANSI.yellow())                              # "\e[33m"                     /0
#IO.inspect(IO.ANSI.yellow_background())                   # "\e[43m"                     /0