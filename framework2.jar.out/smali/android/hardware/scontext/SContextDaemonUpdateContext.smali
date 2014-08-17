.class Landroid/hardware/scontext/SContextDaemonUpdateContext;
.super Ljava/lang/Object;
.source "SContextDaemonUpdateContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonUpdateContext"

.field private static instance:Landroid/hardware/scontext/SContextDaemonUpdateContext;

.field private static mListener:Landroid/hardware/scontext/ISContextDaemonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->mListener:Landroid/hardware/scontext/ISContextDaemonListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/scontext/SContextDaemonUpdateContext;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->instance:Landroid/hardware/scontext/SContextDaemonUpdateContext;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Landroid/hardware/scontext/SContextDaemonUpdateContext;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->instance:Landroid/hardware/scontext/SContextDaemonUpdateContext;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonUpdateContext;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->instance:Landroid/hardware/scontext/SContextDaemonUpdateContext;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->instance:Landroid/hardware/scontext/SContextDaemonUpdateContext;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeListener()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->mListener:Landroid/hardware/scontext/ISContextDaemonListener;

    .line 36
    return-void
.end method


# virtual methods
.method public addListener(Landroid/hardware/scontext/ISContextDaemonListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 27
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->mListener:Landroid/hardware/scontext/ISContextDaemonListener;

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->removeListener()V

    .line 31
    :cond_0
    sput-object p1, Landroid/hardware/scontext/SContextDaemonUpdateContext;->mListener:Landroid/hardware/scontext/ISContextDaemonListener;

    .line 32
    return-void
.end method

.method public reportMessage(ILandroid/hardware/scontext/ISContextDaemonContexts;)V
    .locals 3
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 39
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->mListener:Landroid/hardware/scontext/ISContextDaemonListener;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUpdateContext;->mListener:Landroid/hardware/scontext/ISContextDaemonListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/scontext/ISContextDaemonListener;->sendEvent(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    .line 41
    const-string v0, "SContextDaemonUpdateContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportMessage : Service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method
