.class Landroid/hardware/ssp/DaemonObserverAggregator;
.super Ljava/lang/Object;
.source "DaemonObserverAggregator.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonObserver;


# instance fields
.field private mBLEListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;",
            ">;"
        }
    .end annotation
.end field

.field private mCarryingPositionListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorCarrying;",
            ">;"
        }
    .end annotation
.end field

.field private mDangerZoneListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorDangerZone;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mPdrListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;",
            ">;"
        }
    .end annotation
.end field

.field private mPedometerListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;",
            ">;"
        }
    .end annotation
.end field

.field private mRawGestureListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorRawGesture;",
            ">;"
        }
    .end annotation
.end field

.field private mRawSensorListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/ssp/IDaemonListenerAggregatorZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addBLEObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 611
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mBLEListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mBLEListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addCarryingPositionObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorCarrying;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 209
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mCarryingPositionListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mCarryingPositionListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDangerZoneObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorDangerZone;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 450
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mDangerZoneListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mDangerZoneListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addGestureObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 531
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mGestureListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mGestureListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addLocationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mLocationListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mLocationListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addMotionObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 491
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMotionListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMotionListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addMovingObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 169
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMovingListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMovingListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addNotificationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 571
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mNotificationListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mNotificationListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addPdrObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPdrListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPdrListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addPedometerObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 250
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPedometerListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPedometerListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addRawGestureObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorRawGesture;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 332
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawGestureListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawGestureListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addRawSensorObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 291
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawSensorListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawSensorListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addZoneObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorZone;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 410
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mZoneListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mZoneListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public finalizeObserver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mLocationListener:Ljava/util/Collection;

    .line 94
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMovingListener:Ljava/util/Collection;

    .line 95
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mCarryingPositionListener:Ljava/util/Collection;

    .line 96
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPedometerListener:Ljava/util/Collection;

    .line 97
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawSensorListener:Ljava/util/Collection;

    .line 98
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawGestureListener:Ljava/util/Collection;

    .line 99
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPdrListener:Ljava/util/Collection;

    .line 100
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mZoneListener:Ljava/util/Collection;

    .line 101
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mDangerZoneListener:Ljava/util/Collection;

    .line 102
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMotionListener:Ljava/util/Collection;

    .line 103
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mGestureListener:Ljava/util/Collection;

    .line 104
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mNotificationListener:Ljava/util/Collection;

    .line 105
    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mBLEListener:Ljava/util/Collection;

    .line 106
    return-void
.end method

.method public initializeObserver()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mLocationListener:Ljava/util/Collection;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMovingListener:Ljava/util/Collection;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mCarryingPositionListener:Ljava/util/Collection;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPedometerListener:Ljava/util/Collection;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawSensorListener:Ljava/util/Collection;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawGestureListener:Ljava/util/Collection;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPdrListener:Ljava/util/Collection;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mZoneListener:Ljava/util/Collection;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mDangerZoneListener:Ljava/util/Collection;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMotionListener:Ljava/util/Collection;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mGestureListener:Ljava/util/Collection;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mNotificationListener:Ljava/util/Collection;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mBLEListener:Ljava/util/Collection;

    .line 84
    return-void
.end method

