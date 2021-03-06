$ ndcli create container 1.0.0.0/8 
INFO - Creating container 1.0.0.0/8 in layer3domain default
$ ndcli create pool apool
$ ndcli modify pool apool add subnet 1.2.3.0/24 gw 1.2.3.1
INFO - Created subnet 1.2.3.0/24 in layer3domain default
WARNING - Creating zone 3.2.1.in-addr.arpa without profile
WARNING - Primary NS for this Domain is now localhost.
$ ndcli create zone a.de
WARNING - Creating zone a.de without profile
WARNING - Primary NS for this Domain is now localhost.
$ ndcli create rr a.a.de. a 1.2.3.4
INFO - Marked IP 1.2.3.4 from layer3domain default as static
INFO - Creating RR a A 1.2.3.4 in zone a.de
INFO - Creating RR 4 PTR a.a.de. in zone 3.2.1.in-addr.arpa

$ ndcli show container 1.0.0.0/8
created:2013-01-10 11:16:02
ip:1.0.0.0/8
layer3domain:default
modified:2013-01-10 11:16:02
modified_by:user
status:Container

$ ndcli show container 2.0.0.0/24
ERROR - Ipblock 2.0.0.0/24 does not exist in layer3domain default

$ ndcli show container 1.2.3.0/24
ERROR - 1.2.3.0/24 from layer3domain default is a Subnet block (expected 'Container')

$ ndcli delete zone a.de --cleanup -q
$ ndcli delete zone 3.2.1.in-addr.arpa
$ ndcli modify pool apool remove subnet 1.2.3.0/24
$ ndcli delete pool apool
$ ndcli delete container 1.0.0.0/8
INFO - Deleting container 1.0.0.0/8 from layer3domain default
