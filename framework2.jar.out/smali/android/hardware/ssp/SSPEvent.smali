.class public Landroid/hardware/ssp/SSPEvent;
.super Ljava/lang/Object;
.source "SSPEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BLE:I = 0xc

.field public static final CARRYING:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/ssp/SSPEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DANGER_ZONE:I = 0x8

.field public static final GENERAL:I = 0x1

.field public static final GESTURE:I = 0xa

.field public static final LOCATION:I = 0x2

.field public static final MOTION:I = 0x9

.field public static final MOVING:I = 0x3

.field public static final NONE:I = 0x0

.field public static final NOTIFICATION:I = 0xb

.field public static final PEDOMETER:I = 0x5

.field public static final RAW_SENSOR:I = 0x6

.field public static final ZONE:I = 0x7


# instance fields
.field private event:I

.field private mBleContext:Landroid/hardware/ssp/SSPBleContext;

.field private mCarryingContext:Landroid/hardware/ssp/SSPCarryingContext;

.field private mDangerZoneContext:Landroid/hardware/ssp/SSPDangerZoneContext;

.field private mGeneralContext:Landroid/hardware/ssp/SSPGeneralContext;

.field private mGestureContext:Landroid/hardware/ssp/SSPGestureContext;

.field private mLocationContext:Landroid/hardware/ssp/SSPLocationContext;

.field private mMotionContext:Landroid/hardware/ssp/SSPMotionContext;

.field private mMovingContext:Landroid/hardware/ssp/SSPMovingContext;

.field private mNotificationContext:Landroid/hardware/ssp/SSPNotificationContext;

.field private mPedometerContext:Landroid/hardware/ssp/SSPPedometerContext;

.field private mRawSensorContext:Landroid/hardware/ssp/SSPRawSensorContext;

.field private mZoneContext:Landroid/hardware/ssp/SSPZoneContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 438
    new-instance v0, Landroid/hardware/ssp/SSPEvent$1;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/SSPEvent;->event:I

    .line 108
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-direct {p0, p1}, Landroid/hardware/ssp/SSPEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPEvent;->event:I

    .line 411
    const-class v0, Landroid/hardware/ssp/SSPGeneralContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPGeneralContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mGeneralContext:Landroid/hardware/ssp/SSPGeneralContext;

    .line 413
    const-class v0, Landroid/hardware/ssp/SSPLocationContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPLocationContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mLocationContext:Landroid/hardware/ssp/SSPLocationContext;

    .line 415
    const-class v0, Landroid/hardware/ssp/SSPMovingContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPMovingContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mMovingContext:Landroid/hardware/ssp/SSPMovingContext;

    .line 417
    const-class v0, Landroid/hardware/ssp/SSPCarryingContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPCarryingContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mCarryingContext:Landroid/hardware/ssp/SSPCarryingContext;

    .line 419
    const-class v0, Landroid/hardware/ssp/SSPPedometerContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPPedometerContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mPedometerContext:Landroid/hardware/ssp/SSPPedometerContext;

    .line 421
    const-class v0, Landroid/hardware/ssp/SSPRawSensorContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPRawSensorContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mRawSensorContext:Landroid/hardware/ssp/SSPRawSensorContext;

    .line 423
    const-class v0, Landroid/hardware/ssp/SSPZoneContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPZoneContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mZoneContext:Landroid/hardware/ssp/SSPZoneContext;

    .line 425
    const-class v0, Landroid/hardware/ssp/SSPDangerZoneContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPDangerZoneContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mDangerZoneContext:Landroid/hardware/ssp/SSPDangerZoneContext;

    .line 427
    const-class v0, Landroid/hardware/ssp/SSPMotionContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPMotionContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mMotionContext:Landroid/hardware/ssp/SSPMotionContext;

    .line 429
    const-class v0, Landroid/hardware/ssp/SSPGestureContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPGestureContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mGestureContext:Landroid/hardware/ssp/SSPGestureContext;

    .line 431
    const-class v0, Landroid/hardware/ssp/SSPNotificationContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPNotificationContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mNotificationContext:Landroid/hardware/ssp/SSPNotificationContext;

    .line 433
    const-class v0, Landroid/hardware/ssp/SSPBleContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPBleContext;

    iput-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mBleContext:Landroid/hardware/ssp/SSPBleContext;

    .line 435
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public getBleContext()Landroid/hardware/ssp/SSPBleContext;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mBleContext:Landroid/hardware/ssp/SSPBleContext;

    return-object v0
.end method

.method public getCarryingContext()Landroid/hardware/ssp/SSPCarryingContext;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mCarryingContext:Landroid/hardware/ssp/SSPCarryingContext;

    return-object v0
.end method

.method public getDangerZoneContext()Landroid/hardware/ssp/SSPDangerZoneContext;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mDangerZoneContext:Landroid/hardware/ssp/SSPDangerZoneContext;

    return-object v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/hardware/ssp/SSPEvent;->event:I

    return v0
.end method

.method public getGeneralContext()Landroid/hardware/ssp/SSPGeneralContext;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mGeneralContext:Landroid/hardware/ssp/SSPGeneralContext;

    return-object v0
.end method

.method public getGestureContext()Landroid/hardware/ssp/SSPGestureContext;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mGestureContext:Landroid/hardware/ssp/SSPGestureContext;

    return-object v0
.end method

.method public getLocationContext()Landroid/hardware/ssp/SSPLocationContext;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mLocationContext:Landroid/hardware/ssp/SSPLocationContext;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/ssp/SSPMotionContext;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mMotionContext:Landroid/hardware/ssp/SSPMotionContext;

    return-object v0
.end method

