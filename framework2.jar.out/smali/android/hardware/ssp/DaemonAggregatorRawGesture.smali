.class Landroid/hardware/ssp/DaemonAggregatorRawGesture;
.super Landroid/hardware/ssp/ADaemonAggregator;
.source "DaemonAggregatorRawGesture.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonAggregatorRawGesture;


# instance fields
.field private mGestureSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensorGesture;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonAggregator;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonAggregatorRawGesture;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorRawGesture;->instance:Landroid/hardware/ssp/DaemonAggregatorRawGesture;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Landroid/hardware/ssp/DaemonAggregatorRawGesture;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorRawGesture;->instance:Landroid/hardware/ssp/DaemonAggregatorRawGesture;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorRawGesture;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorRawGesture;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonAggregatorRawGesture;->instance:Landroid/hardware/ssp/DaemonAggregatorRawGesture;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorRawGesture;->instance:Landroid/hardware/ssp/DaemonAggregatorRawGesture;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected notifyRawGestureSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonObserverAggregator;->notifyRawGestureContext(Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;)V

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 54
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GESTURE_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorRawGesture;->mGestureSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensorGesture;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWGESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-static {}, Landroid/hardware/ssp/DaemonManagerDataRate;->getInstance()Landroid/hardware/ssp/DaemonManagerDataRate;

    move-result-object v4

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWGESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorRawGesture;->mGestureSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensorGesture;

    .line 64
    :cond_0
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->start()V

    .line 65
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 76
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWGESTURE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorRawGesture;->mGestureSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensorGesture;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V

    goto :goto_0
.end method
