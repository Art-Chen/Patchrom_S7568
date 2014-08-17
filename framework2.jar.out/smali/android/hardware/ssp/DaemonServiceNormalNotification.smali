.class Landroid/hardware/ssp/DaemonServiceNormalNotification;
.super Landroid/hardware/ssp/DaemonServiceHandlerNotification;
.source "DaemonServiceNormalNotification.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerNotification;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getNotificationAggregator()Landroid/hardware/ssp/DaemonAggregatorNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorNotification;->clear()V

    .line 76
    return-void
.end method

.method public startService()Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerNotification;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addNotificationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;)V

    .line 37
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getNotificationAggregator()Landroid/hardware/ssp/DaemonAggregatorNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorNotification;->start()V

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerNotification;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 58
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getNotificationAggregator()Landroid/hardware/ssp/DaemonAggregatorNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorNotification;->stop()V

    .line 61
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeNotificationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;)V

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateNotificationContext(Landroid/hardware/ssp/DaemonContexts$SSPNotification;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerNotification;->updateNotificationContext(Landroid/hardware/ssp/DaemonContexts$SSPNotification;)V

    .line 89
    return-void
.end method
