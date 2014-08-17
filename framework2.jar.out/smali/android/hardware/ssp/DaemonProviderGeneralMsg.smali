.class Landroid/hardware/ssp/DaemonProviderGeneralMsg;
.super Landroid/hardware/ssp/ADaemonProvider;
.source "DaemonProviderGeneralMsg.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonProviderGeneralMsg;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonProvider;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->instance:Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->instance:Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->instance:Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->instance:Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public finalizeProvider()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonProvider;->finalizeProvider()V

    .line 49
    return-void
.end method

.method protected notifyGeneralConetxt(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPGeneral;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPGeneral;-><init>()V

    .line 63
    .local v0, context:Landroid/hardware/ssp/DaemonContexts$SSPGeneral;
    iput-object p1, v0, Landroid/hardware/ssp/DaemonContexts$SSPGeneral;->message:Ljava/lang/String;

    .line 65
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonObserverProvider;->notifyGeneralContext(Landroid/hardware/ssp/DaemonContexts$SSPGeneral;)V

    goto :goto_0
.end method
