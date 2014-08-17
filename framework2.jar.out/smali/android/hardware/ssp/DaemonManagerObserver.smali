.class final Landroid/hardware/ssp/DaemonManagerObserver;
.super Ljava/lang/Object;
.source "DaemonManagerObserver.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonManagerObserver;


# instance fields
.field private mAggregatorObserver:Landroid/hardware/ssp/IDaemonObserver;

.field private mPowerObserver:Landroid/hardware/ssp/IDaemonObserver;

.field private mProviderObserver:Landroid/hardware/ssp/IDaemonObserver;

.field private mSSPEventObserver:Landroid/hardware/ssp/IDaemonObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonManagerObserver;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/hardware/ssp/DaemonManagerObserver;->instance:Landroid/hardware/ssp/DaemonManagerObserver;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Landroid/hardware/ssp/DaemonManagerObserver;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerObserver;->instance:Landroid/hardware/ssp/DaemonManagerObserver;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/hardware/ssp/DaemonManagerObserver;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerObserver;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerObserver;->instance:Landroid/hardware/ssp/DaemonManagerObserver;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerObserver;->instance:Landroid/hardware/ssp/DaemonManagerObserver;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalizeObserverManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mAggregatorObserver:Landroid/hardware/ssp/IDaemonObserver;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonObserver;->finalizeObserver()V

    .line 79
    iput-object v1, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mAggregatorObserver:Landroid/hardware/ssp/IDaemonObserver;

    .line 81
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mProviderObserver:Landroid/hardware/ssp/IDaemonObserver;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonObserver;->finalizeObserver()V

    .line 82
    iput-object v1, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mProviderObserver:Landroid/hardware/ssp/IDaemonObserver;

    .line 84
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mPowerObserver:Landroid/hardware/ssp/IDaemonObserver;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonObserver;->finalizeObserver()V

    .line 85
    iput-object v1, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mPowerObserver:Landroid/hardware/ssp/IDaemonObserver;

    .line 87
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mSSPEventObserver:Landroid/hardware/ssp/IDaemonObserver;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonObserver;->finalizeObserver()V

    .line 88
    iput-object v1, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mSSPEventObserver:Landroid/hardware/ssp/IDaemonObserver;

    .line 89
    return-void
.end method

.method protected getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mAggregatorObserver:Landroid/hardware/ssp/IDaemonObserver;

    check-cast v0, Landroid/hardware/ssp/DaemonObserverAggregator;

    return-object v0
.end method

.method protected getPowerObserver()Landroid/hardware/ssp/DaemonObserverPower;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mPowerObserver:Landroid/hardware/ssp/IDaemonObserver;

    check-cast v0, Landroid/hardware/ssp/DaemonObserverPower;

    return-object v0
.end method

.method protected getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mProviderObserver:Landroid/hardware/ssp/IDaemonObserver;

    check-cast v0, Landroid/hardware/ssp/DaemonObserverProvider;

    return-object v0
.end method

.method protected getSSPEventObserver()Landroid/hardware/ssp/DaemonObserverSSPEvent;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mSSPEventObserver:Landroid/hardware/ssp/IDaemonObserver;

    check-cast v0, Landroid/hardware/ssp/DaemonObserverSSPEvent;

    return-object v0
.end method

.method protected initializeObserverManager()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/hardware/ssp/DaemonObserverAggregator;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonObserverAggregator;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mAggregatorObserver:Landroid/hardware/ssp/IDaemonObserver;

    .line 61
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mAggregatorObserver:Landroid/hardware/ssp/IDaemonObserver;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonObserver;->initializeObserver()V

    .line 63
    new-instance v0, Landroid/hardware/ssp/DaemonObserverProvider;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonObserverProvider;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mProviderObserver:Landroid/hardware/ssp/IDaemonObserver;

    .line 64
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mProviderObserver:Landroid/hardware/ssp/IDaemonObserver;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonObserver;->initializeObserver()V

    .line 66
    new-instance v0, Landroid/hardware/ssp/DaemonObserverPower;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonObserverPower;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mPowerObserver:Landroid/hardware/ssp/IDaemonObserver;

    .line 67
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mPowerObserver:Landroid/hardware/ssp/IDaemonObserver;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonObserver;->initializeObserver()V

    .line 69
    new-instance v0, Landroid/hardware/ssp/DaemonObserverSSPEvent;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonObserverSSPEvent;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mSSPEventObserver:Landroid/hardware/ssp/IDaemonObserver;

    .line 70
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerObserver;->mSSPEventObserver:Landroid/hardware/ssp/IDaemonObserver;

    invoke-interface {v0}, Landroid/hardware/ssp/IDaemonObserver;->initializeObserver()V

    .line 71
    return-void
.end method
