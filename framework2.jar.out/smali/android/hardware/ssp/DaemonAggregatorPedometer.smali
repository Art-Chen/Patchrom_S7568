.class Landroid/hardware/ssp/DaemonAggregatorPedometer;
.super Landroid/hardware/ssp/ADaemonAggregator;
.source "DaemonAggregatorPedometer.java"


# static fields
.field protected static final DEFAULT_HEIGHT:D = 170.0

.field protected static final DEFAULT_WEIGHT:D = 60.0


# instance fields
.field private mPedometerContextRunner:Landroid/hardware/ssp/DaemonRunnerContextPedometer;

.field private mUserHeight:D

.field private mUserWeight:D


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 57
    const-wide v0, 0x4065400000000000L

    const-wide/high16 v2, 0x404e

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonAggregatorPedometer;-><init>(DD)V

    .line 58
    return-void
.end method

.method protected constructor <init>(DD)V
    .locals 0
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonAggregator;-><init>()V

    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->setUserHeight(D)V

    .line 50
    invoke-virtual {p0, p3, p4}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->setUserWeight(D)V

    .line 51
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mPedometerContextRunner:Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mPedometerContextRunner:Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->clearVar()V

    goto :goto_0
.end method

.method protected getUserHeight()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mUserHeight:D

    return-wide v0
.end method

.method protected getUserWeight()D
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mUserWeight:D

    return-wide v0
.end method

.method protected notifyPedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonObserverAggregator;->notifyPedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V

    goto :goto_0
.end method

.method protected setUserHeight(D)V
    .locals 3
    .parameter "height"

    .prologue
    .line 141
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mUserHeight:D

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mUserHeight:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method protected setUserWeight(D)V
    .locals 3
    .parameter "weight"

    .prologue
    .line 152
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mUserWeight:D

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserWeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mUserWeight:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 67
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->clear()V

    .line 70
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mPedometerContextRunner:Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-static {}, Landroid/hardware/ssp/DaemonManagerDataRate;->getInstance()Landroid/hardware/ssp/DaemonManagerDataRate;

    move-result-object v4

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mPedometerContextRunner:Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    .line 78
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getContextRunner()Landroid/hardware/ssp/DaemonRunnerContext;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mPedometerContextRunner:Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunnerContext;->addContextRunner(Landroid/hardware/ssp/ADaemonRunnerContext;)V

    .line 82
    :cond_0
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->start()V

    .line 83
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 94
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getContextRunner()Landroid/hardware/ssp/DaemonRunnerContext;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mPedometerContextRunner:Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunnerContext;->removeContextRunner(Landroid/hardware/ssp/ADaemonRunnerContext;)V

    .line 101
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorPedometer;->mPedometerContextRunner:Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V

    goto :goto_0
.end method
