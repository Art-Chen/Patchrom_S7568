.class Landroid/hardware/scontext/SContextDaemonServiceLocation;
.super Ljava/lang/Object;
.source "SContextDaemonServiceLocation.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextDaemonService;


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonServiceLocation"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mSContextLocation:Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

.field private final mSSPLocationListener:Landroid/hardware/ssp/SSPListener;

.field private mSSPManager:Landroid/hardware/ssp/SSPManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServiceLocation$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/SContextDaemonServiceLocation$1;-><init>(Landroid/hardware/scontext/SContextDaemonServiceLocation;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSSPLocationListener:Landroid/hardware/ssp/SSPListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextDaemonServiceLocation;)Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSContextLocation:Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    return-object v0
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSContextLocation:Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    .line 68
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSContextLocation:Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->clear()V

    .line 69
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/os/Looper;)Z
    .locals 3
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 27
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mLooper:Landroid/os/Looper;

    .line 31
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mContext:Landroid/content/Context;

    const-string v1, "ssp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPManager;

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    .line 32
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSSPLocationListener:Landroid/hardware/ssp/SSPListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 34
    const-string v0, "SContextDaemonServiceLocation"

    const-string v1, "startService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSSPLocationListener:Landroid/hardware/ssp/SSPListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 42
    const-string v0, "SContextDaemonServiceLocation"

    const-string v1, "stopService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V
    .locals 1
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 72
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->getInstance()Landroid/hardware/scontext/SContextDaemonUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    .line 73
    return-void
.end method
