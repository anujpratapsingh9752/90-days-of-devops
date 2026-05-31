Day 15 - Networking Concepts

1. DNS (Domain Name System)

What is DNS?

- DNS converts a domain name into an IP address.
- Humans can easily recall name like google.com.
- Computers communicate using IP addresses.
- DNS helps connect a domain name to the correct server.

What happens when you type google.com in a browser?

- Browser asks DNS for the IP address of google.com.
- DNS returns the IP address.
- Browser sends a request to that IP address.
- The server responds and the website opens.

DNS Record Types

- A Record → Maps a domain to an IPv4 address.
- AAAA Record → Maps a domain to an IPv6 address.
- CNAME Record → Creates an alias for another domain.
- MX Record → Defines mail servers for emails.
- NS Record → Defines the name servers of a domain.

Command

dig google.com

Observation

- Find the A Record.
- Find the TTL value.

---

2. IP Addressing

What is IPv4?

- IPv4 is a unique address used to identify a device on a network.
- It contains 4 parts separated by dots.
- Example:

192.168.1.10

Public IP

- Accessible from the internet.
- Provided by an ISP.

Example:

8.8.8.8

Private IP

- Used inside private networks.
- Not directly accessible from the internet.

Example:

192.168.1.10

Private IP Ranges

10.0.0.0 - 10.255.255.255

172.16.0.0 - 172.31.255.255

192.168.0.0 - 192.168.255.255

Command

ip addr show

Observation

- Find your private IP address.

---

3. CIDR and Subnetting

What is CIDR?

- CIDR is a way to define network size.
- Example:

192.168.1.0/24

What does /24 mean?

- First 24 bits are used for the network.
- Remaining bits are used for hosts.

Why do we use subnetting?

- To divide a large network into smaller networks.
- To improve network management.
- To improve security.
- To use IP addresses efficiently.

CIDR Table

CIDR| Subnet Mask| Total IPs| Usable Hosts
/24| 255.255.255.0| 256| 254
/16| 255.255.0.0| 65536| 65534
/28| 255.255.255.240| 16| 14

---

4. Ports

What is a Port?

- A port is a communication endpoint.
- It helps identify which service should receive the request.
- Multiple services can run on the same IP using different ports.

Common Ports

Port| Service
22| SSH
53| DNS
80| HTTP
443| HTTPS
3306| MySQL
6379| Redis
27017| MongoDB

Command

ss -tulpn

Observation

- Identify at least 2 listening ports.
- Identify the service using those ports.

Example:

22 -> sshd

53 -> systemd-resolved

---

5. Putting It Together

Scenario 1

You run curl http://myapp.com:8080

- DNS converts myapp.com into an IP address.
- IP identifies the target server.
- Port 8080 identifies the application.
- HTTP is used for communication.

Scenario 2

Your app can't reach a database at 10.0.1.50:3306

Check:

- Is the database service running?
- Is port 3306 open?
- Is the firewall blocking traffic?
- Is the server reachable?
- Is the IP address correct?

---

6. Commands Used Today

dig google.com

ip addr show

ss -tulpn

curl http://google.com

curl https://google.com

---

7. What I Learned

- DNS converts domain names into IP addresses.
- CIDR and subnetting help manage networks efficiently.
- Ports allow multiple services to run on the same server.
