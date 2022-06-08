The kernel organises computer resources for processes.  
Processes are grouped in cgroups short for control groups.  

A (resource) controller (a.k.a. subsystem) regulates the assosiaction of a specific resource and a specific cgroup, I guess.  
System processes are called tasks in  cgroup terminology.  

Already defined cgroups are located at `/sys/fs/cgroup/`


Part of the most important subsystems/sontrollers are:
  + blkio — this subsystem sets limits on input/output access to and from block devices such as physical drives (disk, solid state, or USB).
  + cpu — this subsystem uses the scheduler to provide cgroup tasks access to the CPU.
  + cpuacct — this subsystem generates automatic reports on CPU resources used by tasks in a cgroup.
  + cpuset — this subsystem assigns individual CPUs (on a multicore system) and memory nodes to tasks in a cgroup.
  + devices — this subsystem allows or denies access to devices by tasks in a cgroup.
  + freezer — this subsystem suspends or resumes tasks in a cgroup.
  + memory — this subsystem sets limits on memory use by tasks in a cgroup and generates automatic reports on memory resources used by those tasks.
  + net_cls — this subsystem tags network packets with a class identifier (classid) that allows the Linux traffic controller (tc) to identify packets originating from a particular cgroup task.
  + net_prio — this subsystem provides a way to dynamically set the priority of network traffic per network interface.
  + ns — the namespace subsystem.
  + perf_event — this subsystem identifies cgroup membership of tasks and can be used for performance analysis. 

 
`mkdir -p /my_cgroups/{memory,cpusets,cpu}` creates a folder a folder named `my_cgroups` for the controllers  `memory`, `cpusets`, `cpu`.  

Next, mount the cgroups into these folders:
```bash
mount -t cgroup -o memory none /my_cgroups/memory
mount -t cgroup -o cpu,cpuacct none /my_cgroups/cpu
mount -t cgroup -o cpuset none /my_cgroups/cpusets
```

To create your own cgroups, simply create a new directory under the controller you want to utilize.  
So let's create a couple of cgroups under the `cpu` controller:  
`mkdir -p /my_cgroups/cpu/{user1,user2,user3}` 
Notice that the directories are automatically populated by the controller:  
```bash
ls -l /my_cgroup/cpu/user1/

-rw-r--r--. 1 root root 0 Sep  5 10:26 cgroup.clone_children
-rw-r--r--. 1 root root 0 Sep  5 10:26 cgroup.procs
-r--r--r--. 1 root root 0 Sep  5 10:26 cpuacct.stat
-rw-r--r--. 1 root root 0 Sep  5 10:26 cpuacct.usage
-r--r--r--. 1 root root 0 Sep  5 10:26 cpuacct.usage_all
-r--r--r--. 1 root root 0 Sep  5 10:26 cpuacct.usage_percpu
-r--r--r--. 1 root root 0 Sep  5 10:26 cpuacct.usage_percpu_sys
-r--r--r--. 1 root root 0 Sep  5 10:26 cpuacct.usage_percpu_user
-r--r--r--. 1 root root 0 Sep  5 10:26 cpuacct.usage_sys
-r--r--r--. 1 root root 0 Sep  5 10:26 cpuacct.usage_user
-rw-r--r--. 1 root root 0 Sep  5 10:26 cpu.cfs_period_us
-rw-r--r--. 1 root root 0 Sep  5 10:26 cpu.cfs_quota_us
-rw-r--r--. 1 root root 0 Sep  5 10:26 cpu.rt_period_us
-rw-r--r--. 1 root root 0 Sep  5 10:26 cpu.rt_runtime_us
-rw-r--r--. 1 root root 0 Sep  5 10:20 cpu.shares
-r--r--r--. 1 root root 0 Sep  5 10:26 cpu.stat
-rw-r--r--. 1 root root 0 Sep  5 10:26 notify_on_release
-rw-r--r--. 1 root root 0 Sep  5 10:23 tasks
```
In this case, I am dealing with the file `cpu.shares`, which is found in a path prefixed with `/mygroups/cpu/`.  

---

resources:  
+ https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/sec-relationships_between_subsystems_hierarchies_control_groups_and_tasks
