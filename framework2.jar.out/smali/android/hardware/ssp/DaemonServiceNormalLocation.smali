.class Landroid/hardware/ssp/DaemonServiceNormalLocation;
.super Landroid/hardware/ssp/DaemonServiceHandlerLocation;
.source "DaemonServiceNormalLocation.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->clear()V

    .line 72
    return-void
.end method

.method public setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)Z
    .locals 3
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
    .line 83
    .local p2, value:Ljava/lang/Object;,"TE;"
    invoke-super {p0, p1, p2}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 93
    .end local p2           #value:Ljava/lang/Object;,"TE;"
    :goto_0
    return v1

    .line 87
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->getCode()I

    move-result v0

    .line 89
    .local v0, code:I
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->LOCATION_ACCURACY:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 90
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->setAccuracy(I)V

    .line 93
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startService()Z
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 37
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addLocationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;)V

    .line 40
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->start()V

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->stop()V

    .line 58
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeLocationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V

    .line 106
    return-void
.end method

.method public updatePedestrianStatus(I)V
    .locals 0
    .parameter "pedestrianStatus"

    .prologue
    .line 117
    return-void
.end method
