.class public Lcom/android/internal/app/ActivityTrigger;
.super Ljava/lang/Object;
.source "ActivityTrigger.java"


# static fields
.field private static final BUS_MAX:I = 0x61b48

.field private static final BUS_ORI:I = 0x0

.field private static final BUS_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/busfreq/curr_freq"

.field private static final CORE:I = 0x4

.field private static final CORE_ORI:I = 0x0

.field private static final CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/hotplug_lock"

.field private static final DEBUG:Z = false

.field private static final GPU_MAX:I = 0x1b8

.field private static final GPU_ORI:I = 0x3e7

.field private static final GPU_PATH:Ljava/lang/String; = "/sys/module/mali/parameters/mali_dvfs_control"

.field private static final TAG:Ljava/lang/String; = "ActivityTrigger"


# instance fields
.field FileStream_BUS:Ljava/io/FileOutputStream;

.field FileStream_CORE:Ljava/io/FileOutputStream;

.field FileStream_GPU:Ljava/io/FileOutputStream;

.field bus_byte:[B

.field bus_ori_byte:[B

.field core_byte:[B

.field core_ori_byte:[B

.field gpu_byte:[B

.field gpu_ori_byte:[B

.field mBenchMarkApps:[Ljava/lang/String;

.field mBus:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mCore:Ljava/lang/String;

.field mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field mGpu:Ljava/lang/String;

.field mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.threed.jpct.bench"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.antutu.ABenchMark"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.glbenchmark.GLBenchmark20"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.drolez.nbench"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.ga.graphics.cha"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.qualcomm.qx.neocore"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.greenecomputing.linpack"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "se.nena.nenamark2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "se.nena.nenamark1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.smartbench.eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "softweg.hw.performance"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.threed.jpct.bench"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.antutu.ABenchMark"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.glbenchmark.GLBenchmark20"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.drolez.nbench"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.ga.graphics.cha"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.qualcomm.qx.neocore"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.greenecomputing.linpack"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "se.nena.nenamark2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "se.nena.nenamark1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.smartbench.eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "softweg.hw.performance"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private close_filestream()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private goto_max()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->open_filesteam()V

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->gpu_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->core_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->bus_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->close_filestream()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private goto_ori()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->open_filesteam()V

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->gpu_ori_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->core_ori_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->bus_ori_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->close_filestream()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private native native_at_deinit()V
.end method

.method private native native_at_resumeActivity(Ljava/lang/String;)V
.end method

.method private native native_at_startActivity(Ljava/lang/String;)V
.end method

.method private open_filesteam()V
    .locals 3

    .prologue
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/module/mali/parameters/mali_dvfs_control"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/devices/system/cpu/cpufreq/pegasusq/hotplug_lock"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public activityResumeTrigger(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, pn:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, bFound:Z
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v3

    .local v3, supportedFreq:[I
    if-nez v3, :cond_2

    .end local v3           #supportedFreq:[I
    :cond_1
    :goto_0
    return-void

    .restart local v3       #supportedFreq:[I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v3, v6

    const-string v7, "ActivityTrigger"

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .end local v3           #supportedFreq:[I
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->goto_max()V

    const/4 v0, 0x1

    :cond_4
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$DVFSLock;->release()V

    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->goto_ori()V

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public activityStartTrigger(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, pn:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, bFound:Z
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v3

    .local v3, supportedFreq:[I
    if-nez v3, :cond_1

    .end local v3           #supportedFreq:[I
    :goto_0
    return-void

    .restart local v3       #supportedFreq:[I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v3, v6

    const-string v7, "ActivityTrigger"

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .end local v3           #supportedFreq:[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    monitor-enter v5

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->goto_max()V

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$DVFSLock;->release()V

    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->goto_ori()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 0

    .prologue
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    const/16 v0, 0x1b8

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mGpu:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mCore:Ljava/lang/String;

    const v0, 0x61b48

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBus:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mGpu:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->gpu_byte:[B

    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mCore:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->core_byte:[B

    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBus:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->bus_byte:[B

    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mGpu:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mCore:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBus:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mGpu:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->gpu_ori_byte:[B

    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mCore:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->core_ori_byte:[B

    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBus:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->bus_ori_byte:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
