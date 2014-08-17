.class Landroid/hardware/ssp/DaemonParserNoti;
.super Landroid/hardware/ssp/ADaemonParserHeader;
.source "DaemonParserNoti.java"


# instance fields
.field private final mNotiParserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Landroid/hardware/ssp/ADaemonParserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonParserHeader;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserNoti;->mNotiParserMap:Ljava/util/HashMap;

    .line 31
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserNoti;->mNotiParserMap:Ljava/util/HashMap;

    const/16 v1, -0x2f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserNotiPower;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserNotiPower;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserNoti;->mNotiParserMap:Ljava/util/HashMap;

    const/16 v1, -0x2e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserNotiPower;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserNotiPower;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private parsePowerType([BI)I
    .locals 2
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserNoti;->mNotiParserMap:Ljava/util/HashMap;

    aget-byte v1, p1, p2

    invoke-virtual {p0, v0, v1}, Landroid/hardware/ssp/DaemonParserNoti;->checkPacket(Ljava/util/HashMap;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "Packet Inst error"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 66
    const/4 v0, -0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserNoti;->mNotiParserMap:Ljava/util/HashMap;

    aget-byte v1, p1, p2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/ADaemonParserData;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/ssp/ADaemonParserData;->parse([BI)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected checkPacket(Ljava/util/HashMap;B)Z
    .locals 1
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Landroid/hardware/ssp/ADaemonParserData;",
            ">;B)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, parserMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Landroid/hardware/ssp/ADaemonParserData;>;"
    invoke-super {p0, p1, p2}, Landroid/hardware/ssp/ADaemonParserHeader;->checkPacket(Ljava/util/HashMap;B)Z

    move-result v0

    return v0
.end method

.method public parse([BI)I
    .locals 4
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 44
    const/4 v0, -0x1

    .line 45
    .local v0, i:I
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, next:I
    aget-byte v2, p1, p2

    .line 47
    .local v2, type:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 48
    invoke-direct {p0, p1, v1}, Landroid/hardware/ssp/DaemonParserNoti;->parsePowerType([BI)I

    move-result v0

    .line 51
    :cond_0
    return v0
.end method
