.class Landroid/hardware/scontext/SContextDaemonServiceStepCountAlert;
.super Ljava/lang/Object;
.source "SContextDaemonServiceStepCountAlert.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextDaemonService;


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonServiceStepCountAlert"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mSContextStepCountAlert:Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;

.field private stepcount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceStepCountAlert;->mSContextStepCountAlert:Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;

    .line 71
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServiceStepCountAlert;->mSContextStepCountAlert:Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;->clear()V

    .line 72
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/os/Looper;)Z
    .locals 2
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 30
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServiceStepCountAlert;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Landroid/hardware/scontext/SContextDaemonServiceStepCountAlert;->mLooper:Landroid/os/Looper;

    .line 32
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUserInfo;->getInstance()Landroid/hardware/scontext/SContextDaemonUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextDaemonUserInfo;->getStepCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextDaemonServiceStepCountAlert;->stepcount:I

    .line 39
    const-string v0, "SContextDaemonServiceStepCountAlert"

    const-string v1, "startService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "SContextDaemonServiceStepCountAlert"

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
    .line 75
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->getInstance()Landroid/hardware/scontext/SContextDaemonUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    .line 76
    return-void
.end method
