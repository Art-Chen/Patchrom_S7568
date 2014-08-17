.class Landroid/hardware/ssp/DaemonNonContextOrientation;
.super Ljava/lang/Object;
.source "DaemonNonContextOrientation.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParserMsgType;


# instance fields
.field private hdst:I

.field private ho_x:I

.field private ho_y:I

.field private ho_z:I

.field private href_x:I

.field private href_y:I

.field private href_z:I

.field private inst:I

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
.method protected getHdst()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->hdst:I

    return v0
.end method

.method protected getHoX()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->ho_x:I

    return v0
.end method

.method protected getHoY()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->ho_y:I

    return v0
.end method

.method protected getHoZ()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->ho_z:I

    return v0
.end method

.method protected getHrefX()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->href_x:I

    return v0
.end method

.method protected getHrefY()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->href_y:I

    return v0
.end method

.method protected getHrefZ()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->href_z:I

    return v0
.end method

.method public getInst()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->inst:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->name:I

    return v0
.end method

.method protected setHdst(I)V
    .locals 0
    .parameter "hdst"

    .prologue
    .line 104
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->hdst:I

    .line 105
    return-void
.end method

.method protected setHoX(I)V
    .locals 0
    .parameter "ho_x"

    .prologue
    .line 123
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->ho_x:I

    .line 124
    return-void
.end method

.method protected setHoY(I)V
    .locals 0
    .parameter "ho_y"

    .prologue
    .line 142
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->ho_y:I

    .line 143
    return-void
.end method

.method protected setHoZ(I)V
    .locals 0
    .parameter "ho_z"

    .prologue
    .line 161
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->ho_z:I

    .line 162
    return-void
.end method

.method protected setHrefX(I)V
    .locals 0
    .parameter "href_x"

    .prologue
    .line 180
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->href_x:I

    .line 181
    return-void
.end method

.method protected setHrefY(I)V
    .locals 0
    .parameter "href_y"

    .prologue
    .line 199
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->href_y:I

    .line 200
    return-void
.end method

.method protected setHrefZ(I)V
    .locals 0
    .parameter "href_z"

    .prologue
    .line 218
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->href_z:I

    .line 219
    return-void
.end method

.method public setInst(I)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 65
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->inst:I

    .line 66
    return-void
.end method

.method public setName(I)V
    .locals 0
    .parameter "name"

    .prologue
    .line 85
    iput p1, p0, Landroid/hardware/ssp/DaemonNonContextOrientation;->name:I

    .line 86
    return-void
.end method
