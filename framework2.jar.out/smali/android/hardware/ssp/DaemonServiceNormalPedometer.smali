.class Landroid/hardware/ssp/DaemonServiceNormalPedometer;
.super Landroid/hardware/ssp/DaemonServiceHandlerPedometer;
.source "DaemonServiceNormalPedometer.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerPedometer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->clear()V

    .line 71
    return-void
.end method

.method public setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)Z
    .locals 5
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
            "TE;)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, value:Ljava/lang/Object;,"TE;"
    invoke-super {p0, p1, p2}, Landroid/hardware/ssp/DaemonServiceHandlerPedometer;->setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 102
    .end local p2           #value:Ljava/lang/Object;,"TE;"
    :goto_0
    return v1

    .line 86
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->getCode()I

    move-result v0

    .line 88
    .local v0, code:I
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->PEDOMETER_HEIGHT:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 89
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v2

    check-cast p2, Landroid/hardware/ssp/SSPPropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/ssp/SSPPropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->setUserHeight(D)V

    .line 102
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 94
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_2
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->PEDOMETER_WEIGHT:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 95
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v2

    check-cast p2, Landroid/hardware/ssp/SSPPropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/ssp/SSPPropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->setUserWeight(D)V

    goto :goto_1
.end method

.method public startService()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerPedometer;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 36
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addPedometerObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;)V

    .line 39
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->start()V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerPedometer;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->stop()V

    .line 57
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removePedometerObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerPedometer;->updatePedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V

    .line 115
    return-void
.end method
