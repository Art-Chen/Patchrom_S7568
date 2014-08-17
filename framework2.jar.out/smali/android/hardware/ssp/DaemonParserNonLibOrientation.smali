.class Landroid/hardware/ssp/DaemonParserNonLibOrientation;
.super Landroid/hardware/ssp/ADaemonParserData;
.source "DaemonParserNonLibOrientation.java"


# static fields
.field private static final PACKET_DATA_LENGTH:I = 0xd


# instance fields
.field private mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonParserData;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPacket([BI)Z
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 141
    add-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1, v0}, Landroid/hardware/ssp/ADaemonParserData;->checkPacket([BI)Z

    move-result v0

    return v0
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    goto :goto_0
.end method

.method protected display()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "================= Orientation ================="

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hdst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHdst()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ho_x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ho_y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ho_z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoZ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "href_x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "href_y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "href_z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefZ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 108
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
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse([BI)I
    .locals 4
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->clear()V

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, data:I
    invoke-virtual {p0, p1, p2}, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->checkPacket([BI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const-string v2, "Packet data error"

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 44
    const/4 v1, -0x1

    .line 87
    :goto_0
    return v1

    .line 47
    :cond_0
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v3}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setInst(I)V

    .line 48
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v3}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setName(I)V

    .line 51
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, next:I
    aget-byte v0, p1, p2

    .line 52
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHdst(I)V

    .line 54
    add-int/lit8 p2, v1, 0x1

    .end local v1           #next:I
    .restart local p2
    aget-byte v0, p1, v1

    .line 55
    shl-int/lit8 v0, v0, 0x8

    .line 56
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #next:I
    aget-byte v0, p1, p2

    .line 57
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHoX(I)V

    .line 59
    add-int/lit8 p2, v1, 0x1

    .end local v1           #next:I
    .restart local p2
    aget-byte v0, p1, v1

    .line 60
    shl-int/lit8 v0, v0, 0x8

    .line 61
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #next:I
    aget-byte v0, p1, p2

    .line 62
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHoY(I)V

    .line 64
    add-int/lit8 p2, v1, 0x1

    .end local v1           #next:I
    .restart local p2
    aget-byte v0, p1, v1

    .line 65
    shl-int/lit8 v0, v0, 0x8

    .line 66
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #next:I
    aget-byte v0, p1, p2

    .line 67
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHoZ(I)V

    .line 69
    add-int/lit8 p2, v1, 0x1

    .end local v1           #next:I
    .restart local p2
    aget-byte v0, p1, v1

    .line 70
    shl-int/lit8 v0, v0, 0x8

    .line 71
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #next:I
    aget-byte v0, p1, p2

    .line 72
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHrefX(I)V

    .line 74
    add-int/lit8 p2, v1, 0x1

    .end local v1           #next:I
    .restart local p2
    aget-byte v0, p1, v1

    .line 75
    shl-int/lit8 v0, v0, 0x8

    .line 76
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #next:I
    aget-byte v0, p1, p2

    .line 77
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHrefY(I)V

    .line 79
    add-int/lit8 p2, v1, 0x1

    .end local v1           #next:I
    .restart local p2
    aget-byte v0, p1, v1

    .line 80
    shl-int/lit8 v0, v0, 0x8

    .line 81
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #next:I
    aget-byte v0, p1, p2

    .line 82
    iget-object v2, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHrefZ(I)V

    .line 84
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->display()V

    .line 85
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerAKM;->getInstance()Landroid/hardware/ssp/DaemonManagerAKM;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/ssp/DaemonParserNonLibOrientation;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v2, v3}, Landroid/hardware/ssp/DaemonManagerAKM;->setOrientation(Landroid/hardware/ssp/DaemonNonContextOrientation;)V

    move p2, v1

    .line 87
    .end local v1           #next:I
    .restart local p2
    goto :goto_0
.end method
