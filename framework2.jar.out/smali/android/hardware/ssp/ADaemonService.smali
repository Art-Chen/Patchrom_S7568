.class abstract Landroid/hardware/ssp/ADaemonService;
.super Ljava/lang/Object;
.source "ADaemonService.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonService;
.implements Landroid/hardware/ssp/IDaemonBuilderService;


# static fields
.field protected static final RUN:Z = true

.field protected static final STOP:Z


# instance fields
.field private mService:Landroid/hardware/ssp/DaemonService;

.field private running:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/ssp/ADaemonService;->running:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public clearVar()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected getService()Landroid/hardware/ssp/DaemonService;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/hardware/ssp/ADaemonService;->mService:Landroid/hardware/ssp/DaemonService;

    return-object v0
.end method

.method public isRun()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/hardware/ssp/ADaemonService;->running:Z

    return v0
.end method

.method protected final reportContext(ILandroid/hardware/ssp/IDaemonContexts;)V
    .locals 1
    .parameter "event"
    .parameter "context"

    .prologue
    .line 102
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getSSPEventObserver()Landroid/hardware/ssp/DaemonObserverSSPEvent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/ssp/DaemonObserverSSPEvent;->reportSSPEvent(ILandroid/hardware/ssp/IDaemonContexts;)V

    .line 104
    return-void
.end method

.method public setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)Z
    .locals 1
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
            "TE;)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, value:Ljava/lang/Object;,"TE;"
    check-cast p2, Landroid/hardware/ssp/SSPPropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/ssp/SSPPropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setProvider()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected setService(Landroid/hardware/ssp/DaemonService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/hardware/ssp/ADaemonService;->mService:Landroid/hardware/ssp/DaemonService;

    .line 132
    return-void
.end method

.method protected setStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 160
    iput-boolean p1, p0, Landroid/hardware/ssp/ADaemonService;->running:Z

    .line 161
    return-void
.end method

.method public startService()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-boolean v1, p0, Landroid/hardware/ssp/ADaemonService;->running:Z

    if-ne v1, v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ADaemonService;->setStatus(Z)V

    goto :goto_0
.end method

.method public stopService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-boolean v1, p0, Landroid/hardware/ssp/ADaemonService;->running:Z

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ADaemonService;->setStatus(Z)V

    .line 65
    const/4 v0, 0x1

    goto :goto_0
.end method
