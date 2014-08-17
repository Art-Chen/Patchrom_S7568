.class Landroid/hardware/ssp/DaemonContextPDR;
.super Ljava/lang/Object;
.source "DaemonContextPDR.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParserMsgType;


# instance fields
.field private deltaTime:D

.field private doe:I

.field private heading:D

.field private inst:I

.field private name:I

.field private speed:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDeltaTime()D
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonContextPDR;->deltaTime:D

    return-wide v0
.end method

.method protected getDoe()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPDR;->doe:I

    return v0
.end method

.method protected getHeading()D
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonContextPDR;->heading:D

    return-wide v0
.end method

.method public getInst()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPDR;->inst:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPDR;->name:I

    return v0
.end method

.method protected getSpeed()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonContextPDR;->speed:D

    return-wide v0
.end method

.method protected setDeltaTime(D)V
    .locals 0
    .parameter "deltaTime"

    .prologue
    .line 115
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonContextPDR;->deltaTime:D

    .line 116
    return-void
.end method

.method protected setDoe(I)V
    .locals 0
    .parameter "doe"

    .prologue
    .line 153
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPDR;->doe:I

    .line 154
    return-void
.end method

.method protected setHeading(D)V
    .locals 0
    .parameter "heading"

    .prologue
    .line 134
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonContextPDR;->heading:D

    .line 135
    return-void
.end method

.method public setInst(I)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 57
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPDR;->inst:I

    .line 58
    return-void
.end method

.method public setName(I)V
    .locals 0
    .parameter "name"

    .prologue
    .line 77
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPDR;->name:I

    .line 78
    return-void
.end method

.method protected setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 96
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonContextPDR;->speed:D

    .line 97
    return-void
.end method
