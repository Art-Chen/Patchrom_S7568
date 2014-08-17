.class Landroid/hardware/ssp/DaemonContextPedometer;
.super Ljava/lang/Object;
.source "DaemonContextPedometer.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParserMsgType;


# instance fields
.field private calory:I

.field private inst:I

.field private name:I

.field private speed:I

.field private stepCount:I

.field private stepLength:I

.field private stepStatus:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCalory()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPedometer;->calory:I

    return v0
.end method

.method public getInst()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPedometer;->inst:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPedometer;->name:I

    return v0
.end method

.method protected getSpeed()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPedometer;->speed:I

    return v0
.end method

.method protected getStepCount()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPedometer;->stepCount:I

    return v0
.end method

.method protected getStepLength()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPedometer;->stepLength:I

    return v0
.end method

.method protected getStepStatus()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/hardware/ssp/DaemonContextPedometer;->stepStatus:I

    return v0
.end method

.method protected setCalory(I)V
    .locals 0
    .parameter "mCalory"

    .prologue
    .line 99
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPedometer;->calory:I

    .line 100
    return-void
.end method

.method public setInst(I)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 60
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPedometer;->inst:I

    .line 61
    return-void
.end method

.method public setName(I)V
    .locals 0
    .parameter "name"

    .prologue
    .line 80
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPedometer;->name:I

    .line 81
    return-void
.end method

.method protected setSpeed(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 156
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPedometer;->speed:I

    .line 157
    return-void
.end method

.method protected setStepCount(I)V
    .locals 0
    .parameter "stepCount"

    .prologue
    .line 118
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPedometer;->stepCount:I

    .line 119
    return-void
.end method

.method protected setStepLength(I)V
    .locals 0
    .parameter "stepLength"

    .prologue
    .line 137
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPedometer;->stepLength:I

    .line 138
    return-void
.end method

.method protected setStepStatus(I)V
    .locals 0
    .parameter "stepStatus"

    .prologue
    .line 175
    iput p1, p0, Landroid/hardware/ssp/DaemonContextPedometer;->stepStatus:I

    .line 176
    return-void
.end method
