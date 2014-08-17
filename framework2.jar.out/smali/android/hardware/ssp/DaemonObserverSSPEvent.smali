.class Landroid/hardware/ssp/DaemonObserverSSPEvent;
.super Ljava/lang/Object;
.source "DaemonObserverSSPEvent.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonObserver;


# instance fields
.field private mSSPEventListener:Landroid/hardware/ssp/IDaemonSSPEventListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverSSPEvent;->mSSPEventListener:Landroid/hardware/ssp/IDaemonSSPEventListener;

    return-void
.end method


# virtual methods
.method protected addSSPEventObserver(Landroid/hardware/ssp/IDaemonSSPEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverSSPEvent;->mSSPEventListener:Landroid/hardware/ssp/IDaemonSSPEventListener;

    .line 53
    return-void
.end method

.method public finalizeObserver()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverSSPEvent;->mSSPEventListener:Landroid/hardware/ssp/IDaemonSSPEventListener;

    .line 43
    return-void
.end method

.method public initializeObserver()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected removeSSPEventObserver()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverSSPEvent;->mSSPEventListener:Landroid/hardware/ssp/IDaemonSSPEventListener;

    .line 60
    return-void
.end method

.method protected reportSSPEvent(ILandroid/hardware/ssp/IDaemonContexts;)V
    .locals 1
    .parameter "event"
    .parameter "context"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverSSPEvent;->mSSPEventListener:Landroid/hardware/ssp/IDaemonSSPEventListener;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverSSPEvent;->mSSPEventListener:Landroid/hardware/ssp/IDaemonSSPEventListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ssp/IDaemonSSPEventListener;->sendEvent(ILandroid/hardware/ssp/IDaemonContexts;)V

    goto :goto_0
.end method
