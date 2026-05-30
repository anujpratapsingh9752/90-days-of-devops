Day 14 - Networking Fundamentals & Hands-on Checks

1. Networking

- Networking ka matlab hai do ya zyada devices ka aapas mein communicate karna.
- Example: Laptop aur Google Server ke beech communication.

2. OSI Model

Layer 7 - Application
- User isi layer ke saath interact karta hai.
- Examples: HTTP, HTTPS, DNS, SSH

Layer 6 - Presentation
- Data ko encrypt aur decrypt karti hai.
- Example: SSL/TLS

Layer 5 - Session
- Connection establish aur maintain karti hai.
- Example: SSH Session

Layer 4 - Transport
- Data delivery manage karti hai.
- Protocols: TCP, UDP

TCP
- Reliable communication.
- Packet loss ko handle karta hai.

UDP
- Fast communication.
- Reliability kam hoti hai.

Layer 3 - Network
- IP Addressing ka kaam.
- Example: IPv4, IPv6

Layer 2 - Data Link
- MAC Address ka kaam.
- Device-to-device communication.

Layer 1 - Physical
- Physical hardware.
- Example: Cable, WiFi Signal, Switch Port

3. TCP/IP Model

Application Layer
- HTTP
- HTTPS
- DNS
- SSH

Transport Layer
- TCP
- UDP

Internet Layer
- IP Address

Link Layer
- Ethernet
- WiFi
- MAC Address

4. OSI vs TCP/IP

OSI Layer 7,6,5 → TCP/IP Application Layer

OSI Layer 4 → TCP/IP Transport Layer

OSI Layer 3 → TCP/IP Internet Layer

OSI Layer 2,1 → TCP/IP Link Layer

5. Protocols and Layers

HTTP
- Application Layer

HTTPS
- Application Layer
- Encrypted HTTP

DNS
- Application Layer
- Domain ko IP mein convert karta hai

TCP
- Transport Layer

UDP
- Transport Layer

IP
- Internet Layer

6. Real Example

curl https://example.com

Flow:

Application Layer (HTTPS)
↓
Transport Layer (TCP)
↓
Internet Layer (IP)
↓
Link Layer (Ethernet/WiFi)

7. Commands Used

Check IP Address

hostname -I

Alternative

ip addr show

Purpose:
- System ka IP address dekhne ke liye.

Ping Test

ping google.com

Purpose:
- Host reachable hai ya nahi check karne ke liye.

Traceroute

traceroute google.com

Purpose:
- Source se destination tak ka path dekhne ke liye.

Listening Ports

ss -tulpn

Purpose:
- Kaunsi services kis port par listen kar rahi hain.

DNS Resolution

nslookup google.com

or

dig google.com

Purpose:
- Domain kis IP par resolve ho raha hai dekhne ke liye.

HTTP Check

curl -I https://google.com

Purpose:
- HTTP response status check karne ke liye.

Connection Snapshot

netstat -an | head

Purpose:
- Active network connections dekhne ke liye.

Port Testing

nc -zv localhost <port>

Purpose:
- Port reachable hai ya nahi check karne ke liye.

8. Common HTTP Status Codes

200 - OK

301 - Redirect

403 - Forbidden

404 - Not Found

500 - Internal Server Error

9. Reflection

Which command gives the fastest signal when something is broken?

- ping command

If DNS fails, what would you inspect next?

- DNS Resolution
- Application Layer

If HTTP 500 appears, what would you inspect next?

- Application Layer
- Web Server Logs

Two follow-up checks in a real incident

- dig or nslookup
- ss -tulpn
