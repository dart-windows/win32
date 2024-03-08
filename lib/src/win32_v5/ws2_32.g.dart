// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.g.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

final _ws2_32 = DynamicLibrary.open('ws2_32.dll');

/// Permits an incoming connection attempt on a socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-accept>.
///
/// {@category winsock}
int accept(int s, Pointer<SOCKADDR>? addr, Pointer<Int32>? addrlen) =>
    _accept(s, addr ?? nullptr, addrlen ?? nullptr);

final _accept = _ws2_32.lookupFunction<
    SOCKET Function(SOCKET s, Pointer<SOCKADDR> addr, Pointer<Int32> addrlen),
    int Function(
        int s, Pointer<SOCKADDR> addr, Pointer<Int32> addrlen)>('accept');

/// Associates a local address with a socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-bind>.
///
/// {@category winsock}
int bind(int s, Pointer<SOCKADDR> name, int namelen) => _bind(s, name, namelen);

final _bind = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Pointer<SOCKADDR> name, Int32 namelen),
    int Function(int s, Pointer<SOCKADDR> name, int namelen)>('bind');

/// Closes an existing socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-closesocket>.
///
/// {@category winsock}
int closesocket(int s) => _closesocket(s);

final _closesocket =
    _ws2_32.lookupFunction<Int32 Function(SOCKET s), int Function(int s)>(
        'closesocket');

/// Establishes a connection to a specified socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-connect>.
///
/// {@category winsock}
int connect(int s, Pointer<SOCKADDR> name, int namelen) =>
    _connect(s, name, namelen);

final _connect = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Pointer<SOCKADDR> name, Int32 namelen),
    int Function(int s, Pointer<SOCKADDR> name, int namelen)>('connect');

/// Provides protocol-independent translation from a Unicode host name to an
/// address.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ws2tcpip/nf-ws2tcpip-getaddrinfow>.
///
/// {@category winsock}
int GetAddrInfo(Pointer<Utf16>? pNodeName, Pointer<Utf16>? pServiceName,
        Pointer<ADDRINFO>? pHints, Pointer<Pointer<ADDRINFO>> ppResult) =>
    _GetAddrInfo(pNodeName ?? nullptr, pServiceName ?? nullptr,
        pHints ?? nullptr, ppResult);

final _GetAddrInfo = _ws2_32.lookupFunction<
    Int32 Function(Pointer<Utf16> pNodeName, Pointer<Utf16> pServiceName,
        Pointer<ADDRINFO> pHints, Pointer<Pointer<ADDRINFO>> ppResult),
    int Function(
        Pointer<Utf16> pNodeName,
        Pointer<Utf16> pServiceName,
        Pointer<ADDRINFO> pHints,
        Pointer<Pointer<ADDRINFO>> ppResult)>('GetAddrInfoW');

/// Retrieves the host information corresponding to a network address.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wsipv6ok/nf-wsipv6ok-gethostbyaddr>.
///
/// {@category winsock}
Pointer<HOSTENT> gethostbyaddr(Pointer<Utf8> addr, int len, int type) =>
    _gethostbyaddr(addr, len, type);

final _gethostbyaddr = _ws2_32.lookupFunction<
    Pointer<HOSTENT> Function(Pointer<Utf8> addr, Int32 len, Int32 type),
    Pointer<HOSTENT> Function(
        Pointer<Utf8> addr, int len, int type)>('gethostbyaddr');

/// Retrieves host information corresponding to a host name from a host
/// database.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wsipv6ok/nf-wsipv6ok-gethostbyname>.
///
/// {@category winsock}
Pointer<HOSTENT> gethostbyname(Pointer<Utf8> name) => _gethostbyname(name);

final _gethostbyname = _ws2_32.lookupFunction<
    Pointer<HOSTENT> Function(Pointer<Utf8> name),
    Pointer<HOSTENT> Function(Pointer<Utf8> name)>('gethostbyname');

/// Retrieves the standard host name for the local computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-gethostname>.
///
/// {@category winsock}
int gethostname(Pointer<Utf8> name, int namelen) => _gethostname(name, namelen);

