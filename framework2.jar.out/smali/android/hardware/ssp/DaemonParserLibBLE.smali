.class Landroid/hardware/ssp/DaemonParserLibBLE;
.super Landroid/hardware/ssp/ADaemonParserData;
.source "DaemonParserLibBLE.java"


# static fields
.field private static final PACKET_DATA_LENGTH:I = 0x7


# instance fields
.field private final mBLEList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/ssp/IDaemonParserMsgType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonParserData;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserLibBLE;->mBLEList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected checkPacket([BI)Z
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 117
    add-int/lit8 v0, p2, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1, v0}, Landroid/hardware/ssp/ADaemonParserData;->checkPacket([BI)Z

    move-result v0

    return v0
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLibBLE;->mBLEList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    return-void
.end method

.method protected display()V
    .locals 6

    .prologue
    .line 77
    const-string v4, "================= BLE ================="

    invoke-static {v4}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[List Size] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/ssp/DaemonParserLibBLE;->mBLEList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Landroid/hardware/ssp/DaemonParserLibBLE;->mBLEList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/IDaemonParserMsgType;

    .local v3, next:Landroid/hardware/ssp/IDaemonParserMsgType;
    move-object v0, v3

    .line 80
    check-cast v0, Landroid/hardware/ssp/DaemonContextBLE;

    .line 82
    .local v0, ble:Landroid/hardware/ssp/DaemonContextBLE;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextBLE;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextBLE;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextBLE;->getId()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RSSI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextBLE;->getRssi()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0           #ble:Landroid/hardware/ssp/DaemonContextBLE;
    .end local v1           #i:I
    .end local v3           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    :cond_1
    return-void
.end method

.method protected getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/ssp/IDaemonParserMsgType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLibBLE;->mBLEList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse([BI)I
    .locals 12
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    .line 37
    new-instance v3, Landroid/hardware/ssp/DaemonContextBLE;

    invoke-direct {v3}, Landroid/hardware/ssp/DaemonContextBLE;-><init>()V

    .line 38
    .local v3, msg:Landroid/hardware/ssp/DaemonContextBLE;
    const/4 v0, 0x0

    .line 40
    .local v0, data:I
    invoke-virtual {v3, v10}, Landroid/hardware/ssp/DaemonContextBLE;->setInst(I)V

    .line 41
    invoke-virtual {v3, v11}, Landroid/hardware/ssp/DaemonContextBLE;->setName(I)V

    .line 43
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .local v4, next:I
    aget-byte v0, p1, p2

    .line 44
    invoke-virtual {v3, v0}, Landroid/hardware/ssp/DaemonContextBLE;->setCount(I)V

    .line 46
    invoke-virtual {v3}, Landroid/hardware/ssp/DaemonContextBLE;->getCount()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 47
    .local v2, id:[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/hardware/ssp/DaemonContextBLE;->getCount()I

    move-result v6

    new-array v5, v6, [I

    .line 49
    .local v5, rssi:[I
    const/4 v1, 0x0

    .local v1, i:I
    move p2, v4

    .end local v4           #next:I
    .restart local p2
    :goto_0
    invoke-virtual {v3}, Landroid/hardware/ssp/DaemonContextBLE;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/hardware/ssp/DaemonParserLibBLE;->checkPacket([BI)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Landroid/hardware/ssp/DaemonContextBLE;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_0

    .line 51
    const-string v6, "Packet data error"

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 52
    const/4 p2, -0x1

    .line 65
    .end local p2
    :goto_1
    return p2

    .line 54
    .restart local p2
    :cond_0
    const-string v6, "%02d:%02d:%02d:%02d:%02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #next:I
    aget-byte v9, p1, p2

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 p2, v4, 0x1

    .end local v4           #next:I
    .restart local p2
    aget-byte v8, p1, v4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #next:I
    aget-byte v9, p1, p2

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    add-int/lit8 p2, v4, 0x1

    .end local v4           #next:I
    .restart local p2
    aget-byte v9, p1, v4

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #next:I
    aget-byte v9, p1, p2

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    add-int/lit8 p2, v4, 0x1

    .end local v4           #next:I
    .restart local p2
    aget-byte v9, p1, v4

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 57
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #next:I
    aget-byte v6, p1, p2

    aput v6, v5, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    move p2, v4

    .end local v4           #next:I
    .restart local p2
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v3, v2}, Landroid/hardware/ssp/DaemonContextBLE;->setId([Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, v5}, Landroid/hardware/ssp/DaemonContextBLE;->setRssi([I)V

    .line 63
    iget-object v6, p0, Landroid/hardware/ssp/DaemonParserLibBLE;->mBLEList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
