Agent.Server.init/1
Agent.              cast/2              cast/4              
get/2               get/3               get/4               
get/5               get_and_update/2    get_and_update/3    
get_and_update/4    get_and_update/5    start/1             
start/2             start/3             start/4             
start_link/1        start_link/2        start_link/3        
start_link/4        stop/1              stop/2              
stop/3              update/2            update/3            
update/4            update/5  

Application.
app_dir/1                 app_dir/2                 delete_env/2              
delete_env/3              ensure_all_started/1      ensure_all_started/2      
ensure_started/1          ensure_started/2          fetch_env!/2              
fetch_env/2               format_error/1            get_all_env/1             
get_application/1         get_env/2                 get_env/3                 
load/1                    loaded_applications/0     put_env/3                 
put_env/4                 spec/1                    spec/2                    
start/1                   start/2                   started_applications/0    
started_applications/1    stop/1                    unload/1 

DynamicSupervisor.
count_children/1     start_child/2        start_link/1         
start_link/2         start_link/3         terminate_child/2    
which_children/1 

GenServer.
abcast/2        abcast/3        call/2          call/3          
cast/2          multi_call/2    multi_call/3    multi_call/4    
reply/2         start/2         start/3         start_link/2    
start_link/3    stop/1          stop/2          stop/3          
whereis/1  

Node.
alive?/0        connect/1       disconnect/1    get_cookie/0    
list/0          list/1          monitor/2       monitor/3       
ping/1          self/0          set_cookie/1    set_cookie/2    
spawn/2         spawn/3         spawn/4         spawn/5         
spawn_link/2    spawn_link/4    start/1         start/2         
start/3         stop/0 

Process.
alive?/1          cancel_timer/1    cancel_timer/2    delete/1          
demonitor/1       demonitor/2       exit/2            flag/2            
flag/3            get/0             get/1             get/2             
get_keys/0        get_keys/1        group_leader/0    group_leader/2    
hibernate/3       info/1            info/2            link/1            
list/0            monitor/1         put/2             read_timer/1      
register/2        registered/0      send/3            send_after/3      
send_after/4      sleep/1           spawn/2           spawn/4           
unlink/1          unregister/1      whereis/1

Registry.
Partition             Supervisor            dispatch/3            
dispatch/4            keys/2                lookup/2              
match/3               match/4               meta/2                
put_meta/3            register/3            start_link/1          
start_link/2          start_link/3          unregister/2          
unregister_match/3    unregister_match/4    update_value/3   

Supervisor.
Default              Spec                 child_spec/2         
count_children/1     delete_child/2       init/2               
restart_child/2      start_child/2        start_link/2         
start_link/3         stop/1               stop/2               
stop/3               terminate_child/2    which_children/1 

Task.
Supervised        Supervisor        __struct__/0      async/1           
async/3           async_stream/2    async_stream/3    async_stream/4    
async_stream/5    await/1           await/2           shutdown/1        
shutdown/2        start/1           start/3           start_link/1      
start_link/3      yield/1           yield/2           yield_many/1      
yield_many/2  
