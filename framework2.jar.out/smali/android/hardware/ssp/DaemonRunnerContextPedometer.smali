.class Landroid/hardware/ssp/DaemonRunnerContextPedometer;
.super Landroid/hardware/ssp/ADaemonRunnerContext;
.source "DaemonRunnerContextPedometer.java"


# static fields
.field private static final RUNNER_NAME:Ljava/lang/String;


# instance fields
.field private mAccumulateCalorie:D

.field private mAccumulateStepCount:J

.field private mAccumulateStepLength:D

.field private mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

.field private mUserHeight:D

.field private mUserWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->RUNNER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVar()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateStepCount:J

    .line 89
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateStepLength:D

    .line 90
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateCalorie:D

    .line 92
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    .line 93
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->clear()V

    .line 95
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->getUserHeight()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mUserHeight:D

    .line 96
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->getUserWeight()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mUserWeight:D

    .line 98
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->notifyContext()V

    .line 99
    return-void
.end method

.method protected disable()V
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerSensorHub;->getInstance()Landroid/hardware/ssp/DaemonManagerSensorHub;

    move-result-object v0

    const/16 v1, -0x4e

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerSensorHub;->sendCmdToSensorHub(BB[B)V

    .line 79
    return-void
.end method

.method protected enable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 54
    .local v0, data:[B
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mUserHeight:D

    double-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 55
    const/4 v1, 0x1

    iget-wide v2, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mUserWeight:D

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 57
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerSensorHub;->getInstance()Landroid/hardware/ssp/DaemonManagerSensorHub;

    move-result-object v1

    const/16 v2, -0x4f

    invoke-virtual {v1, v2, v4, v0}, Landroid/hardware/ssp/DaemonManagerSensorHub;->sendCmdToSensorHub(BB[B)V

    .line 64
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public notifyContext()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->notifyPedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V

    .line 172
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public updateContext(Landroid/hardware/ssp/DaemonParserContext;)V
    .locals 12
    .parameter "parser"

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v9, 0x4059

    .line 132
    invoke-virtual {p1, v11}, Landroid/hardware/ssp/DaemonParserContext;->getParser(B)Landroid/hardware/ssp/ADaemonParserData;

    move-result-object v3

    .line 135
    .local v3, pedometerParser:Landroid/hardware/ssp/ADaemonParserData;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->display()V

    .line 143
    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ssp/IDaemonParserMsgType;

    .local v1, next:Landroid/hardware/ssp/IDaemonParserMsgType;
    move-object v2, v1

    .line 144
    check-cast v2, Landroid/hardware/ssp/DaemonContextPedometer;

    .line 146
    .local v2, pedoMsg:Landroid/hardware/ssp/DaemonContextPedometer;
    iget-wide v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateStepCount:J

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getStepCount()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateStepCount:J

    .line 147
    iget-wide v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateStepLength:D

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getStepLength()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v9

    add-double/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateStepLength:D

    .line 148
    iget-wide v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateCalorie:D

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getCalory()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v9

    add-double/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateCalorie:D

    .line 150
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    iget-wide v5, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateStepCount:J

    iput-wide v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepCount:J

    .line 151
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    iget-wide v5, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateCalorie:D

    iput-wide v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->calorie:D

    .line 152
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    iget-wide v5, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mAccumulateStepLength:D

    iput-wide v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->distance:D

    .line 153
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getSpeed()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4024

    div-double/2addr v5, v7

    iput-wide v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->speed:D

    .line 154
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    iput v11, v4, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepStatusST:I

    .line 155
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->mPedometerContext:Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPedometer;->getStepStatus()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepStatusLT:I

    .line 157
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerContextPedometer;->notifyContext()V

    goto :goto_1

    .line 160
    .end local v1           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    .end local v2           #pedoMsg:Landroid/hardware/ssp/DaemonContextPedometer;
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->clear()V

    goto :goto_0
.end method
