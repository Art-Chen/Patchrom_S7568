.class Landroid/hardware/ssp/DaemonParserLib;
.super Landroid/hardware/ssp/ADaemonParserHeader;
.source "DaemonParserLib.java"


# instance fields
.field private final mLibParserMap:Ljava/util/HashMap;
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

.field private final mNonLibParserMap:Ljava/util/HashMap;
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
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonParserHeader;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mNonLibParserMap:Ljava/util/HashMap;

    .line 34
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserLibPedometer;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserLibPedometer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserLibPdr;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserLibPdr;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserLibZone;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserLibZone;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserLibDangerZone;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserLibDangerZone;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserLibMotion;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserLibMotion;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserLibGesture;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserLibGesture;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserLibBLE;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserLibBLE;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mNonLibParserMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserNonLibOrientation;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserNonLibOrientation;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private parseLibType([BI)I
    .locals 2
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    aget-byte v1, p1, p2

    invoke-virtual {p0, v0, v1}, Landroid/hardware/ssp/DaemonParserLib;->checkPacket(Ljava/util/HashMap;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "Packet Inst error"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 82
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    aget-byte v1, p1, p2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/ADaemonParserData;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/hardware/ssp/ADaemonParserData;->parse([BI)I

    move-result v0

    goto :goto_0
.end method

.method private parseNonLibType([BI)I
    .locals 2
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mNonLibParserMap:Ljava/util/HashMap;

    aget-byte v1, p1, p2

    invoke-virtual {p0, v0, v1}, Landroid/hardware/ssp/DaemonParserLib;->checkPacket(Ljava/util/HashMap;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "Packet Inst error"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 100
    const/4 v0, -0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mNonLibParserMap:Ljava/util/HashMap;

    aget-byte v1, p1, p2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/ADaemonParserData;

    add-int/lit8 p2, p2, 0x1

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
    .line 116
    .local p1, parserMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Landroid/hardware/ssp/ADaemonParserData;>;"
    invoke-super {p0, p1, p2}, Landroid/hardware/ssp/ADaemonParserHeader;->checkPacket(Ljava/util/HashMap;B)Z

    move-result v0

    return v0
.end method

.method public getParser(B)Landroid/hardware/ssp/ADaemonParserData;
    .locals 2
    .parameter "key"

    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLib;->mLibParserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/ADaemonParserData;

    return-object v0
.end method

.method public parse([BI)I
    .locals 4
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 58
    const/4 v0, -0x1

    .line 59
    .local v0, i:I
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, next:I
    aget-byte v2, p1, p2

    .line 61
    .local v2, type:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 62
    invoke-direct {p0, p1, v1}, Landroid/hardware/ssp/DaemonParserLib;->parseLibType([BI)I

    move-result v0

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 64
    invoke-direct {p0, p1, v1}, Landroid/hardware/ssp/DaemonParserLib;->parseNonLibType([BI)I

    move-result v0

    goto :goto_0
.end method
