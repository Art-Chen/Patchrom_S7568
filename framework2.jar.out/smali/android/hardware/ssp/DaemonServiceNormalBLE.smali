.class Landroid/hardware/ssp/DaemonServiceNormalBLE;
.super Landroid/hardware/ssp/DaemonServiceHandlerBLE;
.source "DaemonServiceNormalBLE.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerBLE;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getBLEAggregator()Landroid/hardware/ssp/DaemonAggregatorBLE;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorBLE;->clear()V

    .line 69
    return-void
.end method

.method public startService()Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerBLE;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addBLEObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;)V

    .line 37
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getBLEAggregator()Landroid/hardware/ssp/DaemonAggregatorBLE;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorBLE;->start()V

    .line 39
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerBLE;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getBLEAggregator()Landroid/hardware/ssp/DaemonAggregatorBLE;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorBLE;->stop()V

    .line 55
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeBLEObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;)V

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateBLEContext(Landroid/hardware/ssp/DaemonContexts$SSPBLE;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerBLE;->updateBLEContext(Landroid/hardware/ssp/DaemonContexts$SSPBLE;)V

    .line 74
    return-void
.end method
