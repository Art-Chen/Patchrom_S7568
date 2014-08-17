.class abstract Landroid/hardware/ssp/ADaemonRunnerContext;
.super Landroid/hardware/ssp/ADaemonRunner;
.source "ADaemonRunnerContext.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonRunnerContext;


# instance fields
.field private final mContextListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field protected mSSPHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunner;-><init>()V

    .line 50
    new-instance v0, Landroid/hardware/ssp/ADaemonRunnerContext$1;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/ADaemonRunnerContext$1;-><init>(Landroid/hardware/ssp/ADaemonRunnerContext;)V

    iput-object v0, p0, Landroid/hardware/ssp/ADaemonRunnerContext;->mContextListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-void
.end method


# virtual methods
.method protected getContextListener()Landroid/hardware/sensorhub/SensorHubEventListener;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/hardware/ssp/ADaemonRunnerContext;->mContextListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-object v0
.end method

.method public notifyContext()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public pauseRunner()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public prepareRunner()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/ssp/ADaemonRunnerContext;->mSSPHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 82
    iget-object v0, p0, Landroid/hardware/ssp/ADaemonRunnerContext;->mSSPHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "ContextManager is null"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public resumeRunner()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public run(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 102
    return-void
.end method

.method protected sendOriToDriver()V
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerAKM;->getInstance()Landroid/hardware/ssp/DaemonManagerAKM;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerAKM;->loadAKMParameters()V

    .line 208
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->sendOrientationToDriver()V

    .line 209
    return-void
.end method

.method protected setRegisterFirstType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method protected setRegisterSecondType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z
    .locals 1
    .parameter "aggregator"
    .parameter "rate"

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/hardware/ssp/ADaemonRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->clearVar()V

    .line 46
    const/4 v0, 0x1

    goto :goto_0
.end method
