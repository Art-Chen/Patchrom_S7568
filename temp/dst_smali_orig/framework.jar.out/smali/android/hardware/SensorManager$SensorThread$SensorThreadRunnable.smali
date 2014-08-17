.class Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$SensorThread;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SensorManager;->access$002(I)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    const/4 v3, 0x3

    new-array v0, v3, [F

    move-object/from16 v20, v0

    .local v20, values:[F
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .local v18, status:[I
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v19, v0

    .local v19, timestamp:[J
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-direct/range {p0 .. p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v3

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Landroid/hardware/SensorManager;->sensors_data_poll(I[F[I[J)I

    move-result v15

    .local v15, sensor:I
    const/4 v3, 0x0

    aget v10, v18, v3

    .local v10, accuracy:I
    sget-object v21, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v21

    const/4 v3, -0x1

    if-eq v15, v3, :cond_1

    :try_start_1
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v3, -0x1

    if-ne v15, v3, :cond_2

    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_sensors_data_poll() failed, we bail out: sensors="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/SensorManager;->sensors_destroy_queue(I)V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/hardware/SensorManager;->access$002(I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    monitor-exit v21

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .end local v10           #accuracy:I
    .end local v15           #sensor:I
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .restart local v10       #accuracy:I
    .restart local v15       #sensor:I
    :cond_3
    :try_start_3
    sget-object v3, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Sensor;

    .local v16, sensorObject:Landroid/hardware/Sensor;
    if-eqz v16, :cond_8

    const/4 v13, 0x0

    .local v13, isGyroCalibrated:Z
    const/4 v11, 0x0

    .local v11, gyroCalibrated:[F
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/SensorManager$ListenerDelegate;

    .local v14, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-static {}, Landroid/hardware/SensorManager;->sensors_calibration_available()I

    move-result v3

    if-eqz v3, :cond_4

    if-nez v13, :cond_4

    invoke-virtual {v14}, Landroid/hardware/SensorManager$ListenerDelegate;->getGyroCalibrationLevel()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v13, 0x1

    const/16 v9, 0xa

    .local v9, minDelay:I
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v9

    const/4 v3, 0x0

    aget v3, v20, v3

    float-to-double v3, v3

    const/4 v5, 0x1

    aget v5, v20, v5

    float-to-double v5, v5

    const/4 v7, 0x2

    aget v7, v20, v7

    float-to-double v7, v7

    invoke-static/range {v3 .. v9}, Landroid/hardware/SensorManager;->sensors_calibration_get_gyro(DDDI)[F

    move-result-object v11

    if-eqz v11, :cond_6

    .end local v9           #minDelay:I
    :cond_4
    :goto_3
    if-eqz v11, :cond_7

    invoke-virtual {v14}, Landroid/hardware/SensorManager$ListenerDelegate;->getGyroCalibrationLevel()I

    move-result v3

    if-lez v3, :cond_7

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v11, v1, v10}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .restart local v9       #minDelay:I
    :cond_6
    const-string v3, "SensorManager"

    const-string v4, "  GYRO CAL: calibration gyro is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v9           #minDelay:I
    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2, v10}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    goto :goto_4

    .end local v11           #gyroCalibrated:[F
    .end local v12           #i:I
    .end local v13           #isGyroCalibrated:Z
    .end local v14           #listener:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v17           #size:I
    :cond_8
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
