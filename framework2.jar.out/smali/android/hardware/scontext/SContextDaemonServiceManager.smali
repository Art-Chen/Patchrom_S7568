.class Landroid/hardware/scontext/SContextDaemonServiceManager;
.super Ljava/lang/Object;
.source "SContextDaemonServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonServiceManager"

.field private static instance:Landroid/hardware/scontext/SContextDaemonServiceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/scontext/ISContextDaemonService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createServiceObj(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 60
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServiceApproach;

    .end local v0           #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonServiceApproach;-><init>()V

    .line 75
    .restart local v0       #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    return-void

    .line 61
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 62
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServiceMotion;

    .end local v0           #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonServiceMotion;-><init>()V

    .restart local v0       #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 64
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServiceLocation;

    .end local v0           #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonServiceLocation;-><init>()V

    .restart local v0       #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    goto :goto_0

    .line 65
    :cond_4
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 66
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 67
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServicePedometer;

    .end local v0           #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonServicePedometer;-><init>()V

    .restart local v0       #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    goto :goto_0

    .line 68
    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 69
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServiceStepCountAlert;

    .end local v0           #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonServiceStepCountAlert;-><init>()V

    .restart local v0       #serviceObj:Landroid/hardware/scontext/ISContextDaemonService;
    goto :goto_0
.end method

.method public static getInstance()Landroid/hardware/scontext/SContextDaemonServiceManager;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Landroid/hardware/scontext/SContextDaemonServiceManager;->instance:Landroid/hardware/scontext/SContextDaemonServiceManager;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Landroid/hardware/scontext/SContextDaemonServiceManager;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Landroid/hardware/scontext/SContextDaemonServiceManager;->instance:Landroid/hardware/scontext/SContextDaemonServiceManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServiceManager;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonServiceManager;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextDaemonServiceManager;->instance:Landroid/hardware/scontext/SContextDaemonServiceManager;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Landroid/hardware/scontext/SContextDaemonServiceManager;->instance:Landroid/hardware/scontext/SContextDaemonServiceManager;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearService(I)V
    .locals 2
    .parameter "service"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/ISContextDaemonService;

    invoke-interface {v0}, Landroid/hardware/scontext/ISContextDaemonService;->clearVar()V

    .line 97
    :cond_0
    return-void
.end method

.method public finalizeService()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public initializeService(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mLooper:Landroid/os/Looper;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/scontext/SContextDaemonServiceManager;->createServiceObj(I)V

    .line 44
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/scontext/SContextDaemonServiceManager;->createServiceObj(I)V

    .line 45
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/scontext/SContextDaemonServiceManager;->createServiceObj(I)V

    .line 47
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/scontext/SContextDaemonServiceManager;->createServiceObj(I)V

    .line 48
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/scontext/SContextDaemonServiceManager;->createServiceObj(I)V

    .line 50
    return-void
.end method

.method public startService(I)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/ISContextDaemonService;

    invoke-interface {v0}, Landroid/hardware/scontext/ISContextDaemonService;->clearVar()V

    .line 82
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/ISContextDaemonService;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mLooper:Landroid/os/Looper;

    invoke-interface {v0, v1, v2}, Landroid/hardware/scontext/ISContextDaemonService;->startService(Landroid/content/Context;Landroid/os/Looper;)Z

    .line 84
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public stopService(I)V
    .locals 2
    .parameter "service"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/ISContextDaemonService;

    invoke-interface {v0}, Landroid/hardware/scontext/ISContextDaemonService;->stopService()V

    .line 91
    :cond_0
    return-void
.end method
