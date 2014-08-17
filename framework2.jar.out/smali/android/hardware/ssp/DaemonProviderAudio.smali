.class Landroid/hardware/ssp/DaemonProviderAudio;
.super Ljava/lang/Object;
.source "DaemonProviderAudio.java"


# static fields
.field protected static final SILENT_MODE:I = 0x0

.field protected static final SOUND_MODE:I = 0x2

.field protected static final VIBRATE_MODE:I = 0x1

.field private static volatile instance:Landroid/hardware/ssp/DaemonProviderAudio;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonProviderAudio;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Landroid/hardware/ssp/DaemonProviderAudio;->instance:Landroid/hardware/ssp/DaemonProviderAudio;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Landroid/hardware/ssp/DaemonProviderAudio;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonProviderAudio;->instance:Landroid/hardware/ssp/DaemonProviderAudio;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/hardware/ssp/DaemonProviderAudio;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonProviderAudio;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonProviderAudio;->instance:Landroid/hardware/ssp/DaemonProviderAudio;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonProviderAudio;->instance:Landroid/hardware/ssp/DaemonProviderAudio;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getAudioMode()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/hardware/ssp/DaemonProviderAudio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method protected initializeProvider(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonProviderAudio;->mAudioManager:Landroid/media/AudioManager;

    .line 65
    return-void
.end method

.method protected setAudioMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/ssp/DaemonProviderAudio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 75
    return-void
.end method

.method protected setStreamMute(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/hardware/ssp/DaemonProviderAudio;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 93
    return-void
.end method
