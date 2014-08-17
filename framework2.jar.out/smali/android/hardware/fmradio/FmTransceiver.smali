.class public Landroid/hardware/fmradio/FmTransceiver;
.super Ljava/lang/Object;
.source "FmTransceiver.java"


# static fields
.field public static final FM_CHSPACE_100_KHZ:I = 0x1

.field public static final FM_CHSPACE_200_KHZ:I = 0x0

.field public static final FM_CHSPACE_50_KHZ:I = 0x2

.field public static final FM_DE_EMP50:I = 0x1

.field public static final FM_DE_EMP75:I = 0x0

.field public static final FM_JAPAN_STANDARD_BAND:I = 0x2

.field public static final FM_JAPAN_WIDE_BAND:I = 0x1

.field public static final FM_RDS_STD_NONE:I = 0x2

.field public static final FM_RDS_STD_RBDS:I = 0x0

.field public static final FM_RDS_STD_RDS:I = 0x1

.field protected static final FM_RX:I = 0x1

.field protected static final FM_TX:I = 0x2

.field public static final FM_USER_DEFINED_BAND:I = 0x3

.field public static final FM_US_BAND:I

.field protected static sFd:I


# instance fields
.field private final MUTE_EVENT:I

.field private final RDS_EVENT:I

.field private final READY_EVENT:I

.field private final SEEK_COMPLETE_EVENT:I

.field private final TAG:Ljava/lang/String;

.field private final TUNE_EVENT:I

.field protected mControl:Landroid/hardware/fmradio/FmRxControls;

.field protected mPowerMode:I

.field protected mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

.field protected mRxEvents:Landroid/hardware/fmradio/FmRxEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, -0x1

    sput v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->READY_EVENT:I

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TUNE_EVENT:I

    .line 95
    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->RDS_EVENT:I

    .line 96
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->MUTE_EVENT:I

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->SEEK_COMPLETE_EVENT:I

    .line 99
    const-string v0, "FmTransceiver"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected acquire(Ljava/lang/String;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 129
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 131
    const-string v1, "/dev/KT0812G_FM"

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->acquireFdNative(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 133
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-ltz v1, :cond_0

    .line 134
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x1

    .line 147
    .local v0, bStatus:Z
    :goto_0
    return v0

    .line 138
    .end local v0           #bStatus:Z
    :cond_0
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to Open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .restart local v0       #bStatus:Z
    goto :goto_0

    .line 143
    .end local v0           #bStatus:Z
    :cond_1
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alredy Opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x1

    .restart local v0       #bStatus:Z
    goto :goto_0
.end method

.method public configure(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 4
    .parameter "configSettings"

    .prologue
    .line 409
    const/4 v1, 0x1

    .line 410
    .local v1, status:Z
    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v0

    .line 411
    .local v0, lowerFreq:I
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v1

    .line 413
    invoke-virtual {p0, v0}, Landroid/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v1

    .line 414
    return v1
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->fmOff(I)V

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;I)Z
    .locals 3
    .parameter "configSettings"
    .parameter "device"

    .prologue
    .line 356
    const-string v0, "FmTransceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turning on %d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1, p2}, Landroid/hardware/fmradio/FmRxControls;->fmOn(II)V

    .line 359
    const-string v0, "FmTransceiver"

    const-string v1, "Calling fmConfigure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v0

    return v0
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 224
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListener;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxEventListener;->startListener(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    .line 225
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 228
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerTransmitClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    .line 295
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected release(Ljava/lang/String;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 177
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-ltz v0, :cond_0

    .line 179
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 180
    const/4 v0, -0x1

    sput v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 181
    const-string v0, "FmTransceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turned off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    const-string v0, "FmTransceiver"

    const-string v1, "Error turning off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStation(I)Z
    .locals 2
    .parameter "frequencyKHz"

    .prologue
    .line 438
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    invoke-virtual {v0, p1}, Landroid/hardware/fmradio/FmRxControls;->setFreq(I)V

    .line 439
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->setStation(I)V

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListener;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxEventListener;->stopListener()V

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterTransmitClient()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method
