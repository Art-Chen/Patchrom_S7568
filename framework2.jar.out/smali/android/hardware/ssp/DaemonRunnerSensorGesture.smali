.class Landroid/hardware/ssp/DaemonRunnerSensorGesture;
.super Landroid/hardware/ssp/ADaemonRunner;
.source "DaemonRunnerSensorGesture.java"


# static fields
.field private static final RUNNER_NAME:Ljava/lang/String;


# instance fields
.field private mGestureSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GESTURE_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->RUNNER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunner;-><init>()V

    .line 41
    new-instance v0, Landroid/hardware/ssp/DaemonRunnerSensorGesture$1;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/DaemonRunnerSensorGesture$1;-><init>(Landroid/hardware/ssp/DaemonRunnerSensorGesture;)V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->mGestureSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->mGestureSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;

    .line 175
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->mGestureSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;->clear()V

    goto :goto_0
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public pauseRunner()V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 88
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->disable()V

    .line 89
    return-void
.end method

.method public prepareRunner()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->mSensorManager:Landroid/hardware/SensorManager;

    .line 158
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "SensorManager is null"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public resumeRunner()V
    .locals 0

    .prologue
    .line 98
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 99
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->enable()V

    .line 100
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z
    .locals 1
    .parameter "aggregator"
    .parameter "rate"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/hardware/ssp/ADaemonRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->mGestureSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;->clear()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method
