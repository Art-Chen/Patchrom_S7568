.class Landroid/hardware/scontext/SContextDaemon;
.super Ljava/lang/Object;
.source "SContextDaemon.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemon"

.field private static instance:Landroid/hardware/scontext/SContextDaemon;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/scontext/SContextDaemon;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Landroid/hardware/scontext/SContextDaemon;->instance:Landroid/hardware/scontext/SContextDaemon;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Landroid/hardware/scontext/SContextDaemon;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Landroid/hardware/scontext/SContextDaemon;->instance:Landroid/hardware/scontext/SContextDaemon;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/hardware/scontext/SContextDaemon;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemon;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextDaemon;->instance:Landroid/hardware/scontext/SContextDaemon;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Landroid/hardware/scontext/SContextDaemon;->instance:Landroid/hardware/scontext/SContextDaemon;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addService(I)V
    .locals 1
    .parameter "service"

    .prologue
    .line 52
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonServiceManager;->getInstance()Landroid/hardware/scontext/SContextDaemonServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContextDaemonServiceManager;->startService(I)Z

    .line 53
    return-void
.end method

.method public finalizeDaemon()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public initializeDaemon(Landroid/content/Context;Landroid/os/Looper;)Z
    .locals 1
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemon;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Landroid/hardware/scontext/SContextDaemon;->mLooper:Landroid/os/Looper;

    .line 38
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonServiceManager;->getInstance()Landroid/hardware/scontext/SContextDaemonServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextDaemonServiceManager;->initializeService(Landroid/content/Context;Landroid/os/Looper;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public initializeService(I)V
    .locals 1
    .parameter "service"

    .prologue
    .line 48
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonServiceManager;->getInstance()Landroid/hardware/scontext/SContextDaemonServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContextDaemonServiceManager;->clearService(I)V

    .line 49
    return-void
.end method

.method public removeService(I)V
    .locals 1
    .parameter "service"

    .prologue
    .line 56
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonServiceManager;->getInstance()Landroid/hardware/scontext/SContextDaemonServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContextDaemonServiceManager;->stopService(I)V

    .line 57
    return-void
.end method