.method protected notifyBLEContext(Landroid/hardware/ssp/DaemonContexts$SSPBLE;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 637
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mBLEListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;

    .line 638
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;->updateBLEContext(Landroid/hardware/ssp/DaemonContexts$SSPBLE;)V

    goto :goto_0

    .line 640
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;
    :cond_0
    return-void
.end method

.method protected notifyCarryingPositionContext(Landroid/hardware/ssp/DaemonContexts$SSPCarrying;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 237
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mCarryingPositionListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorCarrying;

    .line 238
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorCarrying;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorCarrying;->updateCarryingPositionContext(Landroid/hardware/ssp/DaemonContexts$SSPCarrying;)V

    goto :goto_0

    .line 240
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorCarrying;
    :cond_0
    return-void
.end method

.method protected notifyDangerZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 478
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mDangerZoneListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorDangerZone;

    .line 479
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorDangerZone;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorDangerZone;->updateDangerZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;)V

    goto :goto_0

    .line 481
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorDangerZone;
    :cond_0
    return-void
.end method

.method protected notifyGestureContext(Landroid/hardware/ssp/DaemonContexts$SSPGesture;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 558
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mGestureListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;

    .line 559
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;->updateGestureContext(Landroid/hardware/ssp/DaemonContexts$SSPGesture;)V

    goto :goto_0

    .line 561
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;
    :cond_0
    return-void
.end method

.method protected notifyLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mLocationListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;

    .line 145
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;->updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V

    goto :goto_0

    .line 147
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;
    :cond_0
    return-void
.end method

.method protected notifyMotionContext(Landroid/hardware/ssp/DaemonContexts$SSPMotion;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 518
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMotionListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;

    .line 519
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;->updateMotionContext(Landroid/hardware/ssp/DaemonContexts$SSPMotion;)V

    goto :goto_0

    .line 521
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;
    :cond_0
    return-void
.end method

.method protected notifyMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 196
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMovingListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;

    .line 197
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;->updateMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    goto :goto_0

    .line 199
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;
    :cond_0
    return-void
.end method

.method protected notifyNotificationContext(Landroid/hardware/ssp/DaemonContexts$SSPNotification;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 599
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mNotificationListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;

    .line 600
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;->updateNotificationContext(Landroid/hardware/ssp/DaemonContexts$SSPNotification;)V

    goto :goto_0

    .line 602
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;
    :cond_0
    return-void
.end method

.method protected notifyPdrContext(Landroid/hardware/ssp/DaemonContexts$SSPPdr;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 398
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPdrListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;

    .line 399
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;->updatePdrContext(Landroid/hardware/ssp/DaemonContexts$SSPPdr;)V

    goto :goto_0

    .line 401
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;
    :cond_0
    return-void
.end method

.method protected notifyPedestrianStatus(I)V
    .locals 3
    .parameter "pedestrianStatus"

    .prologue
    .line 156
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mLocationListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;

    .line 157
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;->updatePedestrianStatus(I)V

    goto :goto_0

    .line 159
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;
    :cond_0
    return-void
.end method

.method protected notifyPedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 278
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPedometerListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;

    .line 279
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;->updatePedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V

    goto :goto_0

    .line 281
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;
    :cond_0
    return-void
.end method

.method protected notifyRawGestureContext(Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 360
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawGestureListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorRawGesture;

    .line 361
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorRawGesture;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorRawGesture;->updateRawGestureContext(Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;)V

    goto :goto_0

    .line 363
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorRawGesture;
    :cond_0
    return-void
.end method

.method protected notifyRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 319
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawSensorListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;

    .line 320
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;->updateRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V

    goto :goto_0

    .line 322
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;
    :cond_0
    return-void
.end method

.method protected notifyZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPZone;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 437
    iget-object v2, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mZoneListener:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/IDaemonListenerAggregatorZone;

    .line 438
    .local v0, i:Landroid/hardware/ssp/IDaemonListenerAggregatorZone;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/IDaemonListenerAggregatorZone;->updateZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPZone;)V

    goto :goto_0

    .line 440
    .end local v0           #i:Landroid/hardware/ssp/IDaemonListenerAggregatorZone;
    :cond_0
    return-void
.end method

.method protected removeBLEObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorBLE;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 624
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mBLEListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mBLEListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeCarryingPositionObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorCarrying;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 223
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mCarryingPositionListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mCarryingPositionListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeDangerZoneObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorDangerZone;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 464
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mDangerZoneListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mDangerZoneListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeGestureObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 545
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mGestureListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mGestureListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeLocationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mLocationListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mLocationListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeMotionObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 505
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMotionListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMotionListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeMovingObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMoving;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 183
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMovingListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mMovingListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeNotificationObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorNotification;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 585
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mNotificationListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mNotificationListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removePdrObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPDR;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 385
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPdrListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPdrListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removePedometerObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorPedometer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 264
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPedometerListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mPedometerListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeRawGestureObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorRawGesture;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 346
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawGestureListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawGestureListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeRawSensorObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorRawSensor;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 305
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawSensorListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mRawSensorListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected removeZoneObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorZone;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 424
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mZoneListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonObserverAggregator;->mZoneListener:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
