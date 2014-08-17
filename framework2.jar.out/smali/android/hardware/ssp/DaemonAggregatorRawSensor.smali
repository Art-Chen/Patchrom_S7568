.class Landroid/hardware/ssp/DaemonAggregatorRawSensor;
.super Landroid/hardware/ssp/ADaemonAggregator;
.source "DaemonAggregatorRawSensor.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonAggregatorRawSensor;


# instance fields
.field private mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonAggregator;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonAggregatorRawSensor;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->instance:Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->instance:Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->instance:Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->instance:Landroid/hardware/ssp/DaemonAggregatorRawSensor;

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
.method public finalizeAggregator()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 55
    return-void
.end method

.method protected notifyRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonObserverAggregator;->notifyRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 64
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWSENSOR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-static {}, Landroid/hardware/ssp/DaemonManagerDataRate;->getInstance()Landroid/hardware/ssp/DaemonManagerDataRate;

    move-result-object v4

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWSENSOR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerSensor;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->start()V

    .line 75
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 86
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->RAWSENSOR:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V

    goto :goto_0
.end method
