.class Landroid/hardware/ssp/DaemonParserLibPdr;
.super Landroid/hardware/ssp/ADaemonParserData;
.source "DaemonParserLibPdr.java"


# static fields
.field private static final PACKET_DATA_LENGTH:I = 0x7


# instance fields
.field private final mPdrList:Ljava/util/ArrayList;
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

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserLibPdr;->mPdrList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected checkPacket([BI)Z
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 134
    add-int/lit8 v0, p2, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1, v0}, Landroid/hardware/ssp/ADaemonParserData;->checkPacket([BI)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLibPdr;->mPdrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    return-void
.end method

.method public display()V
    .locals 6

    .prologue
    .line 93
    const-string v3, "================= Pdr ================="

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[List Size] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/ssp/DaemonParserLibPdr;->mPdrList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Landroid/hardware/ssp/DaemonParserLibPdr;->mPdrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ssp/IDaemonParserMsgType;

    .local v1, next:Landroid/hardware/ssp/IDaemonParserMsgType;
    move-object v2, v1

    .line 96
    check-cast v2, Landroid/hardware/ssp/DaemonContextPDR;

    .line 98
    .local v2, pdrMsg:Landroid/hardware/ssp/DaemonContextPDR;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deltaTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPDR;->getDeltaTime()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPDR;->getSpeed()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "heading = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPDR;->getHeading()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doe = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPDR;->getDoe()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v1           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    .end local v2           #pdrMsg:Landroid/hardware/ssp/DaemonContextPDR;
    :cond_0
    return-void
.end method

.method public getResult()Ljava/util/ArrayList;
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
    .line 113
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLibPdr;->mPdrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse([BI)I
    .locals 8
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v7, 0x1

    .line 38
    const/4 v0, 0x0

    .line 48
    .local v0, data:I
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, next:I
    aget-byte v4, p1, p2

    .line 50
    .local v4, pdrCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 51
    invoke-virtual {p0, p1, v3}, Landroid/hardware/ssp/DaemonParserLibPdr;->checkPacket([BI)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v5, v4, -0x1

    if-lt v1, v5, :cond_1

    .line 53
    const/4 v3, -0x1

    .line 81
    .end local v3           #next:I
    :cond_0
    return v3

    .line 55
    .restart local v3       #next:I
    :cond_1
    new-instance v2, Landroid/hardware/ssp/DaemonContextPDR;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonContextPDR;-><init>()V

    .line 56
    .local v2, msg:Landroid/hardware/ssp/DaemonContextPDR;
    invoke-virtual {v2, v7}, Landroid/hardware/ssp/DaemonContextPDR;->setInst(I)V

    .line 57
    invoke-virtual {v2, v7}, Landroid/hardware/ssp/DaemonContextPDR;->setName(I)V

    .line 59
    add-int/lit8 p2, v3, 0x1

    .end local v3           #next:I
    .restart local p2
    aget-byte v0, p1, v3

    .line 60
    shl-int/lit8 v0, v0, 0x8

    .line 61
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #next:I
    aget-byte v5, p1, p2

    add-int/2addr v0, v5

    .line 62
    int-to-double v5, v0

    invoke-virtual {v2, v5, v6}, Landroid/hardware/ssp/DaemonContextPDR;->setSpeed(D)V

    .line 64
    add-int/lit8 p2, v3, 0x1

    .end local v3           #next:I
    .restart local p2
    aget-byte v0, p1, v3

    .line 65
    shl-int/lit8 v0, v0, 0x8

    .line 66
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #next:I
    aget-byte v5, p1, p2

    add-int/2addr v0, v5

    .line 67
    int-to-double v5, v0

    invoke-virtual {v2, v5, v6}, Landroid/hardware/ssp/DaemonContextPDR;->setDeltaTime(D)V

    .line 69
    add-int/lit8 p2, v3, 0x1

    .end local v3           #next:I
    .restart local p2
    aget-byte v0, p1, v3

    .line 70
    shl-int/lit8 v0, v0, 0x8

    .line 71
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #next:I
    aget-byte v5, p1, p2

    add-int/2addr v0, v5

    .line 72
    int-to-double v5, v0

    invoke-virtual {v2, v5, v6}, Landroid/hardware/ssp/DaemonContextPDR;->setHeading(D)V

    .line 74
    add-int/lit8 p2, v3, 0x1

    .end local v3           #next:I
    .restart local p2
    aget-byte v0, p1, v3

    .line 75
    invoke-virtual {v2, v0}, Landroid/hardware/ssp/DaemonContextPDR;->setDoe(I)V

    .line 77
    iget-object v5, p0, Landroid/hardware/ssp/DaemonParserLibPdr;->mPdrList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    move v3, p2

    .end local p2
    .restart local v3       #next:I
    goto :goto_0
.end method
