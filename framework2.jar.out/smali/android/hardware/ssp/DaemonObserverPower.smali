.class Landroid/hardware/ssp/DaemonObserverPower;
.super Ljava/lang/Object;
.source "DaemonObserverPower.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonObserver;


# instance fields
.field private mPowerSleepNoti:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonNotificationPowerSleep;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerWakeupNoti:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addPowerSleepObserver(Landroid/hardware/ssp/IDaemonNotificationPowerSleep;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerSleepNoti:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerSleepNoti:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addPowerWakeupObserver(Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerWakeupNoti:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerWakeupNoti:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public finalizeObserver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerSleepNoti:Ljava/util/Collection;

    .line 50
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerWakeupNoti:Ljava/util/Collection;

    .line 51
    return-void
.end method

.method public initializeObserver()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerSleepNoti:Ljava/util/Collection;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerWakeupNoti:Ljava/util/Collection;

    .line 40
    return-void
.end method

.method protected notifyPowerSleep()V
    .locals 3

    .prologue
    .line 85
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerSleepNoti:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonNotificationPowerSleep;

    .line 86
    .local v0, i:Landroid/hardware/ssp/IDaemonNotificationPowerSleep;
    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonNotificationPowerSleep;->recvAPSleepNoti()V

    goto :goto_0

    .line 88
    .end local v0           #i:Landroid/hardware/ssp/IDaemonNotificationPowerSleep;
    :cond_0
    return-void
.end method

.method protected notifyPowerWakeup()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerWakeupNoti:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;

    .line 123
    .local v0, i:Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;
    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;->recvAPWakeUpNoti()V

    goto :goto_0

    .line 125
    .end local v0           #i:Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;
    :cond_0
    return-void
.end method

.method protected removePowerSleepObserver(Landroid/hardware/ssp/IDaemonNotificationPowerSleep;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerSleepNoti:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerSleepNoti:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removePowerWakeupObserver(Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerWakeupNoti:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverPower;->mPowerWakeupNoti:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