.method public getMovingContext()Landroid/hardware/ssp/SSPMovingContext;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mMovingContext:Landroid/hardware/ssp/SSPMovingContext;

    return-object v0
.end method

.method public getNotificationContext()Landroid/hardware/ssp/SSPNotificationContext;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mNotificationContext:Landroid/hardware/ssp/SSPNotificationContext;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/ssp/SSPPedometerContext;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mPedometerContext:Landroid/hardware/ssp/SSPPedometerContext;

    return-object v0
.end method

.method public getRawSensorContext()Landroid/hardware/ssp/SSPRawSensorContext;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mRawSensorContext:Landroid/hardware/ssp/SSPRawSensorContext;

    return-object v0
.end method

.method public getZoneContext()Landroid/hardware/ssp/SSPZoneContext;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mZoneContext:Landroid/hardware/ssp/SSPZoneContext;

    return-object v0
.end method

.method protected setBleContext(Landroid/hardware/ssp/SSPBleContext;)V
    .locals 0
    .parameter "bleContext"

    .prologue
    .line 368
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mBleContext:Landroid/hardware/ssp/SSPBleContext;

    .line 369
    return-void
.end method

.method protected setCarryingContext(Landroid/hardware/ssp/SSPCarryingContext;)V
    .locals 0
    .parameter "carryingContext"

    .prologue
    .line 212
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mCarryingContext:Landroid/hardware/ssp/SSPCarryingContext;

    .line 213
    return-void
.end method

.method protected setDangerZoneContext(Landroid/hardware/ssp/SSPDangerZoneContext;)V
    .locals 0
    .parameter "dangerZoneContext"

    .prologue
    .line 291
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mDangerZoneContext:Landroid/hardware/ssp/SSPDangerZoneContext;

    .line 292
    return-void
.end method

.method protected setEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 136
    iput p1, p0, Landroid/hardware/ssp/SSPEvent;->event:I

    .line 137
    return-void
.end method

.method protected setGeneralContext(Landroid/hardware/ssp/SSPGeneralContext;)V
    .locals 0
    .parameter "generalContext"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mGeneralContext:Landroid/hardware/ssp/SSPGeneralContext;

    .line 156
    return-void
.end method

.method protected setGestureContext(Landroid/hardware/ssp/SSPGestureContext;)V
    .locals 0
    .parameter "gestureContext"

    .prologue
    .line 329
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mGestureContext:Landroid/hardware/ssp/SSPGestureContext;

    .line 330
    return-void
.end method

.method protected setLocationContext(Landroid/hardware/ssp/SSPLocationContext;)V
    .locals 0
    .parameter "locationContext"

    .prologue
    .line 174
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mLocationContext:Landroid/hardware/ssp/SSPLocationContext;

    .line 175
    return-void
.end method

.method protected setMotionContext(Landroid/hardware/ssp/SSPMotionContext;)V
    .locals 0
    .parameter "motionContext"

    .prologue
    .line 310
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mMotionContext:Landroid/hardware/ssp/SSPMotionContext;

    .line 311
    return-void
.end method

.method protected setMovingContext(Landroid/hardware/ssp/SSPMovingContext;)V
    .locals 0
    .parameter "movingContext"

    .prologue
    .line 193
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mMovingContext:Landroid/hardware/ssp/SSPMovingContext;

    .line 194
    return-void
.end method

.method protected setNotificationContext(Landroid/hardware/ssp/SSPNotificationContext;)V
    .locals 0
    .parameter "notificationContext"

    .prologue
    .line 349
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mNotificationContext:Landroid/hardware/ssp/SSPNotificationContext;

    .line 350
    return-void
.end method

.method protected setPedometerContext(Landroid/hardware/ssp/SSPPedometerContext;)V
    .locals 0
    .parameter "pedometerContext"

    .prologue
    .line 232
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mPedometerContext:Landroid/hardware/ssp/SSPPedometerContext;

    .line 233
    return-void
.end method

.method protected setRawSensorContext(Landroid/hardware/ssp/SSPRawSensorContext;)V
    .locals 0
    .parameter "rawsensorContext"

    .prologue
    .line 252
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mRawSensorContext:Landroid/hardware/ssp/SSPRawSensorContext;

    .line 253
    return-void
.end method

.method protected setZoneContext(Landroid/hardware/ssp/SSPZoneContext;)V
    .locals 0
    .parameter "zoneContext"

    .prologue
    .line 271
    iput-object p1, p0, Landroid/hardware/ssp/SSPEvent;->mZoneContext:Landroid/hardware/ssp/SSPZoneContext;

    .line 272
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 388
    iget v0, p0, Landroid/hardware/ssp/SSPEvent;->event:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mGeneralContext:Landroid/hardware/ssp/SSPGeneralContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 390
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mLocationContext:Landroid/hardware/ssp/SSPLocationContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 391
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mMovingContext:Landroid/hardware/ssp/SSPMovingContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 392
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mCarryingContext:Landroid/hardware/ssp/SSPCarryingContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 393
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mPedometerContext:Landroid/hardware/ssp/SSPPedometerContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 394
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mRawSensorContext:Landroid/hardware/ssp/SSPRawSensorContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 395
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mZoneContext:Landroid/hardware/ssp/SSPZoneContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 396
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mDangerZoneContext:Landroid/hardware/ssp/SSPDangerZoneContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 397
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mMotionContext:Landroid/hardware/ssp/SSPMotionContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 398
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mGestureContext:Landroid/hardware/ssp/SSPGestureContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 399
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mNotificationContext:Landroid/hardware/ssp/SSPNotificationContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 400
    iget-object v0, p0, Landroid/hardware/ssp/SSPEvent;->mBleContext:Landroid/hardware/ssp/SSPBleContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 401
    return-void
.end method
