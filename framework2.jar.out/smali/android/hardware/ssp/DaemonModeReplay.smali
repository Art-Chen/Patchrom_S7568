.class Landroid/hardware/ssp/DaemonModeReplay;
.super Landroid/hardware/ssp/ADaemon;
.source "DaemonModeReplay.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonModeReplay;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemon;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/ssp/DaemonModeReplay;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Landroid/hardware/ssp/DaemonModeReplay;->instance:Landroid/hardware/ssp/DaemonModeReplay;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Landroid/hardware/ssp/DaemonModeReplay;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonModeReplay;->instance:Landroid/hardware/ssp/DaemonModeReplay;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/hardware/ssp/DaemonModeReplay;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonModeReplay;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonModeReplay;->instance:Landroid/hardware/ssp/DaemonModeReplay;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonModeReplay;->instance:Landroid/hardware/ssp/DaemonModeReplay;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public finalizeDaemon()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/hardware/ssp/ADaemon;->finalizeDaemon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonModeReplay;->finalizeProvider()V

    .line 56
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalizeProvider()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderReplay;->getInstance()Landroid/hardware/ssp/DaemonProviderReplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonProviderReplay;->finalizeProvider()V

    .line 90
    return-void
.end method

.method protected initializeManager(Landroid/hardware/ssp/DaemonConstants$SSPMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/hardware/ssp/ADaemon;->initializeManager(Landroid/hardware/ssp/DaemonConstants$SSPMode;)V

    .line 68
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerReplay;->getInstance()Landroid/hardware/ssp/DaemonManagerReplay;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/ADaemon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/ssp/ADaemon;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerReplay;->initializeReplayManager(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected initializeProvider()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderReplay;->getInstance()Landroid/hardware/ssp/DaemonProviderReplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonProviderReplay;->initializeProvider()Z

    .line 80
    return-void
.end method
