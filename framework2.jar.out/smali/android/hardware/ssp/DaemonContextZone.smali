.class Landroid/hardware/ssp/DaemonContextZone;
.super Ljava/lang/Object;
.source "DaemonContextZone.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParserMsgType;


# instance fields
.field private action:I

.field private inst:I

.field private name:I

.field private type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAction()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/hardware/ssp/DaemonContextZone;->action:I

    return v0
.end method

.method public getInst()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/hardware/ssp/DaemonContextZone;->inst:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/hardware/ssp/DaemonContextZone;->name:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/ssp/DaemonContextZone;->type:I

    return v0
.end method

.method protected setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 109
    iput p1, p0, Landroid/hardware/ssp/DaemonContextZone;->action:I

    .line 110
    return-void
.end method

.method public setInst(I)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 51
    iput p1, p0, Landroid/hardware/ssp/DaemonContextZone;->inst:I

    .line 52
    return-void
.end method

.method public setName(I)V
    .locals 0
    .parameter "name"

    .prologue
    .line 71
    iput p1, p0, Landroid/hardware/ssp/DaemonContextZone;->name:I

    .line 72
    return-void
.end method

.method protected setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 90
    iput p1, p0, Landroid/hardware/ssp/DaemonContextZone;->type:I

    .line 91
    return-void
.end method
