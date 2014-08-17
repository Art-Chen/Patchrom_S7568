.class Landroid/hardware/scontext/SContextDaemonServicePedometer;
.super Ljava/lang/Object;
.source "SContextDaemonServicePedometer.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextDaemonService;


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonServicePedometer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

.field private mSSPManager:Landroid/hardware/ssp/SSPManager;

.field private final mSSPPedometerListener:Landroid/hardware/ssp/SSPListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;-><init>(Landroid/hardware/scontext/SContextDaemonServicePedometer;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSSPPedometerListener:Landroid/hardware/ssp/SSPListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextDaemonServicePedometer;)Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    return-object v0
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    .line 74
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->clear()V

    .line 75
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/os/Looper;)Z
    .locals 3
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mLooper:Landroid/os/Looper;

    .line 32
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mContext:Landroid/content/Context;

    const-string v1, "ssp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPManager;

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    .line 33
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSSPPedometerListener:Landroid/hardware/ssp/SSPListener;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 36
    const-string v0, "SContextDaemonServicePedometer"

    const-string v1, "startService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSSPPedometerListener:Landroid/hardware/ssp/SSPListener;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 44
    const-string v0, "SContextDaemonServicePedometer"

    const-string v1, "stopService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V
    .locals 1
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 78
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->getInstance()Landroid/hardware/scontext/SContextDaemonUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    .line 79
    return-void
.end method
