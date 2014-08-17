.class Landroid/hardware/ssp/DaemonAggregatorLPHP;
.super Landroid/hardware/ssp/ADaemonAggregator;
.source "DaemonAggregatorLPHP.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;
.implements Landroid/hardware/ssp/IDaemonNotificationPowerSleep;
.implements Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;


# static fields
.field private static final ACCURACY_REQUIREMENT_DEFAULT:I = 0x64

.field private static final FILE_NAME_ALL_LOCATION:Ljava/lang/String; = "AllLocation"

.field private static final FILE_NAME_PDR_LOCATION:Ljava/lang/String; = "PdrLocation"

.field private static final HYPOS_LPHP_FILTER_INITIALIZED:I = 0x1

.field private static final HYPOS_LPHP_MODE_GPSOFFWPSOFF:I = 0x0

.field private static final HYPOS_LPHP_MODE_GPSOFFWPSON:I = 0x1

.field private static final HYPOS_LPHP_MODE_GPSONWPSOFF:I = 0x2

.field private static final HYPOS_LPHP_MODE_GPSONWPSON:I = 0x3

.field protected static final SYSFS_CONTEXT:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/ssp_context"

.field private static volatile instance:Landroid/hardware/ssp/DaemonAggregatorLPHP;


# instance fields
.field private mAPSleep:Z

.field private mCurAccuracy:F

.field private mCurAltitude:D

.field private mCurLatitude:D

.field private mCurLongitude:D

.field private mCurSysTime:J

.field private mCurTimeStamp:J

.field private mGpsRunner:Landroid/hardware/ssp/DaemonRunnerGPS;

.field private mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

.field private mMovingUpdataCnt:I

.field private mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

.field private mUserWantedAccuracy:I

.field private mlSysTimeHybrid:J

.field private mlTimeStampHybrid:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonAggregator;-><init>()V

    .line 68
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlSysTimeHybrid:J

    .line 71
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlTimeStampHybrid:J

    return-void
.end method

