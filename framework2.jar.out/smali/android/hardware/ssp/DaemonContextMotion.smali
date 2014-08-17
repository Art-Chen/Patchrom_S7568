.class Landroid/hardware/ssp/DaemonContextMotion;
.super Ljava/lang/Object;
.source "DaemonContextMotion.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParserMsgType;


# instance fields
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
.method public getInst()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid/hardware/ssp/DaemonContextMotion;->inst:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/hardware/ssp/DaemonContextMotion;->name:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/hardware/ssp/DaemonContextMotion;->type:I

    return v0
.end method

.method public setInst(I)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 48
    iput p1, p0, Landroid/hardware/ssp/DaemonContextMotion;->inst:I

    .line 49
    return-void
.end method

.method public setName(I)V
    .locals 0
    .parameter "name"

    .prologue
    .line 68
    iput p1, p0, Landroid/hardware/ssp/DaemonContextMotion;->name:I

    .line 69
    return-void
.end method

.method protected setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 87
    iput p1, p0, Landroid/hardware/ssp/DaemonContextMotion;->type:I

    .line 88
    return-void
.end method
