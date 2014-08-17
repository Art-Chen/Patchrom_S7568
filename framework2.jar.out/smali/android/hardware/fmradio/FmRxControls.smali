.class public Landroid/hardware/fmradio/FmRxControls;
.super Ljava/lang/Object;
.source "FmRxControls.java"


# static fields
.field static final SCAN_BACKWARD:I = 0x3

.field static final SCAN_FORWARD:I = 0x2

.field static final SEEK_BACKWARD:I = 0x1

.field static final SEEK_FORWARD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmRxControls"

.field private static final V4L2_CID_AUDIO_MUTE:I = 0x980909

.field private static final V4L2_CID_AUDIO_VOLUME:I = 0x980905

.field private static final V4L2_CID_BASE:I = 0x980900

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_LP_MODE:I = 0x8000011

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_SCANDWELL:I = 0x8000002

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHMODE:I = 0x8000001

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHON:I = 0x8000003

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_CNT:I = 0x800000b

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PI:I = 0x800000a

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PTY:I = 0x8000009

.field public static final V4L2_CID_PRIVATE_TAVARUA_STATE:I = 0x8000004

.field private static final V4L2_CID_PRIVATE_TAVARUA_TRANSMIT_MODE:I = 0x8000005

.field private static final V4L2_CTRL_CLASS_USER:I = 0x980000


# instance fields
.field private mCancelSrch:Z

.field private mFreq:I

.field private mPresetNum:I

.field private mPrgmId:I

.field private mPrgmType:I

.field private mScanTime:I

.field private mSrchDir:I

.field private mSrchListMode:I

.field private mSrchMode:I

.field private mStateMute:Z

.field private mStateStereo:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSearch(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 298
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->cancelSearchNative(I)I

    .line 300
    return-void
.end method

.method public fmOff(I)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 98
    const v0, 0x8000004

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 99
    return-void
.end method

.method public fmOn(II)V
    .locals 2
    .parameter "fd"
    .parameter "device"

    .prologue
    .line 91
    const v0, 0x8000004

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 92
    return-void
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    return v0
.end method

.method public getPwrMode(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 325
    .local v0, re:I
    return v0
.end method

.method public getTunedFrequency(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 136
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 137
    .local v0, frequency:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTunedFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v0
.end method

.method public muteControl(IZ)V
    .locals 2
    .parameter "fd"
    .parameter "on"

    .prologue
    const v1, 0x980909

    .line 105
    if-eqz p2, :cond_0

    .line 107
    const/4 v0, 0x1

    invoke-static {p1, v1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method public searchRdsStations(IIIII)V
    .locals 0
    .parameter "mode"
    .parameter "dwelling"
    .parameter "direction"
    .parameter "RdsSrchPty"
    .parameter "RdsSrchPI"

    .prologue
    .line 289
    return-void
.end method

.method public searchStations(IIIII)I
    .locals 1
    .parameter "fd"
    .parameter "freq"
    .parameter "dir"
    .parameter "timeout"
    .parameter "reserve"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 269
    .local v0, re:I
    invoke-static {p1, p2, p3, p4, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(IIIII)I

    move-result v0

    .line 270
    return v0
.end method

.method public setFreq(I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 146
    iput p1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    .line 147
    return-void
.end method

.method public setLowPwrMode(IZ)I
    .locals 1
    .parameter "fd"
    .parameter "lpmOn"

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 314
    .local v0, re:I
    return v0
.end method

.method public setStation(I)V
    .locals 4
    .parameter "fd"

    .prologue
    .line 127
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Tune Using: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setFreqNative(II)I

    move-result v0

    .line 129
    .local v0, ret:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public setVolume(II)I
    .locals 1
    .parameter "fd"
    .parameter "value"

    .prologue
    .line 120
    const v0, 0x980905

    invoke-static {p1, v0, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    return v0
.end method

.method public stationList(I)[I
    .locals 1
    .parameter "fd"

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public stereoControl(IZ)I
    .locals 1
    .parameter "fd"
    .parameter "stereo"

    .prologue
    .line 276
    if-eqz p2, :cond_0

    .line 277
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    goto :goto_0
.end method
