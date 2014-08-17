.class final Landroid/hardware/ssp/Daemon;
.super Ljava/lang/Object;
.source "Daemon.java"


# instance fields
.field private mDaemon:Landroid/hardware/ssp/IDaemon;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addService(I)V
    .locals 1
    .parameter "service"

    .prologue
    .line 111
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerOperation;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemon;->addService(I)V

    .line 114
    :cond_0
    return-void
.end method

.method protected finalizeDaemon()Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 85
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerOperation;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 89
    iget-object v0, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemon;->finalizeDaemon()Z

    move-result v0

    goto :goto_0
.end method

.method protected varargs initializeDaemon(Landroid/content/Context;Landroid/os/Looper;[Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "looper"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, fileName:Ljava/lang/String;
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->NOMAL_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    .line 52
    .local v0, curMode:Landroid/hardware/ssp/DaemonConstants$SSPMode;
    array-length v4, p3

    if-nez v4, :cond_1

    .line 53
    const-string v2, "NOMAL_MODE"

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Landroid/hardware/ssp/DaemonModeNormal;->getInstance()Landroid/hardware/ssp/DaemonModeNormal;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    .line 73
    :goto_0
    iget-object v2, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    invoke-interface {v2, p1, p2, v1, v0}, Landroid/hardware/ssp/IDaemon;->initializeDaemon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/hardware/ssp/DaemonConstants$SSPMode;)Z

    move v2, v3

    .line 75
    :cond_0
    return v2

    .line 56
    :cond_1
    array-length v4, p3

    if-ne v4, v3, :cond_2

    aget-object v4, p3, v2

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPMode;->NOMAL_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    invoke-virtual {v5}, Landroid/hardware/ssp/DaemonConstants$SSPMode;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    const-string v2, "NOMAL_MODE"

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Landroid/hardware/ssp/DaemonModeNormal;->getInstance()Landroid/hardware/ssp/DaemonModeNormal;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    goto :goto_0

    .line 61
    :cond_2
    array-length v4, p3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    aget-object v4, p3, v2

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPMode;->REPLAY_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    invoke-virtual {v5}, Landroid/hardware/ssp/DaemonConstants$SSPMode;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/hardware/ssp/DaemonManagerReplay;->getInstance()Landroid/hardware/ssp/DaemonManagerReplay;

    move-result-object v4

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerReplay;->checkLogFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const-string v2, "REPLAY_MODE"

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Landroid/hardware/ssp/DaemonModeReplay;->getInstance()Landroid/hardware/ssp/DaemonModeReplay;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    .line 66
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->REPLAY_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    .line 67
    aget-object v1, p3, v3

    goto :goto_0
.end method

.method protected initializeService(I)V
    .locals 1
    .parameter "service"

    .prologue
    .line 99
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerOperation;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemon;->initializeService(I)V

    .line 102
    :cond_0
    return-void
.end method

.method protected removeService(I)V
    .locals 1
    .parameter "service"

    .prologue
    .line 123
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerOperation;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemon;->removeService(I)V

    .line 126
    :cond_0
    return-void
.end method

.method protected setProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V
    .locals 1
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 159
    iget-object v0, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/ssp/IDaemon;->setProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    .line 160
    return-void
.end method

.method protected setProperty(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V
    .locals 1
    .parameter "service"
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p3, value:Ljava/lang/Object;,"TT;"
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerOperation;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/hardware/ssp/Daemon;->mDaemon:Landroid/hardware/ssp/IDaemon;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/ssp/IDaemon;->setProperty(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method
