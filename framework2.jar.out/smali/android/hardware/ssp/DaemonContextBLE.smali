.class Landroid/hardware/ssp/DaemonContextBLE;
.super Ljava/lang/Object;
.source "DaemonContextBLE.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParserMsgType;


# instance fields
.field private count:I

.field private id:[Ljava/lang/String;

.field private inst:I

.field private name:I

.field private rssi:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/hardware/ssp/DaemonContextBLE;->count:I

    return v0
.end method

.method protected getId()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/ssp/DaemonContextBLE;->id:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getInst()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Landroid/hardware/ssp/DaemonContextBLE;->inst:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/hardware/ssp/DaemonContextBLE;->name:I

    return v0
.end method

.method protected getRssi()[I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/hardware/ssp/DaemonContextBLE;->rssi:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method protected setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 93
    iput p1, p0, Landroid/hardware/ssp/DaemonContextBLE;->count:I

    .line 94
    return-void
.end method

.method protected setId([Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 112
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContextBLE;->id:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setInst(I)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 54
    iput p1, p0, Landroid/hardware/ssp/DaemonContextBLE;->inst:I

    .line 55
    return-void
.end method

.method public setName(I)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    iput p1, p0, Landroid/hardware/ssp/DaemonContextBLE;->name:I

    .line 75
    return-void
.end method

.method protected setRssi([I)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 131
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContextBLE;->rssi:[I

    .line 132
    return-void
.end method
