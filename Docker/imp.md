Cgroups and Namespaces [how they are used by docker]
====================================================

Namespaces : Namespaces isolate system resources so that each container believes it has its own operating system.

Types of namespaces
--------------------

1. PID Namespace : Isolates process IDs.
2. Network Namespace
  Each container gets:
    - its own IP
    - its own routing table
    - its own ports
    - its own network interfaces

3. Mount Namespace : Provides each container with its own filesystem view.
4. UTS Namespace : Allows each container to have its own hostname.
5. IPC Namespace
6. User Namespace

Summary of namespaces
----------------------
| Namespace    | Isolates             | 
--------------------------------------
| PID          | Processes            | 
| NET          | Network              | 
| MNT          | Filesystem mounts    | 
| UTS          | Hostname/domain      | 
| IPC          | Shared memory & IPC  | 
| USER         | User and group IDs   | 
=======================================

```bash```

Cgroups
---------------
Namespaces isolate resources. Cgroups control and limit resource usage.

Without cgroups, one container could consume all CPU or memory, starving other containers and the host.
