.class Landroid/hardware/ssp/DaemonServiceNormalMoving;
.super Landroid/hardware/ssp/DaemonServiceHandlerMoving;
.source "DaemonServiceNormalMoving.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerMoving;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorMoving;->getInstance()Landroid/hardware/ssp/DaemonAggregatorMoving;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->clear()V

    .line 71
    return-void
.end method

.method public startService()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerMoving;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 36
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorMoving;->getInstance()Landroid/hardware/ssp/DaemonAggregatorMoving;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->start()V

    .line 38
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addMovingObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;)V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerMoving;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorMoving;->getInstance()Landroid/hardware/ssp/DaemonAggregatorMoving;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->stop()V

    .line 57
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeMovingObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerMoving;->updateMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    .line 83
    return-void
.end method
