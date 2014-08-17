.class Landroid/hardware/scontext/SContextDaemonServiceMotion;
.super Ljava/lang/Object;
.source "SContextDaemonServiceMotion.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextDaemonService;


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonServiceMotion"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mSContextMotion:Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

.field private mSSPManager:Landroid/hardware/ssp/SSPManager;

.field private final mSSPMotionListener:Landroid/hardware/ssp/SSPListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServiceMotion$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/SContextDaemonServiceMotion$1;-><init>(Landroid/hardware/scontext/SContextDaemonServiceMotion;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSSPMotionListener:Landroid/hardware/ssp/SSPListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextDaemonServiceMotion;)Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSContextMotion:Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    return-object v0
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSContextMotion:Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    .line 69
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSContextMotion:Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;->clear()V

    .line 70
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/os/Looper;)Z
    .locals 3
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mLooper:Landroid/os/Looper;

    .line 35
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mContext:Landroid/content/Context;

    const-string v1, "ssp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPManager;

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    .line 36
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSSPMotionListener:Landroid/hardware/ssp/SSPListener;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 39
    const-string v0, "SContextDaemonServiceMotion"

    const-string v1, "startService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSSPMotionListener:Landroid/hardware/ssp/SSPListener;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 47
    const-string v0, "SContextDaemonServiceMotion"

    const-string v1, "stopService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V
    .locals 1
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 73
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->getInstance()Landroid/hardware/scontext/SContextDaemonUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    .line 74
    return-void
.end method
