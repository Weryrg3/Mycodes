# Só funciona dentro de projetos Mix
# Mix new "project"     # No lugar de aspas se coloca o nome do projeto sem aspas.
# iex -S mix            # Inicia todos processos em iex
# recompile             # Recompila no iex
#################### Atenção não tentar compilar este arquivo #################################
# Testes feitos em Project Mix: geometry/lib/teste.ex

Mix.compilers                               # [:yecc, :leex, :erlang, :elixir, :xref, :app]   /0    \ Retorna os compiladores padrões. (pode ser usado para add novos compiladores)
Mix.debug                                   #                 /1
Mix.debug?                                  # false           /0    \ Returns true if Mix is in debug mode. (net)
Mix.env                                     # :dev            /0    \ Returns the Mix environment. (net). WARNING not use this function em compilation.
Mix.env                                     #                 /1
Mix.raise("Erroooo")                        # Erroooo         /1    \ Retorna mensagem de erro. (para o terminal) (Mix.Error)
Mix.shell                                   # Mix.Shell.IO    /0    \ Returns the current shell. (net). (cor azul)
Mix.shell                                   #                 /1
########################################################################################################################
Mix.ProjectStack.clear_cache                #                 /0  #        
Mix.ProjectStack.clear_stack                #                 /0  #        
Mix.ProjectStack.configured_applications    #                 /0  #
Mix.ProjectStack.configured_applications    #                 /1
Mix.ProjectStack.peek                       #                 /0  #
Mix.ProjectStack.pop                        #                 /0  #
Mix.ProjectStack.post_config                #                 /1
Mix.ProjectStack.printable_app_name         #                 /0  #
Mix.ProjectStack.push                       #                 /3
Mix.ProjectStack.read_cache                 #                 /1
Mix.ProjectStack.recur                      #                 /1
Mix.ProjectStack.recursing                  #                 /0  #
Mix.ProjectStack.root                       #                 /1
Mix.ProjectStack.start_link                 #                 /1
Mix.ProjectStack.write_cache                #                 /2
########################################################################################################################
Mix.Config.config                           #                 /2
Mix.Config.config                           #                 /3
Mix.Config.import_config                    #                 /1
Mix.Config.merge                            #                 /2
Mix.Config.persist                          #                 /1
Mix.Config.read!                            #                 /1
Mix.Config.read!                            #                 /2
Mix.Config.read_wildcard!                   #                 /1
Mix.Config.read_wildcard!                   #                 /2
Mix.Config.validate!                        #                 /1
########################################################################################################################
Mix.Generator.create_directory              #                 /1
Mix.Generator.create_file                   #                 /2
Mix.Generator.create_file                   #                 /3
Mix.Generator.embed_template                #                 /2
Mix.Generator.embed_text                    #                 /2
########################################################################################################################
Mix.Project.app_path                        # "/home/wesley/1.Wesley/Projects/geometry/_build/dev/lib/geometry"   /0    \ Returns the application path inside the build. (Net)
Mix.Project.app_path                        #                 /1
Mix.Project.apps_paths                      #                 /0  #
Mix.Project.apps_paths                      #                 /1
Mix.Project.build_path                      #                 /0  #
Mix.Project.build_path                      #                 /1
Mix.Project.build_structure                 #                 /0  #
Mix.Project.build_structure                 #                 /1
Mix.Project.build_structure                 #                 /2
Mix.Project.compile                         #                 /1
Mix.Project.compile                         #                 /2
Mix.Project.compile_path                    #                 /0  #
Mix.Project.compile_path                    #                 /1
Mix.Project.config                          #                 /0  #
Mix.Project.config_files                    #                 /0  #
Mix.Project.consolidation_path              #                 /0  #
Mix.Project.consolidation_path              #                 /1
Mix.Project.deps_path                       #                 /0  #
Mix.Project.deps_path                       #                 /1
Mix.Project.deps_paths                      #                 /0  #
Mix.Project.ensure_structure                #                 /0  #
Mix.Project.ensure_structure                #                 /1
Mix.Project.ensure_structure                #                 /2
Mix.Project.get!                            #                 /0  #
Mix.Project.get                             #                 /0  #
Mix.Project.in_project                      #                 /3
Mix.Project.in_project                      #                 /4
Mix.Project.load_paths                      #                 /0  #
Mix.Project.load_paths                      #                 /1
Mix.Project.manifest_path                   #                 /0  #
Mix.Project.manifest_path                   #                 /1
Mix.Project.umbrella?                       #                 /0  #
Mix.Project.umbrella?                       #                 /1
########################################################################################################################
Mix.SCM.append                              #                 /1
Mix.SCM.available                           #                 /0  #
Mix.SCM.prepend                             #                 /1
########################################################################################################################
Mix.Shell.cmd                               #                 /3
Mix.Shell.printable_app_name                #                 /0  #
########################################################################################################################
Mix.Shell.IO.cmd("date")                    # Thu Feb  8 09:39:56 -04 2018  /1  \Executa comandos do terminal. (no iEx).
Mix.Shell.IO.cmd()                          #                               /2
Mix.Shell.IO.error("Error")                 # Error                         /1    \ Retorna mensagem de erro. (cor vermelha). (no stop terminal).
Mix.Shell.IO.info("Mensagem")               # Mensagem                      /1    \ Print uma mensagem.
Mix.Shell.IO.print_app()                    #                               /0  #
Mix.Shell.IO.prompt("Nome: ")               # Nome: "Wesley"                /1    \ Retorna o que o usuário digita. (Entre aspas, o que foi digitado no terminal)
Mix.Shell.IO.yes?("Yes or Not? ")           # Yes or Not? [Yn] "Yes"        /1    \ Retorna true (yes) or false (not)
########################################################################################################################
Mix.Shell.Process.cmd                       #                 /1
Mix.Shell.Process.cmd                       #                 /2
Mix.Shell.Process.error                     #                 /1
Mix.Shell.Process.flush                     #                 /0  #
Mix.Shell.Process.flush                     #                 /1
Mix.Shell.Process.info                      #                 /1
Mix.Shell.Process.print_app                 #                 /0  #
Mix.Shell.Process.prompt                    #                 /1
Mix.Shell.Process.yes?                      #                 /1
########################################################################################################################
Mix.Shell.Quiet.cmd                         #                 /1
Mix.Shell.Quiet.cmd                         #                 /2
Mix.Shell.Quiet.error                       #                 /1
Mix.Shell.Quiet.info                        #                 /1
Mix.Shell.Quiet.print_app                   #                 /0  #
Mix.Shell.Quiet.prompt                      #                 /1
Mix.Shell.Quiet.yes?                        #                 /1
########################################################################################################################
Mix.Task.alias?                             #                 /1    \ @Behaviour
Mix.Task.all_modules                        #                 /0    \ @Behaviour
Mix.Task.clear                              #                 /0    \ @Behaviour
Mix.Task.get!                               #                 /1    \ @Behaviour
Mix.Task.get                                #                 /1    \ @Behaviour
Mix.Task.load_all                           #                 /0    \ @Behaviour
Mix.Task.load_tasks                         #                 /1    \ @Behaviour
Mix.Task.moduledoc                          #                 /1    \ @Behaviour
Mix.Task.preferred_cli_env                  #                 /1    \ @Behaviour
Mix.Task.recursive                          #                 /1    \ @Behaviour
Mix.Task.reenable                           #                 /1    \ @Behaviour
Mix.Task.rerun                              #                 /1    \ @Behaviour
Mix.Task.rerun                              #                 /2    \ @Behaviour
Mix.Task.run                                #                 /1    \ @Behaviour
Mix.Task.run                                #                 /2    \ @Behaviour
Mix.Task.shortdoc                           #                 /1    \ @Behaviour
Mix.Task.task?                              #                 /1    \ @Behaviour
Mix.Task.task_name                          #                 /1    \ @Behaviour