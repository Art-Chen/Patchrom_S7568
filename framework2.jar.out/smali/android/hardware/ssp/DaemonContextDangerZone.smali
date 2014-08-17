.class Landroid/hardware/ssp/DaemonContextDangerZone;
.super Ljava/lang/Object;
.source "DaemonContextDangerZone.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParserMsgType;


# instance fields
.field private action:I

.field private category:I

.field private inst:I

.field private level:I

.field private name:I


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
    .line 102
    iget v0, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->action:I

    return v0
.end method

.method protected getCategory()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->category:I

    return v0
.end method

.method public getInst()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->inst:I

    return v0
.end method

.method protected getLevel()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->level:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->name:I

    return v0
.end method

.method protected setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 112
    iput p1, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->action:I

    .line 113
    return-void
.end method

.method protected setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 93
    iput p1, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->category:I

    .line 94
    return-void
.end method

.method public setInst(I)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 54
    iput p1, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->inst:I

    .line 55
    return-void
.end method

.method protected setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 131
    iput p1, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->level:I

    .line 132
    return-void
.end method

.method public setName(I)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    iput p1, p0, Landroid/hardware/ssp/DaemonContextDangerZone;->name:I

    .line 75
    return-void
.end method
