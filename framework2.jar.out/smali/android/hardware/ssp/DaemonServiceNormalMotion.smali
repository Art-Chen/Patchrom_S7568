.class Landroid/hardware/ssp/DaemonServiceNormalMotion;
.super Landroid/hardware/ssp/DaemonServiceHandlerMotion;
.source "DaemonServiceNormalMotion.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getMotionAggregator()Landroid/hardware/ssp/DaemonAggregatorMotion;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorMotion;->clear()V

    .line 71
    return-void
.end method

.method public setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)Z
    .locals 1
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
    .line 96
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    return v0
.end method

.method public startService()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerMotion;->startService()Z

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

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addMotionObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;)V

    .line 39
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getMotionAggregator()Landroid/hardware/ssp/DaemonAggregatorMotion;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorMotion;->start()V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerMotion;->stopService()Z

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

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getMotionAggregator()Landroid/hardware/ssp/DaemonAggregatorMotion;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorMotion;->stop()V

    .line 57
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeMotionObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateMotionContext(Landroid/hardware/ssp/DaemonContexts$SSPMotion;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerMotion;->updateMotionContext(Landroid/hardware/ssp/DaemonContexts$SSPMotion;)V

    .line 109
    return-void
.end method
