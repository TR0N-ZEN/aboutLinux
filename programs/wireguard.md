# wireguard

The most accurate information you will find at `man wireguard`.

```
When wireguard is already set up

     tunnel-ip-address
             │
             │ matches a
             ▼
     ip-address range
             │
             │  which is associated with an
             ▼
          endpoint
             │
             │  which is a
             ▼
       ip-address and port
```

Create a wgni `ip link add dev wg0 type wireguard`
and assign an ip address and a subnet to it
  `ip address add dev wg0 10.0.0.1/24`.

Create a public and private key
`wg genkey | tee private.key | wg pubkey`.
The output on host behind `x.com` is further considered to be
`content.peer.x.public.key`.

Apply the wg-config with `wg setconf wg0 wg0.wireguard.conf`
assuming the wg-config file content to be
```
[Interface]
PrivateKey = content.private.key
ListenPort = 51820

[Peer]
PublicKey = content.peer.b.public.key
Endpoint = b.com:51820, 192.168.1.2/32:51820
AllowedIPs = 10.0.0.2/32

[Peer]
PublicKey = content.peer.c.public.key
Endpoint = c.com:51820, 192.168.1.3/32:51820
AllowedIPs = 10.0.0.3/32
```

Activate the wgni `ip link set wg0 up`.

When executing `ping 10.0.0.2`, the message is
send via the network interface having the shortest prefix match,
here `wg0` as it is associated with the subnet `10.0.0.0/24`.

For sending, the `AllowedIPs` from the wg-config are used to find
the public key to encrypt the data with
and the endpoint to which to send the encrypted data to.


---


*"WireGuard sends and receives encrypted packets using the network namespace in
which the WireGuard interface was originally created. This means that you can
create the WireGuard interface in your main network namespace, which has access
to the Internet, and then move it into a network namespace belonging to a
Docker container as that container's only interface. This ensures that the only
possible way that container is able to access the network is through a secure
encrypted WireGuard tunnel."*

```
ip netns add containers

ip link add wg0 type wireguard

# move interface `wg0` to namespace `containers`
ip link set wg0 netns containers
```
