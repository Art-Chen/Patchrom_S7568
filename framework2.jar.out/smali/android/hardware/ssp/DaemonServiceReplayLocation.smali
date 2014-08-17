.class Landroid/hardware/ssp/DaemonServiceReplayLocation;
.super Landroid/hardware/ssp/DaemonServiceHandlerLocation;
.source "DaemonServiceReplayLocation.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerReplayLocation;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public startService()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->startService()Z

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

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverProvider;->addLocationContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayLocation;)V

    .line 39
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerReplay;->getInstance()Landroid/hardware/ssp/DaemonManagerReplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerReplay;->startReplay()V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerReplay;->getInstance()Landroid/hardware/ssp/DaemonManagerReplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerReplay;->stopReplay()V

    .line 57
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonObserverProvider;->removeLocationContextObserverForReplay()V

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V

    .line 73
    return-void
.end method