.method private getDate(J)[I
    .locals 7
    .parameter "time"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 620
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 622
    .local v0, mmUtcTime:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 623
    .local v1, utcDate:Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 625
    const/4 v2, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 626
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    .line 627
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v0, v5

    .line 628
    const/4 v2, 0x3

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 629
    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 630
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v0, v6

    .line 632
    return-object v0
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->instance:Landroid/hardware/ssp/DaemonAggregatorLPHP;

    if-nez v0, :cond_1

    .line 119
    const-class v1, Landroid/hardware/ssp/DaemonAggregatorLPHP;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->instance:Landroid/hardware/ssp/DaemonAggregatorLPHP;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorLPHP;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->instance:Landroid/hardware/ssp/DaemonAggregatorLPHP;

    .line 123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->instance:Landroid/hardware/ssp/DaemonAggregatorLPHP;

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isFilterInitialized()Z
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method private notifyLocationContext()V
    .locals 2

    .prologue
    .line 550
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    if-nez v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonObserverAggregator;->notifyLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V

    goto :goto_0
.end method

.method private requestGpsData(JJ)V
    .locals 25
    .parameter "sysTime"
    .parameter "timeStamp"

    .prologue
    .line 566
    const/4 v1, 0x3

    new-array v6, v1, [D

    .line 567
    .local v6, daLocationHybrid:[D
    const/4 v1, 0x3

    new-array v7, v1, [F

    .line 568
    .local v7, faLocationExtHybrid:[F
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v24, v0

    .line 573
    .local v24, val:[I
    const/4 v1, 0x0

    aget v1, v24, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v8, 0x1

    .line 578
    .local v8, mbLocationHybridValid:Z
    :goto_0
    if-eqz v8, :cond_0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 579
    invoke-direct/range {v1 .. v8}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->setLocationContext(JJ[D[FZ)V

    .line 582
    invoke-direct/range {p0 .. p0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->notifyLocationContext()V

    .line 584
    const/4 v1, 0x0

    aget-wide v14, v6, v1

    const/4 v1, 0x1

    aget-wide v16, v6, v1

    const/4 v1, 0x2

    aget-wide v18, v6, v1

    const/4 v1, 0x2

    aget v20, v7, v1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v20}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->setCurLocationforHubPDR(JJDDDF)V

    .line 588
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v9

    const-string v10, "AllLocation"

    const/4 v1, 0x2

    aget v13, v7, v1

    const/4 v1, 0x0

    aget-wide v14, v6, v1

    const/4 v1, 0x1

    aget-wide v16, v6, v1

    const/4 v1, 0x2

    aget-wide v18, v6, v1

    const/4 v1, 0x0

    aget v20, v7, v1

    const/4 v1, 0x1

    aget v21, v7, v1

    move-wide/from16 v11, p1

    move-wide/from16 v22, p3

    invoke-virtual/range {v9 .. v23}, Landroid/hardware/ssp/DaemonProviderFileLogging;->loggingForKML(Ljava/lang/String;JFDDDFFJ)V

    .line 594
    :cond_0
    return-void

    .line 573
    .end local v8           #mbLocationHybridValid:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private sendDataToHub(DDDFI)Z
    .locals 32
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "accuracy"
    .parameter "userWantedAccuracy"

    .prologue
    .line 689
    :try_start_0
    new-instance v25, Ljava/io/FileOutputStream;

    new-instance v30, Ljava/io/File;

    const-string v31, "/sys/class/sensors/ssp_sensor/ssp_context"

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 692
    .local v25, out:Ljava/io/OutputStream;
    const/16 v30, 0x1

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v11

    .line 697
    .local v11, f_type:[B
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerAKM;->getInstance()Landroid/hardware/ssp/DaemonManagerAKM;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/ssp/DaemonManagerAKM;->getOrientation()Landroid/hardware/ssp/DaemonNonContextOrientation;

    move-result-object v24

    .line 699
    .local v24, ori:Landroid/hardware/ssp/DaemonNonContextOrientation;
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHdst()I

    move-result v30

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    .line 700
    .local v12, hdst:[B
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoX()I

    move-result v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    .line 701
    .local v13, ho_x:[B
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoY()I

    move-result v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    .line 702
    .local v14, ho_y:[B
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoZ()I

    move-result v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v15

    .line 703
    .local v15, ho_z:[B
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefX()I

    move-result v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v16

    .line 704
    .local v16, href_x:[B
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefY()I

    move-result v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v17

    .line 705
    .local v17, href_y:[B
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefZ()I

    move-result v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    .line 707
    .local v18, href_z:[B
    const/16 v30, 0x2

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v26

    .line 711
    .local v26, s_type:[B
    const-wide v30, 0x412e848000000000L

    mul-double v30, v30, p1

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x4

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v20

    .line 713
    .local v20, latBuf:[B
    const-wide v30, 0x412e848000000000L

    mul-double v30, v30, p3

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x4

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v23

    .line 715
    .local v23, longBuf:[B
    const-wide v30, 0x408f400000000000L

    mul-double v30, v30, p5

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x3

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    .line 718
    .local v6, altiBuf:[B
    const/16 v30, 0x3

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    .line 722
    .local v4, a_type:[B
    const/16 v30, 0x1

    move/from16 v0, p8

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v29

    .line 724
    .local v29, userWantedAccuracyBuf:[B
    move/from16 v0, p7

    float-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    .line 727
    .local v5, accuracyBuf:[B
    array-length v0, v11

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    array-length v0, v12

    move/from16 v31, v0

    add-int v30, v30, v31

    array-length v0, v13

    move/from16 v31, v0

    add-int v30, v30, v31

    array-length v0, v14

    move/from16 v31, v0

    add-int v30, v30, v31

    array-length v0, v15

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v31, v0

    add-int v30, v30, v31

    array-length v0, v6

    move/from16 v31, v0

    add-int v30, v30, v31

    array-length v0, v4

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    add-int v30, v30, v31

    array-length v0, v5

    move/from16 v31, v0

    add-int v9, v30, v31

    .line 732
    .local v9, bufsize:I
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-static {v9, v0}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v22

    .line 734
    .local v22, lenBuf:[B
    new-array v8, v9, [B

    .line 735
    .local v8, buffer:[B
    const/16 v27, 0x0

    .line 736
    .local v27, size:I
    const/16 v30, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 737
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 738
    const/16 v30, 0x0

    array-length v0, v11

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v11, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    array-length v0, v11

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 740
    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v12, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    array-length v0, v12

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 742
    const/16 v30, 0x0

    array-length v0, v13

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v13, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    array-length v0, v13

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 744
    const/16 v30, 0x0

    array-length v0, v14

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v14, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    array-length v0, v14

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 746
    const/16 v30, 0x0

    array-length v0, v15

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v15, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    array-length v0, v15

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 748
    const/16 v30, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 750
    const/16 v30, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 752
    const/16 v30, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 754
    const/16 v30, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v26

    move/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 756
    const/16 v30, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 758
    const/16 v30, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 760
    const/16 v30, 0x0

    array-length v0, v6

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v6, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    array-length v0, v6

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 762
    const/16 v30, 0x0

    array-length v0, v4

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v4, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    array-length v0, v4

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 764
    const/16 v30, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    .line 767
    const/16 v30, 0x0

    array-length v0, v5

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v5, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    const-string v30, "send Location To Driver"

    invoke-static/range {v30 .. v30}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 770
    move-object v7, v8

    .local v7, arr$:[B
    array-length v0, v7

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-byte v28, v7, v19

    .line 771
    .local v28, t:B
    invoke-static/range {v28 .. v28}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 770
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 774
    .end local v28           #t:B
    :cond_0
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 775
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 784
    const/16 v30, 0x1

    .end local v4           #a_type:[B
    .end local v5           #accuracyBuf:[B
    .end local v6           #altiBuf:[B
    .end local v7           #arr$:[B
    .end local v8           #buffer:[B
    .end local v9           #bufsize:I
    .end local v11           #f_type:[B
    .end local v12           #hdst:[B
    .end local v13           #ho_x:[B
    .end local v14           #ho_y:[B
    .end local v15           #ho_z:[B
    .end local v16           #href_x:[B
    .end local v17           #href_y:[B
    .end local v18           #href_z:[B
    .end local v19           #i$:I
    .end local v20           #latBuf:[B
    .end local v21           #len$:I
    .end local v22           #lenBuf:[B
    .end local v23           #longBuf:[B
    .end local v24           #ori:Landroid/hardware/ssp/DaemonNonContextOrientation;
    .end local v25           #out:Ljava/io/OutputStream;
    .end local v26           #s_type:[B
    .end local v27           #size:I
    .end local v29           #userWantedAccuracyBuf:[B
    :goto_1
    return v30

    .line 776
    :catch_0
    move-exception v10

    .line 777
    .local v10, e:Ljava/io/FileNotFoundException;
    invoke-static {v10}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    .line 778
    const/16 v30, 0x0

    goto :goto_1

    .line 779
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 780
    .local v10, e:Ljava/io/IOException;
    invoke-static {v10}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    .line 781
    const/16 v30, 0x0

    goto :goto_1
.end method

.method private sendLocationOrientationToDriver()V
    .locals 9

    .prologue
    .line 650
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurLatitude:D

    iget-wide v3, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurLongitude:D

    iget-wide v5, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurAltitude:D

    iget v7, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurAccuracy:F

    iget v8, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mUserWantedAccuracy:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->sendDataToHub(DDDFI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    const-string v0, "Fail to send location and orientation to driver."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurAccuracy:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserWantedAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mUserWantedAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method private setCurLocationforHubPDR(JJDDDF)V
    .locals 3
    .parameter "sysTime"
    .parameter "timeStamp"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "accuracy"

    .prologue
    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set() CurSysTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set() CurTimeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set() CurLatitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set() CurLongitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p7, p8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set() CurAltitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p9, p10}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set() CurAccuracy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v1, p11

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 851
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurSysTime:J

    .line 852
    iput-wide p3, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurTimeStamp:J

    .line 853
    iput-wide p5, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurLatitude:D

    .line 854
    iput-wide p7, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurLongitude:D

    .line 855
    iput-wide p9, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurAltitude:D

    .line 856
    iput p11, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurAccuracy:F

    .line 857
    return-void
.end method

.method private setLocationContext(JJ[D[FZ)V
    .locals 7
    .parameter "sysTime"
    .parameter "timeStamp"
    .parameter "daLocationHybrid"
    .parameter "faLocationExtHybrid"
    .parameter "mbLocationHybridValid"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 813
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->setSysTime(J)V

    .line 814
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    iput-wide p3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->timeStamp:J

    .line 815
    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    aget-wide v2, v0, v4

    iput-wide v2, v1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->latitude:D

    .line 816
    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    aget-wide v2, v0, v5

    iput-wide v2, v1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->longitude:D

    .line 817
    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    aget-wide v2, v0, v6

    iput-wide v2, v1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->altitude:D

    .line 818
    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v4

    iput v0, v1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->heading:F

    .line 819
    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v5

    iput v0, v1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->speed:F

    .line 820
    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v6

    iput v0, v1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->accuracy:F

    .line 821
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    iput-boolean p7, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->valid:Z

    .line 822
    return-void
.end method

.method private updatePdrData(Landroid/hardware/ssp/DaemonContexts$SSPPdr;)V
    .locals 19
    .parameter "context"

    .prologue
    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->getSysTime()J

    move-result-wide v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->timeStamp:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->requestGpsData(JJ)V

    .line 496
    const/4 v1, 0x3

    new-array v0, v1, [D

    move-object/from16 v16, v0

    .line 497
    .local v16, daLocationHybrid:[D
    const/4 v1, 0x3

    new-array v0, v1, [F

    move-object/from16 v17, v0

    .line 498
    .local v17, faLocationExtHybrid:[F
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v18, v0

    .line 504
    .local v18, val:[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v16, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, v16, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accuracy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, v17, v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v1

    const-string v2, "PdrLocation"

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->getSysTime()J

    move-result-wide v3

    const/4 v5, 0x2

    aget v5, v17, v5

    const/4 v6, 0x0

    aget-wide v6, v16, v6

    const/4 v8, 0x1

    aget-wide v8, v16, v8

    const/4 v10, 0x2

    aget-wide v10, v16, v10

    const/4 v12, 0x0

    aget v12, v17, v12

    const/4 v13, 0x1

    aget v13, v17, v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->timeStamp:J

    invoke-virtual/range {v1 .. v15}, Landroid/hardware/ssp/DaemonProviderFileLogging;->loggingForKML(Ljava/lang/String;JFDDDFFJ)V

    .line 512
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 251
    iput v4, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mMovingUpdataCnt:I

    .line 252
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlSysTimeHybrid:J

    .line 253
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlTimeStampHybrid:J

    .line 255
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurTimeStamp:J

    .line 256
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurLatitude:D

    .line 257
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurLongitude:D

    .line 258
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurAltitude:D

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurAccuracy:F

    .line 261
    iput-boolean v4, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mAPSleep:Z

    .line 262
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mUserWantedAccuracy:I

    .line 264
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPLocation;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    .line 265
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->clear()V

    .line 274
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPdrAggregator()Landroid/hardware/ssp/DaemonAggregatorPdr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPdr;->clear()V

    .line 275
    return-void
.end method

.method public finalizeAggregator()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 152
    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mGpsRunner:Landroid/hardware/ssp/DaemonRunnerGPS;

    .line 153
    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

    .line 156
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->clear()V

    .line 157
    return-void
.end method

.method protected getLocationContext()Landroid/hardware/ssp/DaemonContexts$SSPLocation;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mLocationContext:Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    return-object v0
.end method

.method protected getUserWantedAccuracy()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mUserWantedAccuracy:I

    return v0
.end method

.method public initializeAggregator()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 140
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->clear()V

    .line 141
    return-void
.end method

.method public recvAPSleepNoti()V
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mAPSleep:Z

    .line 531
    return-void
.end method

.method public recvAPWakeUpNoti()V
    .locals 1

    .prologue
    .line 541
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mAPSleep:Z

    .line 543
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerPower;->getInstance()Landroid/hardware/ssp/DaemonManagerPower;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerPower;->acquireAPWakeLock()V

    .line 544
    return-void
.end method

.method protected sendOrientationToDriver()V
    .locals 9

    .prologue
    const-wide/16 v1, 0x0

    .line 664
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v3, v1

    move-wide v5, v1

    invoke-direct/range {v0 .. v8}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->sendDataToHub(DDDFI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    const-string v0, "Fail to send orientation to driver."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 667
    :cond_0
    return-void
.end method

.method protected setAccuracy(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 610
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 166
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->clear()V

    .line 169
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addPdrObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;)V

    .line 171
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getPowerObserver()Landroid/hardware/ssp/DaemonObserverPower;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverPower;->addPowerSleepObserver(Landroid/hardware/ssp/IDaemonNotificationPowerSleep;)V

    .line 173
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getPowerObserver()Landroid/hardware/ssp/DaemonObserverPower;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverPower;->addPowerWakeupObserver(Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;)V

    .line 176
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-static {}, Landroid/hardware/ssp/DaemonManagerDataRate;->getInstance()Landroid/hardware/ssp/DaemonManagerDataRate;

    move-result-object v4

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerSensor;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

    .line 184
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GPS:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mGpsRunner:Landroid/hardware/ssp/DaemonRunnerGPS;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    new-instance v4, Landroid/hardware/ssp/DaemonManagerDataRate;

    invoke-direct {v4}, Landroid/hardware/ssp/DaemonManagerDataRate;-><init>()V

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerGPS;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mGpsRunner:Landroid/hardware/ssp/DaemonRunnerGPS;

    .line 192
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPdrAggregator()Landroid/hardware/ssp/DaemonAggregatorPdr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPdr;->start()V

    .line 194
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v0

    const-string v1, "AllLocation"

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderFileLogging;->startLogging(Ljava/lang/String;)Z

    .line 196
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v0

    const-string v1, "PdrLocation"

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderFileLogging;->startLogging(Ljava/lang/String;)Z

    .line 199
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerPower;->getInstance()Landroid/hardware/ssp/DaemonManagerPower;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerPower;->acquireAPWakeLock()V

    .line 202
    :cond_0
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->start()V

    .line 203
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 214
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v0

    const-string v1, "AllLocation"

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderFileLogging;->stopLogging(Ljava/lang/String;)Z

    .line 220
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v0

    const-string v1, "PdrLocation"

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderFileLogging;->stopLogging(Ljava/lang/String;)Z

    .line 223
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPdrAggregator()Landroid/hardware/ssp/DaemonAggregatorPdr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPdr;->stop()V

    .line 225
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V

    .line 227
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mGpsRunner:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V

    .line 230
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removePdrObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;)V

    .line 232
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getPowerObserver()Landroid/hardware/ssp/DaemonObserverPower;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverPower;->removePowerSleepObserver(Landroid/hardware/ssp/IDaemonNotificationPowerSleep;)V

    .line 234
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getPowerObserver()Landroid/hardware/ssp/DaemonObserverPower;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverPower;->removePowerWakeupObserver(Landroid/hardware/ssp/IDaemonNotificationPowerWakeup;)V

    .line 241
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerPower;->getInstance()Landroid/hardware/ssp/DaemonManagerPower;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerPower;->releaseAPWakeLock()V

    goto :goto_0
.end method

.method public updatePdrContext(Landroid/hardware/ssp/DaemonContexts$SSPPdr;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/high16 v5, 0x4059

    .line 418
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurSysTime:J

    long-to-double v1, v1

    iget-wide v3, p1, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->deltaTime:D

    add-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurSysTime:J

    .line 419
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurTimeStamp:J

    long-to-double v1, v1

    iget-wide v3, p1, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->deltaTime:D

    add-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurTimeStamp:J

    .line 421
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPPdr;-><init>()V

    .line 422
    .local v0, pdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurSysTime:J

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->setSysTime(J)V

    .line 423
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurTimeStamp:J

    iput-wide v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->timeStamp:J

    .line 424
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurLatitude:D

    iput-wide v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->latitude:D

    .line 425
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mCurLongitude:D

    iput-wide v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->longitude:D

    .line 426
    iget-wide v1, p1, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->speed:D

    div-double/2addr v1, v5

    iput-wide v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->speed:D

    .line 427
    iget-wide v1, p1, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->deltaTime:D

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->deltaTime:D

    .line 428
    iget-wide v1, p1, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->heading:D

    div-double/2addr v1, v5

    iput-wide v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->heading:D

    .line 429
    iget v1, p1, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->doe:I

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->doe:I

    .line 431
    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->updatePdrData(Landroid/hardware/ssp/DaemonContexts$SSPPdr;)V

    .line 432
    return-void
.end method

.method protected updateRawGpsData(Landroid/hardware/ssp/DaemonContexts$SSPRawGps;)V
    .locals 8
    .parameter "rawGpsData"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 367
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 369
    new-array v0, v5, [D

    .line 370
    .local v0, locationDel:[D
    iget-wide v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->latitude:D

    aput-wide v2, v0, v6

    .line 371
    iget-wide v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->longitude:D

    aput-wide v2, v0, v7

    .line 372
    iget-wide v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->altitude:D

    aput-wide v2, v0, v4

    .line 374
    new-array v1, v5, [F

    .line 375
    .local v1, locationExtDel:[F
    iget v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->bearing:F

    aput v2, v1, v6

    .line 376
    iget v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->speed:F

    aput v2, v1, v7

    .line 377
    iget v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->accuracy:F

    aput v2, v1, v4

    .line 385
    invoke-virtual {p1}, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->getSysTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlSysTimeHybrid:J

    .line 386
    iget-wide v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->timeStamp:J

    iput-wide v2, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlTimeStampHybrid:J

    .line 388
    invoke-virtual {p1}, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->getSysTime()J

    move-result-wide v2

    iget-wide v4, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->timeStamp:J

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->requestGpsData(JJ)V

    .line 390
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerPower;->getInstance()Landroid/hardware/ssp/DaemonManagerPower;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerPower;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->isFilterInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderAlarm;->getInstance()Landroid/hardware/ssp/DaemonProviderAlarm;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/hardware/ssp/DaemonProviderAlarm;->vibrateAlarm(Z)V

    .line 392
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 393
    iput-boolean v6, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mAPSleep:Z

    .line 394
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerPower;->getInstance()Landroid/hardware/ssp/DaemonManagerPower;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerPower;->releaseAPWakeLock()V

    .line 395
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerRunner;->pauseRunnerForLPHP()V

    .line 396
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->sendLocationOrientationToDriver()V

    .line 406
    :cond_0
    return-void
.end method

.method protected updateRawSatelliteData(Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;)V
    .locals 0
    .parameter "rawSatelliteData"

    .prologue
    .line 450
    return-void
.end method

.method protected updateRawSensorArray(Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;)V
    .locals 14
    .parameter "rawSensorArray"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x0

    .line 288
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 290
    iget v5, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mMovingUpdataCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mMovingUpdataCnt:I

    if-lt v5, v9, :cond_0

    .line 291
    iput v11, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mMovingUpdataCnt:I

    .line 306
    :cond_0
    iget-wide v5, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlTimeStampHybrid:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->curSysTime:J

    iget-wide v7, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlSysTimeHybrid:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x5dc

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 308
    new-array v0, v9, [D

    .line 309
    .local v0, dummyLocation:[D
    new-array v1, v9, [F

    .line 311
    .local v1, dummyLocationExt:[F
    iget-wide v5, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlTimeStampHybrid:J

    iget-wide v7, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->curSysTime:J

    iget-wide v9, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlSysTimeHybrid:J

    sub-long/2addr v7, v9

    add-long v3, v5, v7

    .line 314
    .local v3, timeStamp:J
    new-instance v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;-><init>()V

    .line 315
    .local v2, rawGpsData:Landroid/hardware/ssp/DaemonContexts$SSPRawGps;
    iget-wide v5, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawSensorArray;->curSysTime:J

    invoke-virtual {v2, v5, v6}, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->setSysTime(J)V

    .line 316
    iput-wide v3, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->timeStamp:J

    .line 317
    aget-wide v5, v0, v11

    iput-wide v5, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->latitude:D

    .line 318
    aget-wide v5, v0, v12

    iput-wide v5, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->longitude:D

    .line 319
    aget-wide v5, v0, v13

    iput-wide v5, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->altitude:D

    .line 320
    aget v5, v1, v11

    iput v5, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->bearing:F

    .line 321
    aget v5, v1, v12

    iput v5, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->speed:F

    .line 322
    aget v5, v1, v13

    iput v5, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->accuracy:F

    .line 323
    iput v11, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->valid:I

    .line 324
    iput v11, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->svCount:I

    .line 326
    invoke-virtual {p0, v2}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->updateRawGpsData(Landroid/hardware/ssp/DaemonContexts$SSPRawGps;)V

    .line 329
    .end local v0           #dummyLocation:[D
    .end local v1           #dummyLocationExt:[F
    .end local v2           #rawGpsData:Landroid/hardware/ssp/DaemonContexts$SSPRawGps;
    .end local v3           #timeStamp:J
    :cond_1
    iget-object v5, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mGpsRunner:Landroid/hardware/ssp/DaemonRunnerGPS;

    if-nez v5, :cond_2

    .line 330
    const-string v5, "GpsRunner is null."

    invoke-static {v5}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 354
    :cond_2
    return-void
.end method

.method protected updateRawWpsData(Landroid/hardware/ssp/DaemonContexts$SSPRawWps;)V
    .locals 4
    .parameter "rawWpsData"

    .prologue
    .line 463
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 464
    .local v0, location:[D
    const/4 v1, 0x0

    iget-wide v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->latitude:D

    aput-wide v2, v0, v1

    .line 465
    const/4 v1, 0x1

    iget-wide v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->longitude:D

    aput-wide v2, v0, v1

    .line 466
    const/4 v1, 0x2

    iget-wide v2, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->altitude:D

    aput-wide v2, v0, v1

    .line 473
    invoke-virtual {p1}, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->getSysTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlSysTimeHybrid:J

    .line 474
    iget-wide v1, p1, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->timeStamp:J

    iput-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorLPHP;->mlTimeStampHybrid:J

    .line 475
    return-void
.end method
