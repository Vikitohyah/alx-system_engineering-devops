24th July 2023, we experienced server outage on all our server infrastructure which resulted in our clients inability to use our services and we sincerely apologize for the financial loss our clients must have incurred during this period.

Issue Summary
We encountered a server outage (downtime) on all of our server infrastructure on July 24th, 2023 (12 pm GMT + 1), which lasted for 37 minutes. Due to their inability to use our services, our clients encountered a http 500 error, which had a 100% negative effect on their business. The primary cause was the failure to thoroughly verify all implemented upgrades before deploying them to live systems.


Timeline
Time (GMT + 1)    Actions
12:00 PM    Upgrades implementation begins
12:45 PM    Server Outage begins
1:00 PM    Pagers alerted on-call team
1:10 PM         On-call team acknowledgement
1:15 PM    Rollback initiation begins
1:20 PM    Successful rollback
1:22 PM    Server restart initiated
1:25 PM    100% of traffic back online

Root Cause
Server upgrades were started on all of our production servers at 9:45am (GMT + 1) without first being released on our test environments and carrying out all essential unit testing. The upgrade that was distributed to the production servers included a requirement for third-party software authentication; however, the new implementation is not supported by the current version that is installed on our servers, which is what caused the outage to occur. By rolling back the servers to their former state and then upgrading the current version on our servers, we were able to swiftly fix issue.

Preventive Measures
Before delivering to a live server, we push any desired modifications first to our test environments.
The performance metrics threshold should be raised to warn on-call engineers of a potential server crash.
