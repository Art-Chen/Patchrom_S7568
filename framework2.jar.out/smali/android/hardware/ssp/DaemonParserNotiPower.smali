.class Landroid/hardware/ssp/DaemonParserNotiPower;
.super Landroid/hardware/ssp/ADaemonParserData;
.source "DaemonParserNotiPower.java"


# static fields
.field private static final PACKET_DATA_LENGTH:I = 0x1


# instance fields
.field private mNotiType:B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonParserData;-><init>()V

    return-void
.end method

.method private notifyPowerStatus()V
    .locals 2

    .prologue
    .line 68
    iget-byte v0, p0, Landroid/hardware/ssp/DaemonParserNotiPower;->mNotiType:B

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_1

    .line 69
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerPower;->getInstance()Landroid/hardware/ssp/DaemonManagerPower;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonManagerPower;->setAPPowerStatus(I)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-byte v0, p0, Landroid/hardware/ssp/DaemonParserNotiPower;->mNotiType:B

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_0

    .line 72
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerPower;->getInstance()Landroid/hardware/ssp/DaemonManagerPower;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonManagerPower;->setAPPowerStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method protected checkPacket([BI)Z
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 84
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1, v0}, Landroid/hardware/ssp/ADaemonParserData;->checkPacket([BI)Z

    move-result v0

    return v0
.end method

.method protected display()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "================= Noti (Power) ================="

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 57
    iget-byte v0, p0, Landroid/hardware/ssp/DaemonParserNotiPower;->mNotiType:B

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_1

    .line 58
    const-string v0, "Noti Type : AP Sleep"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-byte v0, p0, Landroid/hardware/ssp/DaemonParserNotiPower;->mNotiType:B

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "Noti Type : AP Wakeup"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse([BI)I
    .locals 2
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/hardware/ssp/DaemonParserNotiPower;->checkPacket([BI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const-string v1, "Packet data error"

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 38
    const/4 v0, -0x1

    .line 46
    :goto_0
    return v0

    .line 41
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, next:I
    aget-byte v1, p1, p2

    iput-byte v1, p0, Landroid/hardware/ssp/DaemonParserNotiPower;->mNotiType:B

    .line 43
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonParserNotiPower;->display()V

    .line 44
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonParserNotiPower;->notifyPowerStatus()V

    move p2, v0

    .line 46
    .end local v0           #next:I
    .restart local p2
    goto :goto_0
.end method
