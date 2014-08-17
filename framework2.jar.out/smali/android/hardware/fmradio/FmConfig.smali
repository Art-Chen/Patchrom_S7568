.class public Landroid/hardware/fmradio/FmConfig;
.super Ljava/lang/Object;
.source "FmConfig.java"


# static fields
.field private static final FM_EU_BAND:I = 0x1

.field private static final FM_JAPAN_STANDARD_BAND:I = 0x3

.field private static final FM_JAPAN_WIDE_BAND:I = 0x2

.field private static final FM_USER_DEFINED_BAND:I = 0x4

.field private static final FM_US_BAND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmConfig"

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e


# instance fields
.field private mBandLowerLimit:I

.field private mBandUpperLimit:I

.field private mChSpacing:I

.field private mEmphasis:I

.field private mRadioBand:I

.field private mRdsStd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z
    .locals 1
    .parameter "fd"
    .parameter "configSettings"

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getChSpacing()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mChSpacing:I

    return v0
.end method

.method public getEmphasis()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mEmphasis:I

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    return v0
.end method

.method public getRadioBand()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    return v0
.end method

.method public getRdsStd()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mRdsStd:I

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    return v0
.end method

.method public setChSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 133
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mChSpacing:I

    .line 134
    return-void
.end method

.method public setEmphasis(I)V
    .locals 0
    .parameter "emp"

    .prologue
    .line 125
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mEmphasis:I

    .line 126
    return-void
.end method

.method public setLowerLimit(I)V
    .locals 0
    .parameter "lowLimit"

    .prologue
    .line 149
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    .line 150
    return-void
.end method

.method public setRadioBand(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 117
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    .line 118
    return-void
.end method

.method public setRdsStd(I)V
    .locals 0
    .parameter "rdsStandard"

    .prologue
    .line 141
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mRdsStd:I

    .line 142
    return-void
.end method

.method public setUpperLimit(I)V
    .locals 0
    .parameter "upLimit"

    .prologue
    .line 157
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    .line 158
    return-void
.end method
