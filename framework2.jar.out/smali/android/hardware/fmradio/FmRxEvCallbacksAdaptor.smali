.class public Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;
.super Ljava/lang/Object;
.source "FmRxEvCallbacksAdaptor.java"

# interfaces
.implements Landroid/hardware/fmradio/FmRxEvCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FmRxEvDisableReceiver()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public FmRxEvEnableReceiver()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public FmRxEvRadioTuneStatus(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 38
    return-void
.end method

.method public FmRxEvRdsAfInfo()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public FmRxEvRdsGroupData()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public FmRxEvRdsLockStatus(Z)V
    .locals 0
    .parameter "rdsAvail"

    .prologue
    .line 39
    return-void
.end method

.method public FmRxEvRdsPsInfo()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public FmRxEvRdsRtInfo()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public FmRxEvSearchComplete(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 43
    return-void
.end method

.method public FmRxEvSearchInProgress()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public FmRxEvSearchListComplete()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public FmRxEvServiceAvailable(Z)V
    .locals 0
    .parameter "service"

    .prologue
    .line 41
    return-void
.end method

.method public FmRxEvStereoStatus(Z)V
    .locals 0
    .parameter "stereo"

    .prologue
    .line 40
    return-void
.end method
