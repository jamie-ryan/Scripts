[jsr2@msslex jsr2]$ ssh -keygen -t rsa -b 4096 -C "jamie.ryan.14@ucl.ac.uk"
Bad escape character 'ygen'.                                               
[jsr2@msslex jsr2]$ ssh-keygen -t rsa -b 4096 -C "jamie.ryan.14@ucl.ac.uk"
Generating public/private rsa key pair.                                   
Enter file in which to save the key (/home/jsr2/.ssh/id_rsa):             
Enter passphrase (empty for no passphrase):                               
Enter same passphrase again:
Your identification has been saved in /home/jsr2/.ssh/id_rsa.
Your public key has been saved in /home/jsr2/.ssh/id_rsa.pub.
The key fingerprint is:
78:a7:07:1f:00:21:5f:6b:0a:11:43:89:f5:5e:cd:63 jamie.ryan.14@ucl.ac.uk
The keys randomart image is:
+--[ RSA 4096]----+
|   +Boo..        |
|  . .* o +       |
|    . o = E      |
|     o = o .     |
|      + S o      |
|       . = .     |
|        . o      |
|         .       |
|                 |
+-----------------+
[jsr2@msslex jsr2]$


eval ssh-agent -s
SSH_AUTH_SOCK=/tmp/ssh-zHluu28512/agent.28512; export SSH_AUTH_SOCK;
SSH_AGENT_PID=28513; export SSH_AGENT_PID;
echo Agent pid 28513;