final _gethostname = _ws2_32.lookupFunction<
    Int32 Function(Pointer<Utf8> name, Int32 namelen),
    int Function(Pointer<Utf8> name, int namelen)>('gethostname');

/// Provides protocol-independent name resolution from an address to an ANSI
/// host name and from a port number to the ANSI service name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ws2tcpip/nf-ws2tcpip-getnameinfo>.
///
/// {@category winsock}
int getnameinfo(
        Pointer<SOCKADDR> pSockaddr,
        int sockaddrLength,
        Pointer<Utf8>? pNodeBuffer,
        int nodeBufferSize,
        Pointer<Utf8>? pServiceBuffer,
        int serviceBufferSize,
        int flags) =>
    _getnameinfo(pSockaddr, sockaddrLength, pNodeBuffer ?? nullptr,
        nodeBufferSize, pServiceBuffer ?? nullptr, serviceBufferSize, flags);

final _getnameinfo = _ws2_32.lookupFunction<
    Int32 Function(
        Pointer<SOCKADDR> pSockaddr,
        socklen_t sockaddrLength,
        Pointer<Utf8> pNodeBuffer,
        Uint32 nodeBufferSize,
        Pointer<Utf8> pServiceBuffer,
        Uint32 serviceBufferSize,
        Int32 flags),
    int Function(
        Pointer<SOCKADDR> pSockaddr,
        int sockaddrLength,
        Pointer<Utf8> pNodeBuffer,
        int nodeBufferSize,
        Pointer<Utf8> pServiceBuffer,
        int serviceBufferSize,
        int flags)>('getnameinfo');

/// Retrieves the address of the peer to which a socket is connected.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getpeername>.
///
/// {@category winsock}
int getpeername(int s, Pointer<SOCKADDR> name, Pointer<Int32> namelen) =>
    _getpeername(s, name, namelen);

final _getpeername = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Pointer<SOCKADDR> name, Pointer<Int32> namelen),
    int Function(
        int s, Pointer<SOCKADDR> name, Pointer<Int32> namelen)>('getpeername');

/// Retrieves the protocol information corresponding to a protocol name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getprotobyname>.
///
/// {@category winsock}
Pointer<PROTOENT> getprotobyname(Pointer<Utf8> name) => _getprotobyname(name);

final _getprotobyname = _ws2_32.lookupFunction<
    Pointer<PROTOENT> Function(Pointer<Utf8> name),
    Pointer<PROTOENT> Function(Pointer<Utf8> name)>('getprotobyname');

/// Retrieves protocol information corresponding to a protocol number.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getprotobynumber>.
///
/// {@category winsock}
Pointer<PROTOENT> getprotobynumber(int number) => _getprotobynumber(number);

final _getprotobynumber = _ws2_32.lookupFunction<
    Pointer<PROTOENT> Function(Int32 number),
    Pointer<PROTOENT> Function(int number)>('getprotobynumber');

/// Retrieves service information corresponding to a service name and protocol.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getservbyname>.
///
/// {@category winsock}
Pointer<SERVENT> getservbyname(Pointer<Utf8> name, Pointer<Utf8>? proto) =>
    _getservbyname(name, proto ?? nullptr);

final _getservbyname = _ws2_32.lookupFunction<
    Pointer<SERVENT> Function(Pointer<Utf8> name, Pointer<Utf8> proto),
    Pointer<SERVENT> Function(
        Pointer<Utf8> name, Pointer<Utf8> proto)>('getservbyname');

/// Retrieves service information corresponding to a port and protocol.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getservbyport>.
///
/// {@category winsock}
Pointer<SERVENT> getservbyport(int port, Pointer<Utf8>? proto) =>
    _getservbyport(port, proto ?? nullptr);

final _getservbyport = _ws2_32.lookupFunction<
    Pointer<SERVENT> Function(Int32 port, Pointer<Utf8> proto),
    Pointer<SERVENT> Function(int port, Pointer<Utf8> proto)>('getservbyport');

/// Retrieves the local name for a socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getsockname>.
///
/// {@category winsock}
int getsockname(int s, Pointer<SOCKADDR> name, Pointer<Int32> namelen) =>
    _getsockname(s, name, namelen);

