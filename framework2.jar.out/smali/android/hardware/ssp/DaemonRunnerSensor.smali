.class Landroid/hardware/ssp/DaemonRunnerSensor;
.super Landroid/hardware/ssp/ADaemonRunner;
.source "DaemonRunnerSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/DaemonRunnerSensor$2;
    }
.end annotation


# static fields
.field protected static final ACCELEROMETER_ARRAY_SIZE:I = 0x8

.field protected static final MAGNETICFIELD_ARRAY_SIZE:I = 0x8

.field protected static final ORIENTATION_ARRAY_SIZE:I = 0x4

.field private static final RUNNER_NAME:Ljava/lang/String;


# instance fields
.field private final accDel:[[F

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

.field private final magDel:[[F

.field private final oriDel:[[F

.field private final samplingTimeDel:[J

.field private final systemTimeDel:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerSensor;->RUNNER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 28
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunner;-><init>()V

    .line 49
    const/4 v0, 0x3

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->accDel:[[F

    .line 52
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->magDel:[[F

    .line 55
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->oriDel:[[F

    .line 58
    new-array v0, v2, [J

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->systemTimeDel:[J

    .line 61
    new-array v0, v2, [J

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->samplingTimeDel:[J

    .line 64
    new-instance v0, Landroid/hardware/ssp/DaemonRunnerSensor$1;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/DaemonRunnerSensor$1;-><init>(Landroid/hardware/ssp/DaemonRunnerSensor;)V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/ssp/DaemonRunnerSensor;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->systemTimeDel:[J

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/ssp/DaemonRunnerSensor;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->samplingTimeDel:[J

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->accDel:[[F

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->oriDel:[[F

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->magDel:[[F

    return-object v0
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    if-eqz v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    .line 407
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->clear()V

    goto :goto_0
.end method

.method protected disable()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 356
    return-void
.end method

.method protected enable()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getDataRate()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 332
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getDataRate()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 336
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getDataRate()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 340
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    if-eq v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getDataRate()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 346
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerSensor;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public pauseRunner()V
    .locals 0

    .prologue
    .line 305
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 306
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerSensor;->disable()V

    .line 307
    return-void
.end method

.method public prepareRunner()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 390
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 391
    const-string v0, "SensorManager is null"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method public resumeRunner()V
    .locals 0

    .prologue
    .line 316
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 317
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerSensor;->enable()V

    .line 318
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerSensor;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z
    .locals 1
    .parameter "aggregator"
    .parameter "rate"

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Landroid/hardware/ssp/ADaemonRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->clear()V

    .line 295
    const/4 v0, 0x1

    goto :goto_0
.end method
