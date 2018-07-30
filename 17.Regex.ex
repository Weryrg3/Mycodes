# Sigils
~r/foo/ #  A simple regular expression that matches foo anywhere in the string
~r/foo/iu # A regular expression with case insensitive and Unicode options
~r/(?<foo>.)(?<bar>.)/ == ~r/(?<foo>.)(?<bar>.)/
~r/(?<foo>.)(?<bar>.)/.source == ~r/(?<foo>.)(?<bar>.)/.source

~r/hello/
~r|hello|
~r"hello"
~r'hello'
~r(hello)
~r[hello]
~r{hello}
~r<hello>

~s(this is a string with "double" quotes, not 'single' ones)
# "this is a string with \"double\" quotes, not 'single' ones"
~c(this is a char list containing 'single quotes')
# 'this is a char list containing \'single quotes\''
~w(foo bar bat)   # ["foo", "bar", "bat"]
~w(foo bar bat)a  # [:foo, :bar, :bat]
~s(String with escape codes \x26 #{"inter" <> "polation"})
# "String with escape codes & interpolation"
~S(String without escape codes \x26 without #{interpolation})
# "String without escape codes \\x26 without \#{interpolation}"

# -------------------------------------------
#                  Modifiers                #
# -------------------------------------------

# unicode (u) -> \p \w \W \s
# caseless (i) = case insensitivity
  "HELLO" =~ ~r/hello/i # true
# dotall (s) = dot to match newlines
  # newlines -> (*CR) or (*LF) or (*CRLF) or (*ANY)
# multiline (m)
# extended (x)
# firstline (f)
# ungreedy (U)

# -------------------------------------------
#                  Captures                 #
# -------------------------------------------

# :all
# :first
# :all_but_first
# :nome
# :all_names
# list(binary)

# -------------------------------------------
#                   Sigils                  #
# -------------------------------------------

sigil_C                   #   /2
sigil_D                   #   /2
sigil_N                   #   /2
sigil_R                   #   /2
sigil_S                   #   /2
sigil_T                   #   /2
sigil_W                   #   /2
sigil_c                   #   /2
sigil_r(<<"foo">>, 'i')   # ~r/foo/i  /2
sigil_s                   #   /2
sigil_w                   #   /2

# -------------------------------------------
#                Module Regex               #
# -------------------------------------------

Regex.CompileError.exception/1
Regex.CompileError.message/1

Regex.compile!               #                    /1
Regex.compile!               #                    /2
Regex.compile("foo")         # {:ok, ~r/foo/}     /1
Regex.compile                #                    /2
Regex.escape(".")            # "\\."              /1
Regex.match?                 #                    /2
Regex.named_captures(~r/c(?<foo>d)/, "abcd")  # %{"foo" => "d"}   /2
Regex.named_captures         #                    /3
Regex.names(~r/(?<foo>bar)/)  # ["foo"]                   /1
Regex.opts(~r(foo)m)         # "m"                    /1
Regex.re_pattern(~r/foo/)    # {:re_pattern, ..., <...>}  /1 ...-> retorno grande
Regex.recompile!             #                    /1
Regex.recompile              #                    /1
Regex.regex?(~r/foo/)        # true               /1
Regex.replace(~r/b/, "abc", "*")  # "a*c"                    /3
Regex.replace(~r/a/, "abcadc", "A", global: false)  # "Abcadc"                    /4
Regex.run(~r/c(d)/, "abcd")   # ["cd", "d"]                   /2
Regex.run(~r/c(d)/, "abcd", return: :index)                    #  [{2, 2}, {3, 1}]  /3
Regex.scan(~r/c(d|e)/, "abcd abce")                   # [["cd", "d"], ["ce", "e"]]  /2
Regex.scan(~r/=+/, "=ü†ƒ8===", return: :index)                   # [[{0, 1}], [{9, 3}]]                   /3
Regex.source                 #                    /1
Regex.split                  #                    /2
Regex.split                  #                    /3
Regex.version                # "8.40 2017-01-11"  /0


Regex.compile("*foo")
# {:error, {'nothing to repeat', 0}}
Regex.escape("\\what if")
# "\\\\what\\ if"
Regex.named_captures(~r/a(?<foo>b)c(?<bar>d)/, "abcd")
# %{"bar" => "d", "foo" => "b"}
Regex.named_captures(~r/a(?<foo>b)c(?<bar>d)/, "efgh")
# nil
Regex.regex?(0)
# false
Regex.replace(~r/d/, "abc", "d")
# "abc"
Regex.replace(~r/b/, "abc", "d")
"adc"
Regex.replace(~r/b/, "abc", "[\\0]")
"a[b]c"
Regex.replace(~r/a(b|d)c/, "abcadc", "[\\1]")
# "[b][d]"
Regex.replace(~r/\.(\d)$/, "500.5", ".\\g{1}0")
# "500.50"
Regex.replace(~r/a(b|d)c/, "abcadc", fn _, x -> "[#{x}]" end)
# "[b][d]"
Regex.replace(~r/a/, "abcadc", "A", global: false)
# "Abcadc"
