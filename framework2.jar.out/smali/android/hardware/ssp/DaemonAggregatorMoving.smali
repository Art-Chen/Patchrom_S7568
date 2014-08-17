.class Landroid/hardware/ssp/DaemonAggregatorMoving;
.super Landroid/hardware/ssp/ADaemonAggregator;
.source "DaemonAggregatorMoving.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;


# static fields
.field private static final PEDESTRIAN_MOVE:I = 0x0

.field private static final PEDESTRIAN_STOP:I = 0x1

.field private static final UNKNOWN:I = -0x1

.field private static final VEHICLE_MOVE:I = 0x2

.field private static final VEHICLE_STOP:I = 0x3

.field private static volatile instance:Landroid/hardware/ssp/DaemonAggregatorMoving;


# instance fields
.field private mOldMode:I

.field private mOldMove:I

.field private mOldtransMethod:I

.field private mStepStatus:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonAggregator;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonAggregatorMoving;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorMoving;->instance:Landroid/hardware/ssp/DaemonAggregatorMoving;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Landroid/hardware/ssp/DaemonAggregatorMoving;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorMoving;->instance:Landroid/hardware/ssp/DaemonAggregatorMoving;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorMoving;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonAggregatorMoving;->instance:Landroid/hardware/ssp/DaemonAggregatorMoving;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorMoving;->instance:Landroid/hardware/ssp/DaemonAggregatorMoving;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 160
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonObserverAggregator;->notifyMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    .line 167
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldMove:I

    .line 168
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldtransMethod:I

    .line 169
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->mode:I

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldMode:I

    goto :goto_0
.end method

.method private updateMovingMode(I)I
    .locals 2
    .parameter "transMethod"

    .prologue
    .line 252
    const/4 v0, -0x1

    .line 254
    .local v0, movingMode:I
    iget v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mStepStatus:I

    packed-switch v1, :pswitch_data_0

    .line 271
    const/4 v0, -0x1

    .line 275
    :goto_0
    return v0

    .line 257
    :pswitch_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 258
    const/4 v0, 0x6

    goto :goto_0

    .line 260
    :cond_0
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mStepStatus:I

    .line 262
    goto :goto_0

    .line 268
    :pswitch_1
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mStepStatus:I

    .line 269
    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 137
    iput v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldMove:I

    .line 138
    iput v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldtransMethod:I

    .line 139
    iput v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldMode:I

    .line 140
    iput v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mStepStatus:I

    .line 142
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->clear()V

    .line 143
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->clear()V

    .line 145
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPMoving;-><init>()V

    .line 146
    .local v0, movingContext:Landroid/hardware/ssp/DaemonContexts$SSPMoving;
    iget v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldMove:I

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 147
    iget v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldtransMethod:I

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    .line 148
    iget v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldMode:I

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->mode:I

    .line 150
    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->notifyMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    .line 151
    return-void
.end method

.method public finalizeAggregator()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->finalizeAggregator()V

    .line 80
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->clear()V

    .line 92
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addLocationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;)V

    .line 94
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addPedometerObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;)V

    .line 97
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->start()V

    .line 98
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->setAccuracy(I)V

    .line 100
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->start()V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->start()V

    .line 105
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 116
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->stop()V

    .line 122
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPedometerAggregator()Landroid/hardware/ssp/DaemonAggregatorPedometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorPedometer;->stop()V

    .line 124
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeLocationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;)V

    .line 126
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removePedometerObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;)V

    goto :goto_0
.end method

.method public updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 242
    return-void
.end method

.method public updatePedestrianStatus(I)V
    .locals 4
    .parameter "pedestrianStatus"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 199
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPMoving;-><init>()V

    .line 201
    .local v0, movingContext:Landroid/hardware/ssp/DaemonContexts$SSPMoving;
    packed-switch p1, :pswitch_data_0

    .line 223
    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 224
    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    .line 228
    :goto_0
    iget v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonAggregatorMoving;->updateMovingMode(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->mode:I

    .line 230
    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->notifyMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    .line 231
    return-void

    .line 203
    :pswitch_0
    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 204
    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    goto :goto_0

    .line 207
    :pswitch_1
    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 208
    iput v2, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    goto :goto_0

    .line 211
    :pswitch_2
    iput v2, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 212
    iput v2, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    goto :goto_0

    .line 215
    :pswitch_3
    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 216
    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    goto :goto_0

    .line 219
    :pswitch_4
    iput v2, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 220
    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updatePedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 180
    iget v1, p1, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepStatusLT:I

    iput v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mStepStatus:I

    .line 182
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPMoving;-><init>()V

    .line 183
    .local v0, movingContext:Landroid/hardware/ssp/DaemonContexts$SSPMoving;
    iget v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldMove:I

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 184
    iget v1, p0, Landroid/hardware/ssp/DaemonAggregatorMoving;->mOldtransMethod:I

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    .line 185
    iget v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonAggregatorMoving;->updateMovingMode(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->mode:I

    .line 187
    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonAggregatorMoving;->notifyMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    .line 188
    return-void
.end method
