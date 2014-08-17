.class Landroid/hardware/ssp/DaemonManagerPower;
.super Ljava/util/Observable;
.source "DaemonManagerPower.java"


# static fields
.field private static final ACQUIRE_WAKELOCK:I = 0x1

.field protected static final AP_SLEEP:I = 0x1

.field protected static final AP_WAKEUP:I = 0x2

.field private static final RELEASE_WAKELOCK:I = 0x0

.field private static final SYSFS_CMD:Ljava/lang/String; = "sys/class/sensors/ssp_sensor/sspcmd"

.field private static volatile instance:Landroid/hardware/ssp/DaemonManagerPower;


# instance fields
.field private mAPWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonManagerPower;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Landroid/hardware/ssp/DaemonManagerPower;->instance:Landroid/hardware/ssp/DaemonManagerPower;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Landroid/hardware/ssp/DaemonManagerPower;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerPower;->instance:Landroid/hardware/ssp/DaemonManagerPower;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/hardware/ssp/DaemonManagerPower;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerPower;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerPower;->instance:Landroid/hardware/ssp/DaemonManagerPower;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerPower;->instance:Landroid/hardware/ssp/DaemonManagerPower;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendWakeLockCmdtoKernel(I)Z
    .locals 8
    .parameter "cmd"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    const/4 v2, 0x0

    .line 201
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "sys/class/sensors/ssp_sensor/sspcmd"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    const/4 v6, 0x1

    :try_start_1
    invoke-static {p1, v6}, Landroid/hardware/ssp/ConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 204
    .local v0, buf:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send CMD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    invoke-static {v7}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 206
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 215
    .end local v0           #buf:[B
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return v4

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    move v4, v5

    .line 209
    goto :goto_0

    .line 210
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 211
    .local v1, e:Ljava/io/IOException;
    :goto_2
    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    move v4, v5

    .line 212
    goto :goto_0

    .line 210
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 207
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected acquireAPWakeLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 134
    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerPower;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 135
    const-string v1, "mContext is null"

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 141
    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerPower;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 144
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SSP_WAKELOCK"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/ssp/DaemonManagerPower;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 147
    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerPower;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 149
    invoke-direct {p0, v3}, Landroid/hardware/ssp/DaemonManagerPower;->sendWakeLockCmdtoKernel(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const-string v1, "Fail to send WakeLock to kernel."

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initializePowerManager(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 77
    iput-object p1, p0, Landroid/hardware/ssp/DaemonManagerPower;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method protected isScreenOn()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerPower;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "Screen On."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 186
    :goto_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerPower;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    .line 183
    :cond_0
    const-string v0, "Screen Off."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseAPWakeLock()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerPower;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerPower;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    :cond_0
    const-string v0, "WakeLock is not held."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->warning(Ljava/lang/String;)V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 165
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerPower;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerPower;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonManagerPower;->sendWakeLockCmdtoKernel(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const-string v0, "Fail to send WakeLock to kernel."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setAPPowerStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const-string v2, "=============== AP_SLEEP ==============="

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 93
    .local v0, i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registed service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    .end local v0           #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerRunner;->pauseAll()V

    .line 98
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerAKM;->getInstance()Landroid/hardware/ssp/DaemonManagerAKM;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerAKM;->loadAKMParameters()V

    .line 103
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerObserver;->getPowerObserver()Landroid/hardware/ssp/DaemonObserverPower;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonObserverPower;->notifyPowerSleep()V

    goto :goto_0

    .line 108
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_1
    const-string v2, "=============== AP_WAKEUP ==============="

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 111
    .restart local v0       #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registed service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 114
    .end local v0           #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    :cond_2
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerAKM;->getInstance()Landroid/hardware/ssp/DaemonManagerAKM;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerAKM;->saveAKMParameters()V

    .line 119
    :cond_3
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerRunner;->resumeAll()V

    .line 121
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonManagerObserver;->getPowerObserver()Landroid/hardware/ssp/DaemonObserverPower;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonObserverPower;->notifyPowerWakeup()V

    goto/16 :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
