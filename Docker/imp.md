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

# Linux Namespace Summary

Linux namespaces provide isolation for different system resources, allowing processes to have their own independent view of the system.

| **Namespace** | **Isolates** |
|---------------|--------------|
| **PID**       | Process IDs (process hierarchy) |
| **NET**       | Network interfaces, routing tables, firewall rules, ports |
| **MNT**       | Filesystem mount points |
| **UTS**       | Hostname and domain name |
| **IPC**       | System V IPC objects and POSIX message queues/shared memory |
| **USER**      | User IDs (UIDs), Group IDs (GIDs), and privileges |

```bash```

Cgroups
---------------
Namespaces isolate resources. Cgroups control and limit resource usage.

Without cgroups, one container could consume all CPU or memory, starving other containers and the host.
