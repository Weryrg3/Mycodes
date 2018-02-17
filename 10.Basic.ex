###############################################################################
IO.puts("\nBase \n")                                      #                   #
# IO.inspect(Base.decode16!())                            #                  /1
# IO.inspect(Base.decode16!())                            #                  /2
# IO.inspect(Base.decode16())                             #                  /1
# IO.inspect(Base.decode16())                             #                  /2
# IO.inspect(Base.decode32!())                            #                  /1
# IO.inspect(Base.decode32!())                            #                  /2
# IO.inspect(Base.decode32())                             #                  /1
# IO.inspect(Base.decode32())                             #                  /2
# IO.inspect(Base.decode64!())                            #                  /1
# IO.inspect(Base.decode64!())                            #                  /2
# IO.inspect(Base.decode64())                             #                  /1
# IO.inspect(Base.decode64())                             #                  /2
# IO.inspect(Base.encode16())                             #                  /1
# IO.inspect(Base.encode16())                             #                  /2
# IO.inspect(Base.encode32())                             #                  /1
# IO.inspect(Base.encode32())                             #                  /2
# IO.inspect(Base.encode64())                             #                  /1
# IO.inspect(Base.encode64())                             #                  /2
# IO.inspect(Base.hex_decode32!())                        #                  /1
# IO.inspect(Base.hex_decode32!())                        #                  /2
# IO.inspect(Base.hex_decode32())                         #                  /1
# IO.inspect(Base.hex_decode32())                         #                  /2
# IO.inspect(Base.hex_encode32())                         #                  /1
# IO.inspect(Base.hex_encode32())                         #                  /2
# IO.inspect(Base.url_decode64!())                        #                  /1
# IO.inspect(Base.url_decode64!())                        #                  /2
# IO.inspect(Base.url_decode64())                         #                  /1
# IO.inspect(Base.url_decode64())                         #                  /2
# IO.inspect(Base.url_encode64())                         #                  /1
# IO.inspect(Base.url_encode64())                         #                  /2
###############################################################################
IO.puts("\nBitwise \n")                                   #                   #
# IO.inspect(Bitwise.&&&())                               #                  /2
# IO.inspect(Bitwise.<<<())                               #                  /2
# IO.inspect(Bitwise.>>>())                               #                  /2
# IO.inspect(Bitwise.^^^())                               #                  /2
# IO.inspect(Bitwise.band())                              #                  /2
# IO.inspect(Bitwise.bnot())                              #                  /1
# IO.inspect(Bitwise.bor())                               #                  /2
# IO.inspect(Bitwise.bsl())                               #                  /2
# IO.inspect(Bitwise.bsr())                               #                  /2
# IO.inspect(Bitwise.bxor())                              #                  /2
# IO.inspect(Bitwise.|||())                               #                  /2
# IO.inspect(Bitwise.~~~())                               #                  /1
###############################################################################
IO.puts("\nCalendar \n")                                  #                   #
# IO.inspect(Calendar.ISO.date_to_string())               #                  /3
# IO.inspect(Calendar.ISO.datetime_to_string/())          #                  11
# IO.inspect(Calendar.ISO.day_of_week())                  #                  /3
# IO.inspect(Calendar.ISO.days_in_month())                #                  /2
# IO.inspect(Calendar.ISO.leap_year?())                   #                  /1
# IO.inspect(Calendar.ISO.naive_datetime_from_iso_days()) #                  /1
# IO.inspect(Calendar.ISO.naive_datetime_to_iso_days())   #                  /7
# IO.inspect(Calendar.ISO.naive_datetime_to_string())     #                  /7
# IO.inspect(Calendar.ISO.time_from_day_fraction())       #                  /1
# IO.inspect(Calendar.ISO.time_to_day_fraction())         #                  /4
# IO.inspect(Calendar.ISO.time_to_string())               #                  /4
# IO.inspect(Calendar.ISO.time_to_string())               #                  /5
# IO.inspect(Calendar.compatible_calendars?())            #                  /2
# IO.inspect(Calendar.truncate())                         #                  /2
###############################################################################
IO.puts("\nException \n")                                 #                   #
# IO.inspect(Exception.blame())                           #                  /3
# IO.inspect(Exception.blame_mfa())                       #                  /3
# IO.inspect(Exception.exception?())                      #                  /1
# IO.inspect(Exception.format())                          #                  /2
# IO.inspect(Exception.format())                          #                  /3
# IO.inspect(Exception.format_banner())                   #                  /2
# IO.inspect(Exception.format_banner())                   #                  /3
# IO.inspect(Exception.format_exit())                     #                  /1
# IO.inspect(Exception.format_fa())                       #                  /2
# IO.inspect(Exception.format_file_line())                #                  /2
# IO.inspect(Exception.format_file_line())                #                  /3
# IO.inspect(Exception.format_mfa())                      #                  /3
#IO.inspect(Exception.format_stacktrace())                #------------------/0
# IO.inspect(Exception.format_stacktrace())               #                  /1
# IO.inspect(Exception.format_stacktrace_entry())         #                  /1
# IO.inspect(Exception.message())                         #                  /1
# IO.inspect(Exception.normalize())                       #                  /2
# IO.inspect(Exception.normalize())                       #                  /3
###############################################################################
IO.puts("\nNaiveDateTime \n")                             #                   #
# IO.inspect(NaiveDateTime.add())                         #                  /2
# IO.inspect(NaiveDateTime.add())                         #                  /3
# IO.inspect(NaiveDateTime.compare())                     #                  /2
# IO.inspect(NaiveDateTime.convert!())                    #                  /2
# IO.inspect(NaiveDateTime.convert())                     #                  /2
# IO.inspect(NaiveDateTime.diff())                        #                  /2
# IO.inspect(NaiveDateTime.diff())                        #                  /3
# IO.inspect(NaiveDateTime.from_erl!())                   #                  /1
# IO.inspect(NaiveDateTime.from_erl!())                   #                  /2
# IO.inspect(NaiveDateTime.from_erl!())                   #                  /3
# IO.inspect(NaiveDateTime.from_erl())                    #                  /1
# IO.inspect(NaiveDateTime.from_erl())                    #                  /2
# IO.inspect(NaiveDateTime.from_erl())                    #                  /3
# IO.inspect(NaiveDateTime.from_iso8601!())               #                  /1
# IO.inspect(NaiveDateTime.from_iso8601!())               #                  /2
# IO.inspect(NaiveDateTime.from_iso8601())                #                  /1
# IO.inspect(NaiveDateTime.from_iso8601())                #                  /2
# IO.inspect(NaiveDateTime.new())                         #                  /2
# IO.inspect(NaiveDateTime.new())                         #                  /6
# IO.inspect(NaiveDateTime.new())                         #                  /7
# IO.inspect(NaiveDateTime.new())                         #                  /8
# IO.inspect(NaiveDateTime.to_date())                     #                  /1
# IO.inspect(NaiveDateTime.to_erl())                      #                  /1
# IO.inspect(NaiveDateTime.to_iso8601())                  #                  /1
# IO.inspect(NaiveDateTime.to_iso8601())                  #                  /2
# IO.inspect(NaiveDateTime.to_string())                   #                  /1
# IO.inspect(NaiveDateTime.to_time())                     #                  /1
# IO.inspect(NaiveDateTime.truncate())                    #                  /2
IO.inspect(NaiveDateTime.utc_now())                     #                  /0
# IO.inspect(NaiveDateTime.utc_now())                     #                  /1
###############################################################################
IO.puts("\nRecord \n")                                    #                   #
# IO.inspect(Record.Extractor.extract())                  #                  /2
# IO.inspect(Record.Extractor.extract_all())              #                  /1
# IO.inspect(Record.defrecord())                          #                  /2
# IO.inspect(Record.defrecord())                          #                  /3
# IO.inspect(Record.defrecordp())                         #                  /2
# IO.inspect(Record.defrecordp())                         #                  /3
# IO.inspect(Record.extract())                            #                  /2
# IO.inspect(Record.extract_all())                        #                  /1
# IO.inspect(Record.is_record())                          #                  /1
# IO.inspect(Record.is_record())                          #                  /2
###############################################################################
IO.puts("\nTime \n")                                      #                   #
# IO.inspect(Time.add())                                  #                  /2
# IO.inspect(Time.add())                                  #                  /3
# IO.inspect(Time.compare())                              #                  /2
# IO.inspect(Time.convert!())                             #                  /2
# IO.inspect(Time.convert())                              #                  /2
# IO.inspect(Time.diff())                                 #                  /2
# IO.inspect(Time.diff())                                 #                  /3
# IO.inspect(Time.from_erl!())                            #                  /1
# IO.inspect(Time.from_erl!())                            #                  /2
# IO.inspect(Time.from_erl!())                            #                  /3
# IO.inspect(Time.from_erl())                             #                  /1
# IO.inspect(Time.from_erl())                             #                  /2
# IO.inspect(Time.from_erl())                             #                  /3
# IO.inspect(Time.from_iso8601!())                        #                  /1
# IO.inspect(Time.from_iso8601!())                        #                  /2
# IO.inspect(Time.from_iso8601())                         #                  /1
# IO.inspect(Time.from_iso8601())                         #                  /2
# IO.inspect(Time.new())                                  #                  /3
# IO.inspect(Time.new())                                  #                  /4
# IO.inspect(Time.new())                                  #                  /5
# IO.inspect(Time.to_erl())                               #                  /1
# IO.inspect(Time.to_iso8601())                           #                  /1
# IO.inspect(Time.to_iso8601())                           #                  /2
# IO.inspect(Time.to_string())                            #                  /1
# IO.inspect(Time.truncate())                             #                  /2
IO.inspect(Time.utc_now())                              #                  /0
# IO.inspect(Time.utc_now())                              #                  /1
###############################################################################
IO.puts("\nURI \n")                                       #                   #
# IO.inspect(URI.char_reserved?())                        #                  /1
# IO.inspect(URI.char_unescaped?())                       #                  /1
# IO.inspect(URI.char_unreserved?())                      #                  /1
# IO.inspect(URI.decode())                                #                  /1
# IO.inspect(URI.decode_query())                          #                  /1
# IO.inspect(URI.decode_query())                          #                  /2
# IO.inspect(URI.decode_www_form())                       #                  /1
# IO.inspect(URI.default_port())                          #                  /1
# IO.inspect(URI.default_port())                          #                  /2
# IO.inspect(URI.encode())                                #                  /1
# IO.inspect(URI.encode())                                #                  /2
# IO.inspect(URI.encode_query())                          #                  /1
# IO.inspect(URI.encode_www_form())                       #                  /1
# IO.inspect(URI.merge())                                 #                  /2
# IO.inspect(URI.parse())                                 #                  /1
# IO.inspect(URI.query_decoder())                         #                  /1
# IO.inspect(URI.to_string())                             #                  /1
###############################################################################
IO.puts("\nVersion \n")                                   #                   #
# IO.inspect(Version.InvalidRequirementError.exception()) #                  /1
# IO.inspect(Version.InvalidRequirementError.message())   #                  /1
# IO.inspect(Version.InvalidVersionError.exception())     #                  /1
# IO.inspect(Version.InvalidVersionError.message())       #                  /1
# IO.inspect(Version.Parser.lexer())                      #                  /2
# IO.inspect(Version.Parser.parse_requirement())          #                  /1
# IO.inspect(Version.Parser.parse_version())              #                  /1
# IO.inspect(Version.Parser.parse_version())              #                  /2
# IO.inspect(Version.compare())                           #                  /2
# IO.inspect(Version.compile_requirement())               #                  /1
# IO.inspect(Version.match?())                            #                  /2
# IO.inspect(Version.match?())                            #                  /3
# IO.inspect(Version.parse!())                            #                  /1
# IO.inspect(Version.parse())                             #                  /1
# IO.inspect(Version.parse_requirement())                 #                  /1