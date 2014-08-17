.class Landroid/hardware/ssp/DaemonManagerReplay;
.super Ljava/lang/Object;
.source "DaemonManagerReplay.java"


# static fields
.field protected static final DEFAULT_FOLDER:Ljava/lang/String; = "/sdcard/"

.field private static volatile Instance:Landroid/hardware/ssp/DaemonManagerReplay;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/ssp/DaemonManagerReplay;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Landroid/hardware/ssp/DaemonManagerReplay;->Instance:Landroid/hardware/ssp/DaemonManagerReplay;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Landroid/hardware/ssp/DaemonManagerReplay;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerReplay;->Instance:Landroid/hardware/ssp/DaemonManagerReplay;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/hardware/ssp/DaemonManagerReplay;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerReplay;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerReplay;->Instance:Landroid/hardware/ssp/DaemonManagerReplay;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerReplay;->Instance:Landroid/hardware/ssp/DaemonManagerReplay;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected checkLogFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 98
    if-eqz p1, :cond_0

    const-string v2, ".slog"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, logFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 107
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected finalizeReplayManager()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerReplay;->mContext:Landroid/content/Context;

    .line 73
    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerReplay;->mFileName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method protected initializeReplayManager(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 64
    iput-object p1, p0, Landroid/hardware/ssp/DaemonManagerReplay;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerReplay;->mFileName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method protected startReplay()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderReplay;->getInstance()Landroid/hardware/ssp/DaemonProviderReplay;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerReplay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonManagerReplay;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonProviderReplay;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected stopReplay()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderReplay;->getInstance()Landroid/hardware/ssp/DaemonProviderReplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonProviderReplay;->stop()Z

    .line 88
    return-void
.end method
