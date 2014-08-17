.class Landroid/hardware/ssp/DaemonProviderReplay;
.super Landroid/hardware/ssp/ADaemonProvider;
.source "DaemonProviderReplay.java"


# static fields
.field private static volatile Instance:Landroid/hardware/ssp/DaemonProviderReplay;


# instance fields
.field private mReplayRunner:Landroid/hardware/ssp/DaemonRunnerReplay;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/ssp/DaemonProviderReplay;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Landroid/hardware/ssp/DaemonProviderReplay;->Instance:Landroid/hardware/ssp/DaemonProviderReplay;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Landroid/hardware/ssp/DaemonProviderReplay;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonProviderReplay;->Instance:Landroid/hardware/ssp/DaemonProviderReplay;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/hardware/ssp/DaemonProviderReplay;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonProviderReplay;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonProviderReplay;->Instance:Landroid/hardware/ssp/DaemonProviderReplay;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonProviderReplay;->Instance:Landroid/hardware/ssp/DaemonProviderReplay;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public finalizeProvider()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonProvider;->finalizeProvider()V

    .line 56
    return-void
.end method

.method protected start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 67
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonProvider;->start()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonProviderReplay;->mReplayRunner:Landroid/hardware/ssp/DaemonRunnerReplay;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->TMP_REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    new-instance v4, Landroid/hardware/ssp/DaemonManagerDataRate;

    invoke-direct {v4}, Landroid/hardware/ssp/DaemonManagerDataRate;-><init>()V

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->TMP_REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerReplay;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonProviderReplay;->mReplayRunner:Landroid/hardware/ssp/DaemonRunnerReplay;

    .line 79
    iget-object v0, p0, Landroid/hardware/ssp/DaemonProviderReplay;->mReplayRunner:Landroid/hardware/ssp/DaemonRunnerReplay;

    invoke-virtual {v0, p2}, Landroid/hardware/ssp/DaemonRunnerReplay;->setFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonProvider;->stop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->TMP_REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonProviderReplay;->mReplayRunner:Landroid/hardware/ssp/DaemonRunnerReplay;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V

    .line 100
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonProviderReplay;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonObserverProvider;->notifyLocationContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V

    goto :goto_0
.end method

.method protected updateMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonProviderReplay;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonObserverProvider;->notifyMovingContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    goto :goto_0
.end method
