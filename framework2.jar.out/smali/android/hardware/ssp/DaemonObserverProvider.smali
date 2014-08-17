.class Landroid/hardware/ssp/DaemonObserverProvider;
.super Ljava/lang/Object;
.source "DaemonObserverProvider.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonObserver;


# instance fields
.field private mCarryingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayCarrying;

.field private mDangerZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayDangerZone;

.field private mGeneralContextListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureContextListener:Landroid/hardware/ssp/IDaemonListenerReplayGesture;

.field private mLocationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayLocation;

.field private mMotionContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMotion;

.field private mMovingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMoving;

.field private mNotificationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayNotification;

.field private mPedometerContextListener:Landroid/hardware/ssp/IDaemonListenerReplayPedometer;

.field private mRawSensorContextListener:Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;

.field private mZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayZone;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addCarryingContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayCarrying;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mCarryingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayCarrying;

    .line 201
    return-void
.end method

.method protected addDangerZoneContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayDangerZone;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 328
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mDangerZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayDangerZone;

    .line 329
    return-void
.end method

.method protected addGeneralContextObserver(Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGeneralContextListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGeneralContextListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addGestureContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayGesture;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 392
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGestureContextListener:Landroid/hardware/ssp/IDaemonListenerReplayGesture;

    .line 393
    return-void
.end method

.method protected addLocationContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayLocation;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 136
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mLocationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayLocation;

    .line 137
    return-void
.end method

.method protected addMotionContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayMotion;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 360
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMotionContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMotion;

    .line 361
    return-void
.end method

.method protected addMovingContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayMoving;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 168
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMovingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMoving;

    .line 169
    return-void
.end method

.method protected addNotificationContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayNotification;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 424
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mNotificationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayNotification;

    .line 425
    return-void
.end method

.method protected addPedometerContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayPedometer;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 232
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mPedometerContextListener:Landroid/hardware/ssp/IDaemonListenerReplayPedometer;

    .line 233
    return-void
.end method

.method protected addRawSensorContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 264
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mRawSensorContextListener:Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;

    .line 265
    return-void
.end method

.method protected addZoneContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayZone;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 296
    iput-object p1, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayZone;

    .line 297
    return-void
.end method

.method public finalizeObserver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGeneralContextListener:Ljava/util/Collection;

    .line 76
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mLocationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayLocation;

    .line 77
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMovingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMoving;

    .line 78
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mCarryingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayCarrying;

    .line 79
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mPedometerContextListener:Landroid/hardware/ssp/IDaemonListenerReplayPedometer;

    .line 80
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mRawSensorContextListener:Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;

    .line 81
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayZone;

    .line 82
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mDangerZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayDangerZone;

    .line 83
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMotionContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMotion;

    .line 84
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGestureContextListener:Landroid/hardware/ssp/IDaemonListenerReplayGesture;

    .line 85
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mNotificationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayNotification;

    .line 86
    return-void
.end method

.method public initializeObserver()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGeneralContextListener:Ljava/util/Collection;

    .line 66
    return-void
.end method

.method protected notifyCarryingContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPCarrying;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 218
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mCarryingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayCarrying;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mCarryingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayCarrying;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayCarrying;->updateCarryingContext(Landroid/hardware/ssp/DaemonContexts$SSPCarrying;)V

    goto :goto_0
.end method

.method protected notifyDangerZoneContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 346
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mDangerZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayDangerZone;

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mDangerZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayDangerZone;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayDangerZone;->updateDangerZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;)V

    goto :goto_0
.end method

.method protected notifyGeneralContext(Landroid/hardware/ssp/DaemonContexts$SSPGeneral;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 123
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGeneralContextListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;

    .line 124
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;->updateGeneralContext(Landroid/hardware/ssp/DaemonContexts$SSPGeneral;)V

    goto :goto_0

    .line 126
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;
    :cond_0
    return-void
.end method

.method protected notifyGestureContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPGesture;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 410
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGestureContextListener:Landroid/hardware/ssp/IDaemonListenerReplayGesture;

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGestureContextListener:Landroid/hardware/ssp/IDaemonListenerReplayGesture;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayGesture;->updateGestureContext(Landroid/hardware/ssp/DaemonContexts$SSPGesture;)V

    goto :goto_0
.end method

.method protected notifyLocationContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mLocationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayLocation;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mLocationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayLocation;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayLocation;->updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V

    goto :goto_0
.end method

.method protected notifyMotionContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPMotion;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 378
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMotionContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMotion;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMotionContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMotion;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayMotion;->updateMotionContext(Landroid/hardware/ssp/DaemonContexts$SSPMotion;)V

    goto :goto_0
.end method

.method protected notifyMovingContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 186
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMovingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMoving;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMovingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMoving;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayMoving;->updateMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    goto :goto_0
.end method

.method protected notifyNotificationContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPNotification;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 442
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mNotificationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayNotification;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mNotificationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayNotification;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayNotification;->updateNotificationContext(Landroid/hardware/ssp/DaemonContexts$SSPNotification;)V

    goto :goto_0
.end method

.method protected notifyPedometerContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 250
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mPedometerContextListener:Landroid/hardware/ssp/IDaemonListenerReplayPedometer;

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mPedometerContextListener:Landroid/hardware/ssp/IDaemonListenerReplayPedometer;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayPedometer;->updatePedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V

    goto :goto_0
.end method

.method protected notifyRawSensorContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 282
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mRawSensorContextListener:Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mRawSensorContextListener:Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;->updateRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V

    goto :goto_0
.end method

.method protected notifyZoneContextForReplay(Landroid/hardware/ssp/DaemonContexts$SSPZone;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayZone;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayZone;

    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerReplayZone;->updateZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPZone;)V

    goto :goto_0
.end method

.method protected removeCarryingContextObserverForReplay()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mCarryingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayCarrying;

    .line 208
    return-void
.end method

.method protected removeDangerZoneContextObserverForReplay()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mDangerZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayDangerZone;

    .line 336
    return-void
.end method

.method protected removeGeneralContextObserver(Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGeneralContextListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGeneralContextListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeGestureContextObserverForReplay()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mGestureContextListener:Landroid/hardware/ssp/IDaemonListenerReplayGesture;

    .line 400
    return-void
.end method

.method protected removeLocationContextObserverForReplay()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mLocationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayLocation;

    .line 144
    return-void
.end method

.method protected removeMotionContextObserverForReplay()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMotionContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMotion;

    .line 368
    return-void
.end method

.method protected removeMovingContextObserverForReplay()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mMovingContextListener:Landroid/hardware/ssp/IDaemonListenerReplayMoving;

    .line 176
    return-void
.end method

.method protected removeNotificationContextObserverForReplay()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mNotificationContextListener:Landroid/hardware/ssp/IDaemonListenerReplayNotification;

    .line 432
    return-void
.end method

.method protected removePedometerContextObserverForReplay()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mPedometerContextListener:Landroid/hardware/ssp/IDaemonListenerReplayPedometer;

    .line 240
    return-void
.end method

.method protected removeRawSensorContextObserverForReplay()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mRawSensorContextListener:Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;

    .line 272
    return-void
.end method

.method protected removeZoneContextObserverForReplay()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverProvider;->mZoneContextListener:Landroid/hardware/ssp/IDaemonListenerReplayZone;

    .line 304
    return-void
.end method
