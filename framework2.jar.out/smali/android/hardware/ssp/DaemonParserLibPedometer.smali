.class Landroid/hardware/ssp/DaemonParserLibPedometer;
.super Landroid/hardware/ssp/ADaemonParserData;
.source "DaemonParserLibPedometer.java"


# static fields
.field private static final PACKET_DATA_LENGTH:I = 0x6


# instance fields
.field private final mPedometerList:Ljava/util/ArrayList;
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

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserLibPedometer;->mPedometerList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected checkPacket([BI)Z
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 165
    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1, v0}, Landroid/hardware/ssp/ADaemonParserData;->checkPacket([BI)Z

    move-result v0

    return v0
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLibPedometer;->mPedometerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    return-void
.end method

.method protected display()V
    .locals 5

    .prologue
    .line 122
    const-string v3, "================= Pedometer ================="

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[List Size] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/ssp/DaemonParserLibPedometer;->mPedometerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Landroid/hardware/ssp/DaemonParserLibPedometer;->mPedometerList:Ljava/util/ArrayList;

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

    .line 126
    check-cast v2, Landroid/hardware/ssp/DaemonContextPedometer;

    .line 128
    .local v2, pedoMsg:Landroid/hardware/ssp/DaemonContextPedometer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "step count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getStepCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getStepLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getSpeed()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getStepStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v1           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    .end local v2           #pedoMsg:Landroid/hardware/ssp/DaemonContextPedometer;
    :cond_0
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
    .line 145
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLibPedometer;->mPedometerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse([BI)I
    .locals 4
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 37
    new-instance v1, Landroid/hardware/ssp/DaemonContextPedometer;

    invoke-direct {v1}, Landroid/hardware/ssp/DaemonContextPedometer;-><init>()V

    .line 38
    .local v1, msg:Landroid/hardware/ssp/DaemonContextPedometer;
    const/4 v0, 0x0

    .line 45
    .local v0, data:I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/ssp/DaemonContextPedometer;->setInst(I)V

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/ssp/DaemonContextPedometer;->setName(I)V

    .line 48
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, next:I
    aget-byte v0, p1, p2

    .line 65
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 66
    add-int/lit8 p2, v2, 0x1

    .end local v2           #next:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 67
    shl-int/lit8 v0, v0, 0x8

    .line 68
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #next:I
    aget-byte v3, p1, p2

    add-int/2addr v0, v3

    .line 69
    shl-int/lit8 v0, v0, 0x8

    .line 70
    add-int/lit8 p2, v2, 0x1

    .end local v2           #next:I
    .restart local p2
    aget-byte v3, p1, v2

    add-int/2addr v0, v3

    .line 71
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setStepCount(I)V

    .line 73
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #next:I
    aget-byte v0, p1, p2

    .line 74
    shl-int/lit8 v0, v0, 0x8

    .line 75
    add-int/lit8 p2, v2, 0x1

    .end local v2           #next:I
    .restart local p2
    aget-byte v3, p1, v2

    add-int/2addr v0, v3

    .line 76
    shl-int/lit8 v0, v0, 0x8

    .line 77
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #next:I
    aget-byte v3, p1, p2

    add-int/2addr v0, v3

    .line 78
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setStepLength(I)V

    .line 80
    add-int/lit8 p2, v2, 0x1

    .end local v2           #next:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 81
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setSpeed(I)V

    .line 83
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #next:I
    aget-byte v0, p1, p2

    .line 84
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setStepStatus(I)V

    .line 86
    add-int/lit8 p2, v2, 0x1

    .end local v2           #next:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 87
    shl-int/lit8 v0, v0, 0x8

    .line 88
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #next:I
    aget-byte v3, p1, p2

    add-int/2addr v0, v3

    .line 89
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setCalory(I)V

    move p2, v2

    .line 108
    .end local v2           #next:I
    .restart local p2
    :goto_0
    iget-object v3, p0, Landroid/hardware/ssp/DaemonParserLibPedometer;->mPedometerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return p2

    .line 91
    .end local p2
    .restart local v2       #next:I
    :cond_0
    and-int/lit8 v3, v0, 0x7f

    invoke-virtual {v1, v3}, Landroid/hardware/ssp/DaemonContextPedometer;->setStepCount(I)V

    .line 93
    add-int/lit8 p2, v2, 0x1

    .end local v2           #next:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 94
    shl-int/lit8 v0, v0, 0x8

    .line 95
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #next:I
    aget-byte v3, p1, p2

    add-int/2addr v0, v3

    .line 96
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setStepLength(I)V

    .line 98
    add-int/lit8 p2, v2, 0x1

    .end local v2           #next:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 99
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setSpeed(I)V

    .line 101
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #next:I
    aget-byte v0, p1, p2

    .line 102
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setStepStatus(I)V

    .line 104
    add-int/lit8 p2, v2, 0x1

    .end local v2           #next:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 105
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextPedometer;->setCalory(I)V

    goto :goto_0
.end method
