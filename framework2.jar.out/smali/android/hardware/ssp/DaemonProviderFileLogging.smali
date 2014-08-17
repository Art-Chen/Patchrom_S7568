.class Landroid/hardware/ssp/DaemonProviderFileLogging;
.super Ljava/lang/Object;
.source "DaemonProviderFileLogging.java"


# static fields
.field private static final LOGTYPE_GPSPOS:I = 0x1

.field private static volatile instance:Landroid/hardware/ssp/DaemonProviderFileLogging;


# instance fields
.field private final mDataOutputStream:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/DataOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mFile:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Landroid/hardware/ssp/DaemonProviderFileLogging;->instance:Landroid/hardware/ssp/DaemonProviderFileLogging;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Landroid/hardware/ssp/DaemonProviderFileLogging;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonProviderFileLogging;->instance:Landroid/hardware/ssp/DaemonProviderFileLogging;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/hardware/ssp/DaemonProviderFileLogging;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonProviderFileLogging;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonProviderFileLogging;->instance:Landroid/hardware/ssp/DaemonProviderFileLogging;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonProviderFileLogging;->instance:Landroid/hardware/ssp/DaemonProviderFileLogging;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected logging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"
    .parameter "text"

    .prologue
    .line 146
    iget-object v1, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mFile:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    const-string v1, "This file dose not exist."

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected loggingForKML(Ljava/lang/String;JFDDDFFJ)V
    .locals 5
    .parameter "fileName"
    .parameter "sysTime"
    .parameter "accuracy"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "heading"
    .parameter "speed"
    .parameter "timeStamp"

    .prologue
    .line 185
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mFile:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    :cond_0
    const-string v3, "This file dose not exist."

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 192
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 193
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 194
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 195
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p5, p6}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 196
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p7, p8}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 197
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3, p9, p10}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 198
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 199
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 200
    iget-object v3, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    move-wide/from16 v0, p13

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, e:Ljava/io/IOException;
    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected startLogging(Ljava/lang/String;)Z
    .locals 24
    .parameter "fileName"

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mFile:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 68
    :cond_0
    const-string v20, "This file is created already."

    invoke-static/range {v20 .. v20}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 69
    const/16 v20, 0x0

    .line 108
    :goto_0
    return v20

    .line 72
    :cond_1
    const/16 v18, 0x0

    .line 73
    .local v18, file:Ljava/io/File;
    const/16 v16, 0x0

    .line 76
    .local v16, dataOutputStream:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 77
    .local v3, curTime:Ljava/util/Calendar;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v14, v0

    .line 78
    .local v14, curTimeYear:J
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-long v10, v0

    .line 79
    .local v10, curTimeMonth:J
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v4, v0

    .line 80
    .local v4, curTimeDay:J
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v6, v0

    .line 81
    .local v6, curTimeHour:J
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .line 82
    .local v8, curTimeMinute:J
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v12, v0

    .line 84
    .local v12, curTimeSecond:J
    new-instance v19, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/sdcard/%04dY%02dM%02dD%02dH%02dM%02dS_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".log"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v18           #file:Ljava/io/File;
    .local v19, file:Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    move-result v20

    if-nez v20, :cond_2

    .line 90
    const-string v20, "createNewFile() error"

    invoke-static/range {v20 .. v20}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 93
    .end local v3           #curTime:Ljava/util/Calendar;
    .end local v4           #curTimeDay:J
    .end local v6           #curTimeHour:J
    .end local v8           #curTimeMinute:J
    .end local v10           #curTimeMonth:J
    .end local v12           #curTimeSecond:J
    .end local v14           #curTimeYear:J
    .end local v19           #file:Ljava/io/File;
    .restart local v18       #file:Ljava/io/File;
    :catch_0
    move-exception v17

    .line 94
    .local v17, e:Ljava/io/IOException;
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    .line 95
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 99
    .end local v17           #e:Ljava/io/IOException;
    .end local v18           #file:Ljava/io/File;
    .restart local v3       #curTime:Ljava/util/Calendar;
    .restart local v4       #curTimeDay:J
    .restart local v6       #curTimeHour:J
    .restart local v8       #curTimeMinute:J
    .restart local v10       #curTimeMonth:J
    .restart local v12       #curTimeSecond:J
    .restart local v14       #curTimeYear:J
    .restart local v19       #file:Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v16, Ljava/io/DataOutputStream;

    .end local v16           #dataOutputStream:Ljava/io/DataOutputStream;
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    .restart local v16       #dataOutputStream:Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mFile:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 100
    .end local v16           #dataOutputStream:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v17

    .line 101
    .local v17, e:Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    .line 102
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 93
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v16       #dataOutputStream:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v17

    move-object/from16 v18, v19

    .end local v19           #file:Ljava/io/File;
    .restart local v18       #file:Ljava/io/File;
    goto :goto_1
.end method

.method protected stopLogging(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v1, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mFile:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 134
    :goto_0
    return v1

    .line 125
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-object v1, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mFile:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Landroid/hardware/ssp/DaemonProviderFileLogging;->mDataOutputStream:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v1, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    move v1, v2

    .line 128
    goto :goto_0
.end method
