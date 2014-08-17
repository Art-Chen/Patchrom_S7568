.class Landroid/hardware/ssp/DaemonServiceNormalGeneral;
.super Landroid/hardware/ssp/DaemonServiceHandlerGeneral;
.source "DaemonServiceNormalGeneral.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerGeneral;-><init>()V

    return-void
.end method


# virtual methods
.method public startService()Z
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerGeneral;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverProvider;->addGeneralContextObserver(Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;)V

    .line 36
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->start()Z

    .line 38
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    const-string v1, "SSP General Service is Started."

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->notifyGeneralConetxt(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerGeneral;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    const-string v1, "SSP General Service is Stopped."

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->notifyGeneralConetxt(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->stop()Z

    .line 60
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverProvider;->removeGeneralContextObserver(Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;)V

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method
