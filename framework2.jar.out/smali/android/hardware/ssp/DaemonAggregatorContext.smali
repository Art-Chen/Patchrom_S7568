.class Landroid/hardware/ssp/DaemonAggregatorContext;
.super Ljava/lang/Object;
.source "DaemonAggregatorContext.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonAggregatorContext;


# instance fields
.field private mBLEAggregator:Landroid/hardware/ssp/ADaemonAggregator;

.field private mContextRunner:Landroid/hardware/ssp/DaemonRunnerContext;

.field private mDangerZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

.field private mGestureAggregator:Landroid/hardware/ssp/ADaemonAggregator;

.field private mMotionAggregator:Landroid/hardware/ssp/ADaemonAggregator;

.field private mNotificationAggregator:Landroid/hardware/ssp/ADaemonAggregator;

.field private mPdrAggregator:Landroid/hardware/ssp/ADaemonAggregator;

.field private mPedometerAggregator:Landroid/hardware/ssp/ADaemonAggregator;

.field private mZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorContext;->instance:Landroid/hardware/ssp/DaemonAggregatorContext;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Landroid/hardware/ssp/DaemonAggregatorContext;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorContext;->instance:Landroid/hardware/ssp/DaemonAggregatorContext;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorContext;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonAggregatorContext;->instance:Landroid/hardware/ssp/DaemonAggregatorContext;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorContext;->instance:Landroid/hardware/ssp/DaemonAggregatorContext;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalizeAggregator()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mPdrAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 116
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mPedometerAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 117
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 118
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mDangerZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 119
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mMotionAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 120
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mGestureAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 121
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mNotificationAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 122
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mBLEAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 124
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mContextRunner:Landroid/hardware/ssp/DaemonRunnerContext;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerContext;->stopRunner()Z

    .line 125
    return-void
.end method

.method protected getBLEAggregator()Landroid/hardware/ssp/DaemonAggregatorBLE;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mBLEAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    check-cast v0, Landroid/hardware/ssp/DaemonAggregatorBLE;

    return-object v0
.end method

.method protected getContextRunner()Landroid/hardware/ssp/DaemonRunnerContext;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mContextRunner:Landroid/hardware/ssp/DaemonRunnerContext;

    return-object v0
.end method

.method protected getDangerZoneAggregator()Landroid/hardware/ssp/DaemonAggregatorDangerZone;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mDangerZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    check-cast v0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;

    return-object v0
.end method

.method protected getGestureAggregator()Landroid/hardware/ssp/DaemonAggregatorGesture;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mGestureAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    check-cast v0, Landroid/hardware/ssp/DaemonAggregatorGesture;

    return-object v0
.end method

.method protected getMotionAggregator()Landroid/hardware/ssp/DaemonAggregatorMotion;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mMotionAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    check-cast v0, Landroid/hardware/ssp/DaemonAggregatorMotion;

    return-object v0
.end method

.method protected getNotificationAggregator()Landroid/hardware/ssp/DaemonAggregatorNotification;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mNotificationAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    check-cast v0, Landroid/hardware/ssp/DaemonAggregatorNotification;

    return-object v0
.end method

.method protected getPdrAggregator()Landroid/hardware/ssp/DaemonAggregatorPdr;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mPdrAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    check-cast v0, Landroid/hardware/ssp/DaemonAggregatorPdr;

    return-object v0
.end method

.method protected getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mPedometerAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    check-cast v0, Landroid/hardware/ssp/DaemonAggregatorPedometer;

    return-object v0
.end method

.method protected getZoneAggregator()Landroid/hardware/ssp/DaemonAggregatorZone;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    check-cast v0, Landroid/hardware/ssp/DaemonAggregatorZone;

    return-object v0
.end method

.method protected initializeAggregator()Z
    .locals 6

    .prologue
    .line 77
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorPdr;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorPdr;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mPdrAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    .line 78
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mPdrAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 80
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorPedometer;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mPedometerAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    .line 81
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mPedometerAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 83
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorZone;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorZone;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    .line 84
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 86
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorDangerZone;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mDangerZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    .line 87
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mDangerZoneAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 89
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorMotion;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mMotionAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    .line 90
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mMotionAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 92
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorGesture;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorGesture;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mGestureAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    .line 93
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mGestureAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 95
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorNotification;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorNotification;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mNotificationAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    .line 96
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mNotificationAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 98
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorBLE;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorBLE;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mBLEAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    .line 99
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mBLEAggregator:Landroid/hardware/ssp/ADaemonAggregator;

    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonAggregator;->initializeAggregator()V

    .line 101
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mContextRunner:Landroid/hardware/ssp/DaemonRunnerContext;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-static {}, Landroid/hardware/ssp/DaemonManagerDataRate;->getInstance()Landroid/hardware/ssp/DaemonManagerDataRate;

    move-result-object v4

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerContext;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorContext;->mContextRunner:Landroid/hardware/ssp/DaemonRunnerContext;

    .line 108
    const/4 v0, 0x1

    return v0
.end method
