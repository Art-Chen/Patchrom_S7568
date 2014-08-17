.class Landroid/hardware/ssp/DaemonServiceNormalRawSensor;
.super Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;
.source "DaemonServiceNormalRawSensor.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public startService()Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addRawSensorObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;)V

    .line 36
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->getInstance()Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->start()V

    .line 38
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->getInstance()Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->stop()V

    .line 54
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeRawSensorObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;)V

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;->updateRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V

    .line 70
    return-void
.end method
