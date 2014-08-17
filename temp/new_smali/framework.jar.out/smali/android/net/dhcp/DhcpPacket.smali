.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/InetAddress;

.field protected final mClientIp:Ljava/net/InetAddress;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateway:Ljava/net/InetAddress;

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMessage:Ljava/lang/String;

.field private final mNextIp:Ljava/net/InetAddress;

.field private final mRelayIp:Ljava/net/InetAddress;

.field protected mRequestedIp:Ljava/net/InetAddress;

.field protected mRequestedParams:[B

.field protected mServerIdentifier:Ljava/net/InetAddress;

.field protected mSubnetMask:Ljava/net/InetAddress;

.field protected final mTransId:I

.field protected final mYourIp:Ljava/net/InetAddress;


# direct methods
.method protected constructor <init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V
    .locals 0
    .parameter "transId"
    .parameter "clientIp"
    .parameter "yourIp"
    .parameter "nextIp"
    .parameter "relayIp"
    .parameter "clientMac"
    .parameter "broadcast"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    iput-object p2, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/InetAddress;

    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/InetAddress;

    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/InetAddress;

    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/InetAddress;

    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iput-boolean p7, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/Integer;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/List;Ljava/net/InetAddress;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter "encap"
    .parameter "transactionId"
    .parameter "broadcast"
    .parameter "serverIpAddr"
    .parameter "clientIpAddr"
    .parameter "mac"
    .parameter "timeout"
    .parameter "netMask"
    .parameter "bcAddr"
    .parameter "gateway"
    .parameter
    .parameter "dhcpServerIdentifier"
    .parameter "domainName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p10, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Landroid/net/dhcp/DhcpAckPacket;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/net/dhcp/DhcpAckPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .local v1, pkt:Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object p7, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/InetAddress;

    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    iput-object p8, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildDiscoverPacket(II[BZ[B)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "encap"
    .parameter "transactionId"
    .parameter "clientMac"
    .parameter "broadcast"
    .parameter "expectedParams"

    .prologue
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(I[BZ)V

    .local v0, pkt:Landroid/net/dhcp/DhcpPacket;
    iput-object p4, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/InetAddress;Ljava/net/InetAddress;[B)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter "encap"
    .parameter "transactionId"
    .parameter "serverIpAddr"
    .parameter "clientIpAddr"
    .parameter "mac"

    .prologue
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p2

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .local v0, pkt:Landroid/net/dhcp/DhcpPacket;
    const-string v1, "requested address not available"

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/Integer;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/List;Ljava/net/InetAddress;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter "encap"
    .parameter "transactionId"
    .parameter "broadcast"
    .parameter "serverIpAddr"
    .parameter "clientIpAddr"
    .parameter "mac"
    .parameter "timeout"
    .parameter "netMask"
    .parameter "bcAddr"
    .parameter "gateway"
    .parameter
    .parameter "dhcpServerIdentifier"
    .parameter "domainName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p10, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Landroid/net/dhcp/DhcpOfferPacket;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .local v1, pkt:Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    iput-object p7, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/InetAddress;

    iput-object p8, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildRequestPacket(IILjava/net/InetAddress;Z[BLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "encap"
    .parameter "transactionId"
    .parameter "clientIp"
    .parameter "broadcast"
    .parameter "clientMac"
    .parameter "requestedIpAddress"
    .parameter "serverIdentifier"
    .parameter "requestedParams"
    .parameter "hostName"

    .prologue
    new-instance v0, Landroid/net/dhcp/DhcpRequestPacket;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ILjava/net/InetAddress;[BZ)V

    .local v0, pkt:Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    iput-object p6, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    iput-object p8, v0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    iput-object p7, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v2, 0x43

    const/16 v3, 0x44

    invoke-virtual {v0, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, result:Ljava/nio/ByteBuffer;
    return-object v1
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .locals 14
    .parameter "buf"
    .parameter "seed"
    .parameter "start"
    .parameter "end"

    .prologue
    move/from16 v11, p2

    .local v11, sum:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .local v4, bufPosition:I
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    .local v10, shortBuf:Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v12, p4, p3

    div-int/lit8 v12, v12, 0x2

    new-array v9, v12, [S

    .local v9, shortArray:[S
    invoke-virtual {v10, v9}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    move-object v2, v9

    .local v2, arr$:[S
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-short v8, v2, v5

    .local v8, s:S
    invoke-direct {p0, v8}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v8           #s:S
    :cond_0
    array-length v12, v9

    mul-int/lit8 v12, v12, 0x2

    add-int p3, p3, v12

    move/from16 v0, p4

    move/from16 v1, p3

    if-eq v0, v1, :cond_2

    move/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    int-to-short v3, v12

    .local v3, b:S
    if-gez v3, :cond_1

    add-int/lit16 v12, v3, 0x100

    int-to-short v3, v12

    :cond_1
    mul-int/lit16 v12, v3, 0x100

    add-int/2addr v11, v12

    .end local v3           #b:S
    :cond_2
    shr-int/lit8 v12, v11, 0x10

    const v13, 0xffff

    and-int/2addr v12, v13

    const v13, 0xffff

    and-int/2addr v13, v11

    add-int v11, v12, v13

    shr-int/lit8 v12, v11, 0x10

    const v13, 0xffff

    and-int/2addr v12, v13

    add-int/2addr v12, v11

    const v13, 0xffff

    and-int v11, v12, v13

    xor-int/lit8 v7, v11, -0x1

    .local v7, negated:I
    int-to-short v12, v7

    invoke-direct {p0, v12}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    return v12
.end method

.method public static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .locals 60
    .parameter "packet"
    .parameter "pktType"

    .prologue
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    const/16 v26, 0x0

    .local v26, gateway:Ljava/net/InetAddress;
    const/16 v46, 0x0

    .local v46, leaseTime:Ljava/lang/Integer;
    const/16 v53, 0x0

    .local v53, serverIdentifier:Ljava/net/InetAddress;
    const/16 v48, 0x0

    .local v48, netMask:Ljava/net/InetAddress;
    const/16 v47, 0x0

    .local v47, message:Ljava/lang/String;
    const/16 v59, 0x0

    .local v59, vendorId:Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, expectedParams:[B
    const/16 v28, 0x0

    .local v28, hostName:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, domainName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, ipSrc:Ljava/net/InetAddress;
    const/16 v34, 0x0

    .local v34, ipDst:Ljava/net/InetAddress;
    const/16 v16, 0x0

    .local v16, bcAddr:Ljava/net/InetAddress;
    const/16 v52, 0x0

    .local v52, requestedIp:Ljava/net/InetAddress;
    const/16 v19, -0x1

    .local v19, dhcpType:B
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    const/4 v8, 0x6

    new-array v0, v8, [B

    move-object/from16 v43, v0

    .local v43, l2dst:[B
    const/4 v8, 0x6

    new-array v0, v8, [B

    move-object/from16 v44, v0

    .local v44, l2src:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v45

    .local v45, l2type:S
    const/16 v8, 0x800

    move/from16 v0, v45

    if-eq v0, v8, :cond_0

    const/4 v2, 0x0

    .end local v43           #l2dst:[B
    .end local v44           #l2src:[B
    .end local v45           #l2type:S
    :goto_0
    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    move/from16 v0, p1

    if-ne v0, v8, :cond_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v41

    .local v41, ipType:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v33

    .local v33, ipDiffServicesField:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v40

    .local v40, ipTotalLength:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v37

    .local v37, ipIdentification:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v35

    .local v35, ipFlags:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v36

    .local v36, ipFragOffset:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v39

    .local v39, ipTTL:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v38

    .local v38, ipProto:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v32

    .local v32, ipChksm:S
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v34

    const/16 v8, 0x11

    move/from16 v0, v38

    if-eq v0, v8, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v58

    .local v58, udpSrcPort:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v56

    .local v56, udpDstPort:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v57

    .local v57, udpLen:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v55

    .local v55, udpChkSum:S
    const/16 v8, 0x43

    move/from16 v0, v58

    if-eq v0, v8, :cond_3

    const/16 v8, 0x44

    move/from16 v0, v58

    if-eq v0, v8, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .end local v32           #ipChksm:S
    .end local v33           #ipDiffServicesField:B
    .end local v35           #ipFlags:B
    .end local v36           #ipFragOffset:B
    .end local v37           #ipIdentification:S
    .end local v38           #ipProto:B
    .end local v39           #ipTTL:B
    .end local v40           #ipTotalLength:S
    .end local v41           #ipType:B
    .end local v55           #udpChkSum:S
    .end local v56           #udpDstPort:S
    .end local v57           #udpLen:S
    .end local v58           #udpSrcPort:S
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v54

    .local v54, type:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v29

    .local v29, hwType:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    .local v15, addrLen:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v27

    .local v27, hops:B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .local v3, transactionId:I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v22

    .local v22, elapsed:S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v17

    .local v17, bootpFlags:S
    const v8, 0x8000

    and-int v8, v8, v17

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    .local v4, broadcast:Z
    :goto_1
    const/4 v8, 0x4

    new-array v0, v8, [B

    move-object/from16 v42, v0

    .local v42, ipv4addr:[B
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v42 .. v42}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v10

    .local v10, clientIp:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v42 .. v42}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    .local v6, yourIp:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v42 .. v42}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v12

    .local v12, nextIp:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v42 .. v42}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .local v13, relayIp:Ljava/net/InetAddress;
    new-array v7, v15, [B

    .local v7, clientMac:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    rsub-int/lit8 v9, v15, 0x10

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x40

    add-int/lit16 v8, v8, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    .local v18, dhcpMagicCookie:I
    const v8, 0x63825363

    move/from16 v0, v18

    if-eq v0, v8, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v4           #broadcast:Z
    .end local v6           #yourIp:Ljava/net/InetAddress;
    .end local v7           #clientMac:[B
    .end local v10           #clientIp:Ljava/net/InetAddress;
    .end local v12           #nextIp:Ljava/net/InetAddress;
    .end local v13           #relayIp:Ljava/net/InetAddress;
    .end local v18           #dhcpMagicCookie:I
    .end local v42           #ipv4addr:[B
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4       #broadcast:Z
    .restart local v42       #ipv4addr:[B
    :catch_0
    move-exception v23

    .local v23, ex:Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v23           #ex:Ljava/net/UnknownHostException;
    .restart local v6       #yourIp:Ljava/net/InetAddress;
    .restart local v7       #clientMac:[B
    .restart local v10       #clientIp:Ljava/net/InetAddress;
    .restart local v12       #nextIp:Ljava/net/InetAddress;
    .restart local v13       #relayIp:Ljava/net/InetAddress;
    .restart local v18       #dhcpMagicCookie:I
    :cond_5
    const/16 v49, 0x1

    .local v49, notFinishedOptions:Z
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    if-ge v8, v9, :cond_9

    if-eqz v49, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v51

    .local v51, optionType:B
    const/4 v8, -0x1

    move/from16 v0, v51

    if-ne v0, v8, :cond_7

    const/16 v49, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v50

    .local v50, optionLen:B
    const/16 v24, 0x0

    .local v24, expectedLen:I
    sparse-switch v51, :sswitch_data_0

    const/16 v30, 0x0

    .local v30, i:I
    :goto_3
    move/from16 v0, v30

    move/from16 v1, v50

    if-ge v0, v1, :cond_8

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .end local v30           #i:I
    :sswitch_0
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v48

    const/16 v24, 0x4

    :cond_8
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v50

    if-eq v0, v1, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_1
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v26

    const/16 v24, 0x4

    goto :goto_4

    :sswitch_2
    const/16 v24, 0x0

    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v50

    if-ge v0, v1, :cond_8

    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v24, v24, 0x4

    goto :goto_5

    :sswitch_3
    move/from16 v24, v50

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v28

    goto :goto_4

    :sswitch_4
    move/from16 v24, v50

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v21

    goto :goto_4

    :sswitch_5
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v16

    const/16 v24, 0x4

    goto :goto_4

    :sswitch_6
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v52

    const/16 v24, 0x4

    goto :goto_4

    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    const/16 v24, 0x4

    goto :goto_4

    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v19

    const/16 v24, 0x1

    goto :goto_4

    :sswitch_9
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v53

    const/16 v24, 0x4

    goto :goto_4

    :sswitch_a
    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move/from16 v24, v50

    goto :goto_4

    :sswitch_b
    move/from16 v24, v50

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v47

    goto :goto_4

    :sswitch_c
    move/from16 v24, v50

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v59

    goto/16 :goto_4

    :sswitch_d
    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .local v31, id:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move/from16 v24, v50

    goto/16 :goto_4

    .end local v24           #expectedLen:I
    .end local v31           #id:[B
    .end local v50           #optionLen:B
    .end local v51           #optionType:B
    :cond_9
    packed-switch v19, :pswitch_data_0

    :pswitch_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unimplemented type: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v2, v3, v7, v4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(I[BZ)V

    .local v2, newPacket:Landroid/net/dhcp/DhcpPacket;
    :goto_6
    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    move-object/from16 v0, v20

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, v28

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, v47

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    move-object/from16 v0, v52

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    move-object/from16 v0, v25

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    move-object/from16 v0, v53

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    move-object/from16 v0, v48

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/InetAddress;

    goto/16 :goto_0

    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_3
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    invoke-direct/range {v2 .. v7}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_4
    new-instance v2, Landroid/net/dhcp/DhcpRequestPacket;

    invoke-direct {v2, v3, v10, v7, v4}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ILjava/net/InetAddress;[BZ)V

    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_5
    new-instance v2, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object v8, v2

    move v9, v3

    move-object v11, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_6
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    invoke-direct/range {v2 .. v7}, Landroid/net/dhcp/DhcpAckPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_7
    new-instance v2, Landroid/net/dhcp/DhcpNakPacket;

    move-object v8, v2

    move v9, v3

    move-object v11, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .end local v2           #newPacket:Landroid/net/dhcp/DhcpPacket;
    :pswitch_8
    new-instance v2, Landroid/net/dhcp/DhcpInformPacket;

    move-object v8, v2

    move v9, v3

    move-object v11, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    .restart local v2       #newPacket:Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xc -> :sswitch_3
        0xf -> :sswitch_4
        0x1c -> :sswitch_5
        0x32 -> :sswitch_6
        0x33 -> :sswitch_7
        0x35 -> :sswitch_8
        0x36 -> :sswitch_9
        0x37 -> :sswitch_a
        0x38 -> :sswitch_b
        0x3c -> :sswitch_c
        0x3d -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static decodeFullPacket([BI)Landroid/net/dhcp/DhcpPacket;
    .locals 3
    .parameter "packet"
    .parameter "pktType"

    .prologue
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {v0, p1}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object v1

    return-object v1
.end method

.method private intAbs(S)I
    .locals 2
    .parameter "v"

    .prologue
    if-gez p1, :cond_0

    const/high16 v1, 0x1

    add-int v0, p1, v1

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 5
    .parameter "mac"

    .prologue
    const-string v2, ""

    .local v2, macAddr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, hexString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #hexString:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 5
    .parameter "buf"
    .parameter "byteCount"

    .prologue
    new-array v0, p1, [B

    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    sget-object v4, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;
    .locals 4
    .parameter "packet"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Ljava/net/InetAddress;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .local v1, ipAddr:[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 1
    .parameter "buf"
    .parameter "type"
    .parameter "value"

    .prologue
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 1
    .parameter "buf"
    .parameter "type"
    .parameter "value"

    .prologue
    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 2
    .parameter "buf"
    .parameter "type"
    .parameter "str"

    .prologue
    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V
    .locals 1
    .parameter "buf"
    .parameter "type"
    .parameter "addr"

    .prologue
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    :cond_0
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 3
    .parameter "buf"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, addrs:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, addr:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 1
    .parameter "buf"
    .parameter "type"
    .parameter "payload"

    .prologue
    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length v0, p3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method protected addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buf"

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method public abstract doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
.end method

.method protected fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V
    .locals 14
    .parameter "encap"
    .parameter "destIp"
    .parameter "srcIp"
    .parameter "destUdp"
    .parameter "srcUdp"
    .parameter "buf"
    .parameter "requestCode"
    .parameter "broadcast"

    .prologue
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .local v2, destIpArray:[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .local v6, srcIpArray:[B
    const/4 v5, 0x0

    .local v5, ipLengthOffset:I
    const/4 v4, 0x0

    .local v4, ipChecksumOffset:I
    const/4 v3, 0x0

    .local v3, endIpHeader:I
    const/4 v8, 0x0

    .local v8, udpHeaderOffset:I
    const/4 v10, 0x0

    .local v10, udpLengthOffset:I
    const/4 v7, 0x0

    .local v7, udpChecksumOffset:I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v12, 0x1

    if-ne p1, v12, :cond_0

    const/16 v12, 0x45

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v12, 0x10

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v12, 0x4000

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v12, 0x40

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v12, 0x11

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_0
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v12, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v12, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v12, v12

    int-to-byte v12, v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v12, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-eqz p8, :cond_3

    const/16 v12, -0x8000

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_0
    iget-object v12, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/InetAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/InetAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/InetAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/InetAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v13, v13

    rsub-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x40

    add-int/lit16 v12, v12, 0x80

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v12, 0x63825363

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v12, 0x1

    if-ne p1, v12, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    sub-int/2addr v12, v8

    int-to-short v9, v12

    .local v9, udpLen:S
    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v9}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v11, 0x0

    .local v11, udpSeed:I
    add-int/lit8 v12, v4, 0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    invoke-direct {p0, v12}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v12, v4, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    invoke-direct {p0, v12}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v12, v4, 0x6

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    invoke-direct {p0, v12}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v12, v4, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    invoke-direct {p0, v12}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x11

    add-int/2addr v11, v9

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v11, v8, v12}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v12

    int-to-short v12, v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v7, v12}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    int-to-short v12, v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v12}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v12, v13, v3}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v12

    int-to-short v12, v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v12}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .end local v9           #udpLen:S
    .end local v11           #udpSeed:I
    :cond_2
    return-void

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .local v0, macAddr:Ljava/lang/String;
    return-object v0
.end method