final _getsockname = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Pointer<SOCKADDR> name, Pointer<Int32> namelen),
    int Function(
        int s, Pointer<SOCKADDR> name, Pointer<Int32> namelen)>('getsockname');

/// Retrieves a socket option.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getsockopt>.
///
/// {@category winsock}
int getsockopt(int s, int level, int optname, Pointer<Utf8> optval,
        Pointer<Int32> optlen) =>
    _getsockopt(s, level, optname, optval, optlen);

final _getsockopt = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Int32 level, Int32 optname, Pointer<Utf8> optval,
        Pointer<Int32> optlen),
    int Function(int s, int level, int optname, Pointer<Utf8> optval,
        Pointer<Int32> optlen)>('getsockopt');

/// Converts a u_long from host to TCP/IP network byte order (which is
/// big-endian).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-htonl>.
///
/// {@category winsock}
int htonl(int hostlong) => _htonl(hostlong);

final _htonl = _ws2_32.lookupFunction<Uint32 Function(Uint32 hostlong),
    int Function(int hostlong)>('htonl');

/// Converts a u_short from host to TCP/IP network byte order (which is
/// big-endian).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-htons>.
///
/// {@category winsock}
int htons(int hostshort) => _htons(hostshort);

final _htons = _ws2_32.lookupFunction<Uint16 Function(Uint16 hostshort),
    int Function(int hostshort)>('htons');

/// Converts a string containing an IPv4 dotted-decimal address into a proper
/// address for the IN_ADDR structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wsipv6ok/nf-wsipv6ok-inet_addr>.
///
/// {@category winsock}
int inet_addr(Pointer<Utf8> cp) => _inet_addr(cp);

final _inet_addr = _ws2_32.lookupFunction<Uint32 Function(Pointer<Utf8> cp),
    int Function(Pointer<Utf8> cp)>('inet_addr');

/// Converts an (Ipv4) Internet network address into an ASCII string in Internet
/// standard dotted-decimal format.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wsipv6ok/nf-wsipv6ok-inet_ntoa>.
///
/// {@category winsock}
Pointer<Utf8> inet_ntoa(IN_ADDR in_) => _inet_ntoa(in_);

final _inet_ntoa = _ws2_32.lookupFunction<Pointer<Utf8> Function(IN_ADDR in_),
    Pointer<Utf8> Function(IN_ADDR in_)>('inet_ntoa');

/// Converts an IPv4 or IPv6 Internet network address into a string in Internet
/// standard format.
///
/// The ANSI version of this function is inet_ntop. (InetNtopA or inet_ntop).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ws2tcpip/nf-ws2tcpip-inet_ntop>.
///
/// {@category winsock}
Pointer<Utf8> inet_ntop(int family, Pointer pAddr, Pointer<Utf8> pStringBuf,
        int stringBufSize) =>
    _inet_ntop(family, pAddr, pStringBuf, stringBufSize);

final _inet_ntop = _ws2_32.lookupFunction<
    Pointer<Utf8> Function(Int32 family, Pointer pAddr,
        Pointer<Utf8> pStringBuf, IntPtr stringBufSize),
    Pointer<Utf8> Function(int family, Pointer pAddr, Pointer<Utf8> pStringBuf,
        int stringBufSize)>('inet_ntop');

/// Controls the I/O mode of a socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ioctlsocket>.
///
/// {@category winsock}
int ioctlsocket(int s, int cmd, Pointer<Uint32> argp) =>
    _ioctlsocket(s, cmd, argp);

final _ioctlsocket = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Int32 cmd, Pointer<Uint32> argp),
    int Function(int s, int cmd, Pointer<Uint32> argp)>('ioctlsocket');

/// Places a socket in a state in which it is listening for an incoming
/// connection.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-listen>.
///
/// {@category winsock}
int listen(int s, int backlog) => _listen(s, backlog);

final _listen = _ws2_32.lookupFunction<Int32 Function(SOCKET s, Int32 backlog),
    int Function(int s, int backlog)>('listen');

/// Converts a u_long from TCP/IP network order to host byte order, which is
/// little-endian on Intel processors.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ntohl>.
///
/// {@category winsock}
int ntohl(int netlong) => _ntohl(netlong);

