.class Landroid/hardware/ssp/DaemonModeNormal;
.super Landroid/hardware/ssp/ADaemon;
.source "DaemonModeNormal.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonModeNormal;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemon;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/ssp/DaemonModeNormal;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Landroid/hardware/ssp/DaemonModeNormal;->instance:Landroid/hardware/ssp/DaemonModeNormal;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Landroid/hardware/ssp/DaemonModeNormal;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonModeNormal;->instance:Landroid/hardware/ssp/DaemonModeNormal;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/hardware/ssp/DaemonModeNormal;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonModeNormal;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonModeNormal;->instance:Landroid/hardware/ssp/DaemonModeNormal;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonModeNormal;->instance:Landroid/hardware/ssp/DaemonModeNormal;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalizeAggregator()V
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->finalizeAggregator()V

    .line 119
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->finalizeAggregator()V

    .line 120
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorMoving;->getInstance()Landroid/hardware/ssp/DaemonAggregatorMoving;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->finalizeAggregator()V

    .line 121
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->getInstance()Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->finalizeAggregator()V

    .line 122
    return-void
.end method

.method public finalizeDaemon()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/hardware/ssp/ADaemon;->finalizeDaemon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonModeNormal;->finalizeAggregator()V

    .line 57
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonModeNormal;->finalizeProvider()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalizeProvider()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->finalizeProvider()V

    .line 96
    return-void
.end method

.method protected initializeAggregator()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->initializeAggregator()Z

    .line 106
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->initializeAggregator()V

    .line 107
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorMoving;->getInstance()Landroid/hardware/ssp/DaemonAggregatorMoving;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->initializeAggregator()V

    .line 108
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->getInstance()Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->initializeAggregator()V

    .line 109
    return-void
.end method

.method protected initializeManager(Landroid/hardware/ssp/DaemonConstants$SSPMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/hardware/ssp/ADaemon;->initializeManager(Landroid/hardware/ssp/DaemonConstants$SSPMode;)V

    .line 71
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerSensorHub;->getInstance()Landroid/hardware/ssp/DaemonManagerSensorHub;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/ADaemon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonManagerSensorHub;->initializeSensorHubManager(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerAKM;->getInstance()Landroid/hardware/ssp/DaemonManagerAKM;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerAKM;->initializeAKMManager()V

    .line 73
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerPower;->getInstance()Landroid/hardware/ssp/DaemonManagerPower;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/ADaemon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonManagerPower;->initializePowerManager(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method protected initializeProvider()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->initializeProvider()Z

    .line 84
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderAudio;->getInstance()Landroid/hardware/ssp/DaemonProviderAudio;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/ADaemon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderAudio;->initializeProvider(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderAlarm;->getInstance()Landroid/hardware/ssp/DaemonProviderAlarm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonProviderAlarm;->initializeProvider()V

    .line 86
    return-void
.end method

.method public setProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V
    .locals 2
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 148
    invoke-static {p1}, Landroid/hardware/ssp/DaemonConstants;->getSSPService(I)Landroid/hardware/ssp/DaemonConstants$SSPServices;

    move-result-object v1

    .line 149
    .local v1, sspService:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {p2}, Landroid/hardware/ssp/DaemonConstants;->getSSPProperty(I)Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    move-result-object v0

    .line 154
    .local v0, sspProperty:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v1, v0, p3}, Landroid/hardware/ssp/DaemonModeNormal;->setProperty(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProperty(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V
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
    .line 135
    .local p3, value:Ljava/lang/Object;,"TT;"
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerService;->getInstance()Landroid/hardware/ssp/DaemonManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/ssp/DaemonManagerService;->setProperty(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V

    .line 137
    return-void
.end method
