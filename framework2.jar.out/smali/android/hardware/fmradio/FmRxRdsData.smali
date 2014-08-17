.class public Landroid/hardware/fmradio/FmRxRdsData;
.super Ljava/lang/Object;
.source "FmRxRdsData.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FmRxRdsData"

.field private static final RDS_AF_AUTO:I = 0x8

.field private static final RDS_GROUP_AF:I = 0x4

.field private static final RDS_GROUP_PS:I = 0x2

.field private static final RDS_GROUP_RT:I = 0x1

.field private static final RDS_PS_ALL:I = 0x10

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_PSALL:I = 0x8000014

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSD_BUF:I = 0x8000013

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f


# instance fields
.field private mFd:I

.field private mPrgmId:I

.field private mPrgmServices:Ljava/lang/String;

.field private mPrgmType:I

.field private mRadioText:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    .line 62
    return-void
.end method


# virtual methods
.method public enableAFjump(Z)I
    .locals 1
    .parameter "AFenable"

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public getPrgmId()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    return v0
.end method

.method public getPrgmServices()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    return-object v0
.end method

.method public getPrgmType()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public rdsGrpOptions(IIZ)I
    .locals 1
    .parameter "grpMask"
    .parameter "buffSize"
    .parameter "rdsFilter"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public rdsOn(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public rdsOptions(I)I
    .locals 1
    .parameter "rdsMask"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public setPrgmId(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 197
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    .line 198
    return-void
.end method

.method public setPrgmServices(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 189
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setPrgmType(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 204
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    .line 205
    return-void
.end method

.method public setRadioText(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 181
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    .line 182
    return-void
.end method
