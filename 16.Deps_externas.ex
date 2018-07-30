"Deps só funciona em projetos mix (...)"
########################################################
"             mix phoenix.new project_name             "
"                  mix phoenix.server                  "
""                      Phoenix                       ""
########################################################
# Project Learn                                        #
Mix.Phoenix.attrs                                      #  /1
Mix.Phoenix.base                                       # "Learn"                      /0
Mix.Phoenix.check_module_name_availability!            #  /1
Mix.Phoenix.copy_from                                  #  /5
Mix.Phoenix.inflect                                    #  /1
Mix.Phoenix.modules                                    # [Learn.BD, Learn.Buttons ... /0
Mix.Phoenix.otp_app                                    # :learn                       /0
Mix.Phoenix.params                                     #  /1
Mix.Phoenix.uniques                                    #  /1
########################################################
# Project Learn                                        #
Learn.Repo.aggregate                                   #  /3
Learn.Repo.aggregate                                   #  /4
Learn.Repo.all                                         #  /1
Learn.Repo.all                                         #  /2
Learn.Repo.child_spec                                  #  /1
Learn.Repo.config                                      # [otp_app: :learn, repo: Learn.Repo...  /0
Learn.Repo.delete!                                     #  /1
Learn.Repo.delete!                                     #  /2
Learn.Repo.delete                                      #  /1
Learn.Repo.delete                                      #  /2
Learn.Repo.delete_all                                  #  /1
Learn.Repo.delete_all                                  #  /2
Learn.Repo.get!                                        #  /2
Learn.Repo.get!                                        #  /3
Learn.Repo.get                                         #  /2
Learn.Repo.get                                         #  /3
Learn.Repo.get_by!                                     #  /2
Learn.Repo.get_by!                                     #  /3
Learn.Repo.get_by                                      #  /2
Learn.Repo.get_by                                      #  /3
Learn.Repo.in_transaction?                             # false /0
Learn.Repo.insert!                                     #  /1
Learn.Repo.insert!                                     #  /2
Learn.Repo.insert                                      #  /1
Learn.Repo.insert                                      #  /2
Learn.Repo.insert_all                                  #  /2
Learn.Repo.insert_all                                  #  /3
Learn.Repo.insert_or_update!                           #  /1
Learn.Repo.insert_or_update!                           #  /2
Learn.Repo.insert_or_update                            #  /1
Learn.Repo.insert_or_update                            #  /2
Learn.Repo.load                                        #  /2
Learn.Repo.one!                                        #  /1
Learn.Repo.one!                                        #  /2
Learn.Repo.one                                         #  /1
Learn.Repo.one                                         #  /2
Learn.Repo.preload                                     #  /2
Learn.Repo.preload                                     #  /3
Learn.Repo.query!                                      #  /1
Learn.Repo.query!                                      #  /2
Learn.Repo.query!                                      #  /3
Learn.Repo.query                                       #  /1
Learn.Repo.query                                       #  /2
Learn.Repo.query                                       #  /3
Learn.Repo.rollback                                    #  /1
Learn.Repo.start_link                                  #  /0
Learn.Repo.start_link                                  #  /1
Learn.Repo.stop                                        #  /1
Learn.Repo.stop                                        #  /2
Learn.Repo.stream                                      #  /1
Learn.Repo.stream                                      #  /2
Learn.Repo.to_sql                                      #  /2
Learn.Repo.transaction                                 #  /1
Learn.Repo.transaction                                 #  /2
Learn.Repo.update!                                     #  /1
Learn.Repo.update!                                     #  /2
Learn.Repo.update                                      #  /1
Learn.Repo.update                                      #  /2
Learn.Repo.update_all                                  #  /2
Learn.Repo.update_all                                  #  /3
########################################################
"                   mix ecto.create                    "
"           mix ecto.gen.migration create_thing        "
"                   mix ecto.migrate                   "
""                       Ecto                         ""
########################################################
Ecto.assoc/2                                           #
Ecto.assoc_loaded?/1                                   #
Ecto.build_assoc/2                                     #
Ecto.build_assoc/3                                     #
Ecto.get_meta/2                                        #
Ecto.primary_key!/1                                    #
Ecto.primary_key/1                                     #
Ecto.put_meta/2                                        #
#------------------------------------------------------#
Ecto.Adapter.Migration
Ecto.Adapter.Storage
Ecto.Adapter.Structure
Ecto.Adapter.Transaction
#------------------------------------------------------#
Ecto.Adapters
#------------------------------------------------------#
Ecto.Application
#------------------------------------------------------#
Ecto.Association
#------------------------------------------------------#
Ecto.CastError
#------------------------------------------------------#
Ecto.ChangeError
#------------------------------------------------------#
Ecto.Changeset.add_error/3
Ecto.Changeset.add_error/4
Ecto.Changeset.apply_action/2
Ecto.Changeset.apply_changes/1
Ecto.Changeset.assoc_constraint/2
Ecto.Changeset.assoc_constraint/3
Ecto.Changeset.cast/3
Ecto.Changeset.cast/4
Ecto.Changeset.cast_assoc/2
Ecto.Changeset.cast_assoc/3
Ecto.Changeset.cast_embed/2
Ecto.Changeset.cast_embed/3
Ecto.Changeset.change/1
Ecto.Changeset.change/2
Ecto.Changeset.check_constraint/2
Ecto.Changeset.check_constraint/3
Ecto.Changeset.delete_change/2
Ecto.Changeset.exclusion_constraint/2
Ecto.Changeset.exclusion_constraint/3
Ecto.Changeset.fetch_change/2
Ecto.Changeset.fetch_field/2
Ecto.Changeset.force_change/3
Ecto.Changeset.foreign_key_constraint/2
Ecto.Changeset.foreign_key_constraint/3
Ecto.Changeset.get_change/2
Ecto.Changeset.get_change/3
Ecto.Changeset.get_field/2
Ecto.Changeset.get_field/3
Ecto.Changeset.merge/2
Ecto.Changeset.no_assoc_constraint/2
Ecto.Changeset.no_assoc_constraint/3
Ecto.Changeset.optimistic_lock/2
Ecto.Changeset.optimistic_lock/3
Ecto.Changeset.prepare_changes/2
Ecto.Changeset.put_assoc/3
Ecto.Changeset.put_assoc/4
Ecto.Changeset.put_change/3
Ecto.Changeset.put_embed/3
Ecto.Changeset.put_embed/4
Ecto.Changeset.traverse_errors/2
Ecto.Changeset.unique_constraint/2
Ecto.Changeset.unique_constraint/3
Ecto.Changeset.unsafe_validate_unique/3
Ecto.Changeset.unsafe_validate_unique/4
Ecto.Changeset.update_change/3
Ecto.Changeset.validate_acceptance/2
Ecto.Changeset.validate_acceptance/3
Ecto.Changeset.validate_change/3
Ecto.Changeset.validate_change/4
Ecto.Changeset.validate_confirmation/2
Ecto.Changeset.validate_confirmation/3
Ecto.Changeset.validate_exclusion/3
Ecto.Changeset.validate_exclusion/4
Ecto.Changeset.validate_format/3
Ecto.Changeset.validate_format/4
Ecto.Changeset.validate_inclusion/3
Ecto.Changeset.validate_inclusion/4
Ecto.Changeset.validate_length/3
Ecto.Changeset.validate_number/3
Ecto.Changeset.validate_required/2
Ecto.Changeset.validate_required/3
Ecto.Changeset.validate_subset/3
Ecto.Changeset.validate_subset/4
Ecto.Changeset.Relation
#------------------------------------------------------#
Ecto.ConstraintError
#------------------------------------------------------#
Ecto.DataType
#------------------------------------------------------#
Ecto.Date
#------------------------------------------------------#
Ecto.DateTime
#------------------------------------------------------#
Ecto.Embedded
#------------------------------------------------------#
Ecto.InvalidChangesetError
#------------------------------------------------------#
Ecto.InvalidURLError
#------------------------------------------------------#
Ecto.LogEntry
#------------------------------------------------------#
Ecto.Migration
#------------------------------------------------------#
Ecto.MigrationError
#------------------------------------------------------#
Ecto.Migrator
#------------------------------------------------------#
Ecto.Multi
#------------------------------------------------------#
Ecto.MultiplePrimaryKeyError
#------------------------------------------------------#
Ecto.MultipleResultsError
#------------------------------------------------------#
Ecto.NoPrimaryKeyFieldError
#------------------------------------------------------#
Ecto.NoPrimaryKeyValueError
#------------------------------------------------------#
Ecto.NoResultsError
#------------------------------------------------------#
Ecto.Query
#------------------------------------------------------#
Ecto.QueryError
#------------------------------------------------------#
Ecto.Queryable
#------------------------------------------------------#
Ecto.Registry
#------------------------------------------------------#
Ecto.Repo
#------------------------------------------------------#
Ecto.Schema
#------------------------------------------------------#
Ecto.StaleEntryError
#------------------------------------------------------#
Ecto.SubQuery
#------------------------------------------------------#
Ecto.SubQueryError
#------------------------------------------------------#
Ecto.Time
#------------------------------------------------------#
Ecto.Type
#------------------------------------------------------#
Ecto.UUID
#------------------------------------------------------#
########################################################
""                        Plug                        ""
########################################################
