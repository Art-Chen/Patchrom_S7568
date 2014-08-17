.class abstract Landroid/hardware/ssp/ADaemon;
.super Ljava/lang/Object;
.source "ADaemon.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemon;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mFileName:Ljava/lang/String;

.field protected mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addService(I)V
    .locals 4
    .parameter "service"

    .prologue
    .line 135
    invoke-static {p1}, Landroid/hardware/ssp/DaemonConstants;->getSSPService(I)Landroid/hardware/ssp/DaemonConstants$SSPServices;

    move-result-object v0

    .line 136
    .local v0, sspService:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerService;->getInstance()Landroid/hardware/ssp/DaemonManagerService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/ssp/DaemonManagerService;->addService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V

    .line 141
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerService;->getInstance()Landroid/hardware/ssp/DaemonManagerService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonManagerService;->startService()Z

    goto :goto_0
.end method

.method protected finalizeAggregator()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public finalizeDaemon()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerService;->getInstance()Landroid/hardware/ssp/DaemonManagerService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonManagerService;->finalizeService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonManagerOperation;->setOperation(Z)V

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract finalizeProvider()V
.end method

.method protected initializeAggregator()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public initializeDaemon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/hardware/ssp/DaemonConstants$SSPMode;)Z
    .locals 2
    .parameter "context"
    .parameter "looper"
    .parameter "fileName"
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 48
    iput-object p1, p0, Landroid/hardware/ssp/ADaemon;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Landroid/hardware/ssp/ADaemon;->mLooper:Landroid/os/Looper;

    .line 50
    iput-object p3, p0, Landroid/hardware/ssp/ADaemon;->mFileName:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p4}, Landroid/hardware/ssp/ADaemon;->initializeManager(Landroid/hardware/ssp/DaemonConstants$SSPMode;)V

    .line 53
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemon;->initializeProvider()V

    .line 54
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemon;->initializeAggregator()V

    .line 56
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonManagerOperation;->setOperation(Z)V

    .line 58
    return v1
.end method

.method protected initializeManager(Landroid/hardware/ssp/DaemonConstants$SSPMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 84
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->initializeObserverManager()V

    .line 85
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/ADaemon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/ssp/ADaemon;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->initializeRunnerManager(Landroid/content/Context;Landroid/os/Looper;)V

    .line 87
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerService;->getInstance()Landroid/hardware/ssp/DaemonManagerService;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/ADaemon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/ssp/ADaemon;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/ssp/DaemonManagerService;->initializeServiceManager(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/ssp/DaemonConstants$SSPMode;)V

    .line 89
    return-void
.end method

.method protected abstract initializeProvider()V
.end method

.method public initializeService(I)V
    .locals 4
    .parameter "service"

    .prologue
    .line 120
    invoke-static {p1}, Landroid/hardware/ssp/DaemonConstants;->getSSPService(I)Landroid/hardware/ssp/DaemonConstants$SSPServices;

    move-result-object v0

    .line 121
    .local v0, sspService:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerService;->getInstance()Landroid/hardware/ssp/DaemonManagerService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/ssp/DaemonConstants$SSPServices;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/ssp/DaemonManagerService;->clearService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V

    goto :goto_0
.end method

.method public removeService(I)V
    .locals 5
    .parameter "service"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-static {p1}, Landroid/hardware/ssp/DaemonConstants;->getSSPService(I)Landroid/hardware/ssp/DaemonConstants$SSPServices;

    move-result-object v0

    .line 152
    .local v0, sspService:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerService;->getInstance()Landroid/hardware/ssp/DaemonManagerService;

    move-result-object v1

    new-array v2, v4, [Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/ssp/DaemonManagerService;->removeService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V

    .line 157
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerService;->getInstance()Landroid/hardware/ssp/DaemonManagerService;

    move-result-object v1

    new-array v2, v4, [Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/ssp/DaemonManagerService;->stopService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V

    goto :goto_0
.end method

.method public setProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V
    .locals 0
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 182
    return-void
.end method

.method public setProperty(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V
    .locals 0
    .parameter "service"
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p3, value:Ljava/lang/Object;,"TE;"
    return-void
.end method
