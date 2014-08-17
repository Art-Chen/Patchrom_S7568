.class Landroid/hardware/ssp/DaemonParserContext;
.super Ljava/lang/Object;
.source "DaemonParserContext.java"


# static fields
.field protected static final INST_LIBRARY:B = 0x1t

.field protected static final INST_NOTI:B = 0x2t

.field private static final PACKET_SIZE:I = 0xbb8


# instance fields
.field private final mContextParserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Landroid/hardware/ssp/ADaemonParserHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserContext;->mContextParserMap:Ljava/util/HashMap;

    .line 40
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserContext;->mContextParserMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserLib;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserLib;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserContext;->mContextParserMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Landroid/hardware/ssp/DaemonParserNoti;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonParserNoti;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private checkPacket(B)Z
    .locals 3
    .parameter "inst"

    .prologue
    .line 141
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserContext;->mContextParserMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 142
    .local v0, i:Ljava/lang/Byte;
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x1

    .line 147
    .end local v0           #i:Ljava/lang/Byte;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseInstruction([B)Z
    .locals 4
    .parameter "packet"

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :cond_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 100
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonParserContext;->checkPacket(B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    const-string v1, "Packet Inst error"

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    move v1, v2

    .line 112
    :goto_0
    return v1

    .line 105
    :cond_1
    iget-object v1, p0, Landroid/hardware/ssp/DaemonParserContext;->mContextParserMap:Ljava/util/HashMap;

    aget-byte v3, p1, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ssp/ADaemonParserHeader;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/hardware/ssp/ADaemonParserHeader;->parse([BI)I

    move-result v0

    .line 107
    if-gez v0, :cond_0

    move v1, v2

    .line 108
    goto :goto_0

    .line 112
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private preCheckPacket([B)Z
    .locals 3
    .parameter "packet"

    .prologue
    const/4 v0, 0x0

    .line 123
    array-length v1, p1

    if-gtz v1, :cond_0

    .line 124
    const-string v1, "Packet array length is zero"

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 130
    :goto_0
    return v0

    .line 126
    :cond_0
    array-length v1, p1

    const/16 v2, 0xbb8

    if-le v1, v2, :cond_1

    .line 127
    const-string v1, "Packet size overflow"

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getParser(B)Landroid/hardware/ssp/ADaemonParserData;
    .locals 2
    .parameter "key"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserContext;->mContextParserMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/ADaemonParserHeader;

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/ADaemonParserHeader;->getParser(B)Landroid/hardware/ssp/ADaemonParserData;

    move-result-object v0

    return-object v0
.end method

.method protected parse([B)Z
    .locals 7
    .parameter "packet"

    .prologue
    const/4 v4, 0x0

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Landroid/hardware/ssp/DaemonParserContext;->preCheckPacket([B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    const-string v5, "Parse error"

    invoke-static {v5}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 69
    :goto_0
    return v4

    .line 60
    :cond_0
    move-object v0, p1

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-byte v2, v0, v1

    .line 61
    .local v2, k:B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v2           #k:B
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/ssp/DaemonParserContext;->parseInstruction([B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 65
    const-string v5, "Parse error"

    invoke-static {v5}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected parseForScenarioTesting([B)Z
    .locals 2
    .parameter "testPacket"

    .prologue
    .line 80
    move-object v0, p1

    .line 82
    .local v0, packet:[B
    invoke-direct {p0, p1}, Landroid/hardware/ssp/DaemonParserContext;->preCheckPacket([B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonParserContext;->parseInstruction([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    const-string v1, "Parse error"

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