final _ntohl = _ws2_32.lookupFunction<Uint32 Function(Uint32 netlong),
    int Function(int netlong)>('ntohl');

/// Converts a u_short from TCP/IP network byte order to host byte order, which
/// is little-endian on Intel processors.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ntohs>.
///
/// {@category winsock}
int ntohs(int netshort) => _ntohs(netshort);

final _ntohs = _ws2_32.lookupFunction<Uint16 Function(Uint16 netshort),
    int Function(int netshort)>('ntohs');

/// Receives data from a connected socket or a bound connectionless socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-recv>.
///
/// {@category winsock}
int recv(int s, Pointer<Utf8> buf, int len, int flags) =>
    _recv(s, buf, len, flags);

final _recv = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Pointer<Utf8> buf, Int32 len, Int32 flags),
    int Function(int s, Pointer<Utf8> buf, int len, int flags)>('recv');

/// Receives a datagram and stores the source address.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-recvfrom>.
///
/// {@category winsock}
int recvfrom(int s, Pointer<Utf8> buf, int len, int flags,
        Pointer<SOCKADDR>? from, Pointer<Int32>? fromlen) =>
    _recvfrom(s, buf, len, flags, from ?? nullptr, fromlen ?? nullptr);

final _recvfrom = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Pointer<Utf8> buf, Int32 len, Int32 flags,
        Pointer<SOCKADDR> from, Pointer<Int32> fromlen),
    int Function(int s, Pointer<Utf8> buf, int len, int flags,
        Pointer<SOCKADDR> from, Pointer<Int32> fromlen)>('recvfrom');

/// Determines the status of one or more sockets, waiting if necessary, to
/// perform synchronous I/O.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-select>.
///
/// {@category winsock}
int select(int nfds, Pointer<FD_SET>? readfds, Pointer<FD_SET>? writefds,
        Pointer<FD_SET>? exceptfds, Pointer<TIMEVAL>? timeout) =>
    _select(nfds, readfds ?? nullptr, writefds ?? nullptr, exceptfds ?? nullptr,
        timeout ?? nullptr);

final _select = _ws2_32.lookupFunction<
    Int32 Function(
        Int32 nfds,
        Pointer<FD_SET> readfds,
        Pointer<FD_SET> writefds,
        Pointer<FD_SET> exceptfds,
        Pointer<TIMEVAL> timeout),
    int Function(int nfds, Pointer<FD_SET> readfds, Pointer<FD_SET> writefds,
        Pointer<FD_SET> exceptfds, Pointer<TIMEVAL> timeout)>('select');

/// Sends data on a connected socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-send>.
///
/// {@category winsock}
int send(int s, Pointer<Utf8> buf, int len, int flags) =>
    _send(s, buf, len, flags);

final _send = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Pointer<Utf8> buf, Int32 len, Int32 flags),
    int Function(int s, Pointer<Utf8> buf, int len, int flags)>('send');

/// Sends data to a specific destination.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-sendto>.
///
/// {@category winsock}
int sendto(int s, Pointer<Utf8> buf, int len, int flags, Pointer<SOCKADDR> to,
        int tolen) =>
    _sendto(s, buf, len, flags, to, tolen);

final _sendto = _ws2_32.lookupFunction<
    Int32 Function(SOCKET s, Pointer<Utf8> buf, Int32 len, Int32 flags,
        Pointer<SOCKADDR> to, Int32 tolen),
    int Function(int s, Pointer<Utf8> buf, int len, int flags,
        Pointer<SOCKADDR> to, int tolen)>('sendto');

/// Disables sends or receives on a socket.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-shutdown>.
///
/// {@category winsock}
int shutdown(int s, int how) => _shutdown(s, how);

final _shutdown = _ws2_32.lookupFunction<Int32 Function(SOCKET s, Int32 how),
    int Function(int s, int how)>('shutdown');

/// Creates a socket that is bound to a specific transport service provider.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-socket>.
///
/// {@category winsock}
int socket(int af, int type, int protocol) => _socket(af, type, protocol);

final _socket = _ws2_32.lookupFunction<
    SOCKET Function(Int32 af, Int32 type, Int32 protocol),
    int Function(int af, int type, int protocol)>('socket');
