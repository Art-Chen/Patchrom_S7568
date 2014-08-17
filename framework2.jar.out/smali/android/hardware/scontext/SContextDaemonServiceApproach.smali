.class Landroid/hardware/scontext/SContextDaemonServiceApproach;
.super Ljava/lang/Object;
.source "SContextDaemonServiceApproach.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextDaemonService;


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonServiceApproach"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mSContextApproach:Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

.field private final mSSPApproachListener:Landroid/hardware/ssp/SSPListener;

.field private mSSPManager:Landroid/hardware/ssp/SSPManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/hardware/scontext/SContextDaemonServiceApproach$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/SContextDaemonServiceApproach$1;-><init>(Landroid/hardware/scontext/SContextDaemonServiceApproach;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSSPApproachListener:Landroid/hardware/ssp/SSPListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextDaemonServiceApproach;)Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSContextApproach:Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    return-object v0
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSContextApproach:Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    .line 64
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSContextApproach:Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;->clear()V

    .line 65
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/os/Looper;)Z
    .locals 3
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mLooper:Landroid/os/Looper;

    .line 31
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mContext:Landroid/content/Context;

    const-string v1, "ssp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPManager;

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    .line 32
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSSPApproachListener:Landroid/hardware/ssp/SSPListener;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 34
    const-string v0, "SContextDaemonServiceApproach"

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
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSSPManager:Landroid/hardware/ssp/SSPManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSSPApproachListener:Landroid/hardware/ssp/SSPListener;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 42
    const-string v0, "SContextDaemonServiceApproach"

    const-string v1, "stopService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V
    .locals 1
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 68
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->getInstance()Landroid/hardware/scontext/SContextDaemonUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    .line 69
    return-void
.end method
