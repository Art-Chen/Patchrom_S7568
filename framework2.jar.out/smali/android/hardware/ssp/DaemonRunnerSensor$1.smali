.class Landroid/hardware/ssp/DaemonRunnerSensor$1;
.super Ljava/lang/Object;
.source "DaemonRunnerSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonRunnerSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private accCnt:I

.field private accIdx:I

.field private magCnt:I

.field private magIdx:I

.field private mbAccReady:Z

.field private mbMagReady:Z

.field private mbOriReady:Z

.field private oriCnt:I

.field private oriIdx:I

.field private prevSamplingTime:J

.field final synthetic this$0:Landroid/hardware/ssp/DaemonRunnerSensor;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/DaemonRunnerSensor;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->prevSamplingTime:J

    .line 67
    iput v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    .line 68
    iput v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    .line 69
    iput v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    .line 71
    iput v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accCnt:I

    .line 72
    iput v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magCnt:I

    .line 73
    iput v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriCnt:I

    .line 75
    iput-boolean v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbAccReady:Z

    .line 76
    iput-boolean v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbMagReady:Z

    .line 77
    iput-boolean v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbOriReady:Z

    return-void
.end method

.method private deliverSensorData(J)V
    .locals 10
    .parameter "curSysTime"

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 198
    iget-boolean v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbAccReady:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbMagReady:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbOriReady:Z

    if-nez v4, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-array v2, v8, [J

    .line 203
    .local v2, mSystemTimeDel:[J
    new-array v1, v8, [J

    .line 205
    .local v1, mSamplingTimeDel:[J
    const/4 v0, 0x7

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 206
    iget v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    .line 207
    iget v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    if-gez v4, :cond_2

    .line 208
    iget v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    .line 210
    :cond_2
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->systemTimeDel:[J
    invoke-static {v4}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$100(Landroid/hardware/ssp/DaemonRunnerSensor;)[J

    move-result-object v4

    iget v5, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    aget-wide v4, v4, v5

    aput-wide v4, v2, v0

    .line 211
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->samplingTimeDel:[J
    invoke-static {v4}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$200(Landroid/hardware/ssp/DaemonRunnerSensor;)[J

    move-result-object v4

    iget v5, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    aget-wide v4, v4, v5

    aput-wide v4, v1, v0

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 214
    :cond_3
    new-instance v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;

    invoke-direct {v3}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;-><init>()V

    .line 215
    .local v3, rawSensorData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;
    iput-wide p1, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->curSysTime:J

    .line 216
    iput-object v2, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->sysTime:[J

    .line 217
    iput-object v1, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->samplingTime:[J

    .line 218
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->accDel:[[F
    invoke-static {v4}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$300(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v4

    iget v5, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    const/4 v6, 0x3

    invoke-direct {p0, v4, v8, v5, v6}, Landroid/hardware/ssp/DaemonRunnerSensor$1;->getFinalSensorData([[FIII)[[F

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->accelerometer:[[F

    .line 220
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->oriDel:[[F
    invoke-static {v4}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$400(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v4

    iget v5, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    invoke-direct {p0, v4, v9, v5, v9}, Landroid/hardware/ssp/DaemonRunnerSensor$1;->getFinalSensorData([[FIII)[[F

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->orientation:[[F

    .line 222
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->magDel:[[F
    invoke-static {v4}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$500(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v4

    iget v5, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    invoke-direct {p0, v4, v8, v5, v9}, Landroid/hardware/ssp/DaemonRunnerSensor$1;->getFinalSensorData([[FIII)[[F

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->magnetic:[[F

    .line 225
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->updateRawSensorArray(Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;)V

    .line 228
    iput-boolean v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbAccReady:Z

    .line 229
    iput-boolean v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbMagReady:Z

    .line 230
    iput-boolean v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbOriReady:Z

    .line 231
    iput v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    .line 232
    iput v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    .line 233
    iput v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    .line 234
    iput v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accCnt:I

    .line 235
    iput v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magCnt:I

    .line 236
    iput v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriCnt:I

    goto/16 :goto_0
.end method

.method private getFinalSensorData([[FIII)[[F
    .locals 6
    .parameter "sensorDel"
    .parameter "size"
    .parameter "index"
    .parameter "arrSize"

    .prologue
    .line 241
    const/4 v4, 0x4

    filled-new-array {p2, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 242
    .local v0, arrTmp:[[F
    move v2, p3

    .line 244
    .local v2, idx:I
    add-int/lit8 v1, p2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 245
    add-int/lit8 v2, v2, -0x1

    .line 246
    if-gez v2, :cond_0

    .line 247
    add-int/2addr v2, p2

    .line 250
    :cond_0
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p4, :cond_1

    .line 251
    aget-object v4, v0, v1

    aget-object v5, p1, v2

    aget v5, v5, v3

    aput v5, v4, v3

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 255
    .end local v3           #j:I
    :cond_2
    return-object v0
.end method

.method private notifySensorData(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)V
    .locals 2
    .parameter "aggregator"

    .prologue
    .line 260
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerSensor$2;->$SwitchMap$android$hardware$ssp$DaemonConstants$SSPAggregators:[I

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonRunnerSensor;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    :pswitch_0
    return-void

    .line 272
    :pswitch_1
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->getInstance()Landroid/hardware/ssp/DaemonAggregatorRawSensor;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v1}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorRawSensor;->notifyRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 80
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v2, 0x3

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->isRun()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->accelerometer:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 91
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->accelerometer:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 92
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->accelerometer:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 93
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->accAccuracy:F

    .line 95
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->setSysTime(J)V

    .line 96
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->timeStamp:J

    .line 98
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    if-ne v0, v1, :cond_5

    .line 99
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->systemTimeDel:[J
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$100(Landroid/hardware/ssp/DaemonRunnerSensor;)[J

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v2}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->getSysTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 101
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->prevSamplingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 102
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->samplingTimeDel:[J
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$200(Landroid/hardware/ssp/DaemonRunnerSensor;)[J

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 107
    :goto_1
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->systemTimeDel:[J
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$100(Landroid/hardware/ssp/DaemonRunnerSensor;)[J

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    aget-wide v0, v0, v1

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->prevSamplingTime:J

    .line 109
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->accDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$300(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 110
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->accDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$300(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 111
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->accDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$300(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 113
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    .line 114
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    if-ne v0, v9, :cond_2

    .line 115
    iput v6, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    .line 118
    :cond_2
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accCnt:I

    .line 119
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accCnt:I

    if-lt v0, v9, :cond_3

    .line 120
    iput-boolean v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbAccReady:Z

    .line 123
    :cond_3
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->getSysTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonRunnerSensor$1;->deliverSensorData(J)V

    goto/16 :goto_0

    .line 104
    :cond_4
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->samplingTimeDel:[J
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$200(Landroid/hardware/ssp/DaemonRunnerSensor;)[J

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->systemTimeDel:[J
    invoke-static {v2}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$100(Landroid/hardware/ssp/DaemonRunnerSensor;)[J

    move-result-object v2

    iget v3, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->accIdx:I

    aget-wide v2, v2, v3

    iget-wide v4, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->prevSamplingTime:J

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_1

    .line 127
    :cond_5
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonRunnerSensor$1;->notifySensorData(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)V

    goto/16 :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->orientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 133
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->orientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 134
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->orientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 135
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->oriAccuracy:F

    .line 137
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->oriDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$400(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 139
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->oriDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$400(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 140
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->oriDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$400(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 141
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->oriDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$400(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 143
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    .line 144
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 145
    iput v6, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriIdx:I

    .line 147
    :cond_6
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriCnt:I

    .line 148
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->oriCnt:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    .line 149
    iput-boolean v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbOriReady:Z

    .line 152
    :cond_7
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->getSysTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonRunnerSensor$1;->deliverSensorData(J)V

    goto/16 :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->magnetic:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 159
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->magnetic:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 160
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->magnetic:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 161
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->magAccuracy:F

    .line 163
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->magDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$500(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 165
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->magDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$500(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 166
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->magDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$500(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 167
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->magDel:[[F
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$500(Landroid/hardware/ssp/DaemonRunnerSensor;)[[F

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 169
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    .line 170
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    if-ne v0, v9, :cond_8

    .line 171
    iput v6, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magIdx:I

    .line 174
    :cond_8
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magCnt:I

    .line 175
    iget v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->magCnt:I

    if-lt v0, v9, :cond_9

    .line 176
    iput-boolean v7, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->mbMagReady:Z

    .line 179
    :cond_9
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->getSysTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonRunnerSensor$1;->deliverSensorData(J)V

    goto/16 :goto_0

    .line 185
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->gyroscope:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 186
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->gyroscope:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 187
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->gyroscope:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 188
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensor$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensor;

    #getter for: Landroid/hardware/ssp/DaemonRunnerSensor;->mSensorRawData:Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerSensor;->access$000(Landroid/hardware/ssp/DaemonRunnerSensor;)Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-result-object v0

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->gyroAccuracy:F

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
