.class public Lcom/android/server/enterprise/firewall/FirewallRule;
.super Ljava/lang/Object;
.source "FirewallRule.java"


# static fields
.field public static final APPEND:I = 0x1

.field public static final BOTH_DIRECTION:Ljava/lang/String; = "both"

.field public static final BOTH_INTERFACES:Ljava/lang/String; = "both"

.field public static final BOTH_PORT_LOCATION:Ljava/lang/String; = "both"

.field public static final BOTH_PROTOCOL:Ljava/lang/String; = "both"

.field public static final DATA_INTERFACE:Ljava/lang/String; = "data"

.field public static final DELETE:I = 0x2

.field public static final FILTER_TABLE:Ljava/lang/String; = "filter"

.field public static final INSERT:I = 0x3

.field public static final IN_DIRECTION:Ljava/lang/String; = "in"

.field public static final LOCAL_PORT_LOCATION:Ljava/lang/String; = "local"

.field public static final MANGLE_TABLE:Ljava/lang/String; = "mangle"

.field public static final NAT_TABLE:Ljava/lang/String; = "nat"

.field public static final NO_TYPE_SET:I = -0x1

.field public static final NO_UID_SET:I = -0x1

.field public static final OUT_DIRECTION:Ljava/lang/String; = "out"

.field public static final RAW_TABLE:Ljava/lang/String; = "raw"

.field public static final REMOTE_PORT_LOCATION:Ljava/lang/String; = "remote"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final TCP_PROTOCOL:Ljava/lang/String; = "tcp"

.field public static final UDP_PROTOCOL:Ljava/lang/String; = "udp"

.field public static final WIFI_INTERFACE:Ljava/lang/String; = "wifi"


# instance fields
.field private mChain:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mIprange:Ljava/lang/String;

.field private mNetworkInterface:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPortLocation:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

.field private mRuleType:I

.field private mTable:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    .line 70
    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    .line 74
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 75
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setHostnameOrIp(Ljava/lang/String;)Z

    .line 76
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPort(Ljava/lang/String;)Z

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setProtocol(Ljava/lang/String;)Z

    .line 78
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPortLocation(Ljava/lang/String;)Z

    .line 79
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setNetworkInterface(Ljava/lang/String;)Z

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleType(I)Z

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setUid(I)Z

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V
    .locals 1
    .parameter "table"
    .parameter "chain"
    .parameter "direction"
    .parameter "ipRange"
    .parameter "port"
    .parameter "protocol"
    .parameter "portLocation"
    .parameter "networkInterface"
    .parameter "type"
    .parameter "uid"
    .parameter "ruleAction"

    .prologue
    const/4 v0, -0x1

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    .line 70
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setTable(Ljava/lang/String;)Z

    .line 89
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallRule;->setChain(Ljava/lang/String;)Z

    .line 90
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 91
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/firewall/FirewallRule;->setHostnameOrIp(Ljava/lang/String;)Z

    .line 92
    invoke-virtual {p0, p5}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPort(Ljava/lang/String;)Z

    .line 93
    invoke-virtual {p0, p6}, Lcom/android/server/enterprise/firewall/FirewallRule;->setProtocol(Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0, p7}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPortLocation(Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p0, p8}, Lcom/android/server/enterprise/firewall/FirewallRule;->setNetworkInterface(Ljava/lang/String;)Z

    .line 96
    invoke-virtual {p0, p9}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleType(I)Z

    .line 97
    invoke-virtual {p0, p10}, Lcom/android/server/enterprise/firewall/FirewallRule;->setUid(I)Z

    .line 98
    invoke-virtual {p0, p11}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    .line 99
    return-void
.end method


# virtual methods
.method public getChain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mChain:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getHostnameOrIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mIprange:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPortLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPortLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    return-object v0
.end method

.method public getRuleType()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mTable:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    return v0
.end method

.method public setChain(Ljava/lang/String;)Z
    .locals 1
    .parameter "chain"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mChain:Ljava/lang/String;

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public setDirection(Ljava/lang/String;)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 125
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mDirection:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHostnameOrIp(Ljava/lang/String;)Z
    .locals 1
    .parameter "hostnameOrIp"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mIprange:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public setNetworkInterface(Ljava/lang/String;)Z
    .locals 1
    .parameter "networkInterface"

    .prologue
    .line 177
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mNetworkInterface:Ljava/lang/String;

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPort(Ljava/lang/String;)Z
    .locals 1
    .parameter "port"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPort:Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public setPortLocation(Ljava/lang/String;)Z
    .locals 1
    .parameter "portLocation"

    .prologue
    .line 236
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "remote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "local"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPortLocation:Ljava/lang/String;

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProtocol(Ljava/lang/String;)Z
    .locals 2
    .parameter "protocol"

    .prologue
    .line 222
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tcp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "udp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mProtocol:Ljava/lang/String;

    .line 224
    const-string v0, "FirewallPolicy"

    const-string v1, "setProtocol before true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_1
    const-string v0, "FirewallPolicy"

    const-string v1, "setProtocol before false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z
    .locals 1
    .parameter "ruleAction"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public setRuleType(I)Z
    .locals 2
    .parameter "ruleType"

    .prologue
    const/4 v0, 0x1

    .line 199
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 200
    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    .line 203
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTable(Ljava/lang/String;)Z
    .locals 1
    .parameter "table"

    .prologue
    .line 112
    const-string v0, "filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mTable:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUid(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 213
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    .line 214
    const/4 v0, 0x1

    return v0
.end method
