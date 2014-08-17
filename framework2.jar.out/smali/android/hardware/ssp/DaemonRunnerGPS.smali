.class Landroid/hardware/ssp/DaemonRunnerGPS;
.super Landroid/hardware/ssp/ADaemonRunner;
.source "DaemonRunnerGPS.java"


# static fields
.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L

.field private static final RUNNER_NAME:Ljava/lang/String;


# instance fields
.field private mGPSManager:Landroid/location/LocationManager;

.field private final mGPSStatusListener:Landroid/location/GpsStatus$Listener;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationSysTime:J

.field private final mNetworkListener:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GPS:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerGPS;->RUNNER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunner;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    .line 128
    new-instance v0, Landroid/hardware/ssp/DaemonRunnerGPS$2;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/DaemonRunnerGPS$2;-><init>(Landroid/hardware/ssp/DaemonRunnerGPS;)V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mLocationListener:Landroid/location/LocationListener;

    .line 195
    new-instance v0, Landroid/hardware/ssp/DaemonRunnerGPS$3;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/DaemonRunnerGPS$3;-><init>(Landroid/hardware/ssp/DaemonRunnerGPS;)V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSStatusListener:Landroid/location/GpsStatus$Listener;

    .line 247
    new-instance v0, Landroid/hardware/ssp/DaemonRunnerGPS$4;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/DaemonRunnerGPS$4;-><init>(Landroid/hardware/ssp/DaemonRunnerGPS;)V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mNetworkListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/ssp/DaemonRunnerGPS;)Landroid/location/GpsStatus$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSStatusListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/ssp/DaemonRunnerGPS;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/ssp/DaemonRunnerGPS;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonRunnerGPS;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    .line 344
    :goto_0
    return-object v1

    .line 342
    :cond_0
    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 344
    .local v0, gpsStatus:Landroid/location/GpsStatus;
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected disable()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerGPS;->disableGPS()V

    .line 69
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerGPS;->disableNetwork()V

    .line 70
    return-void
.end method

.method protected disableGPS()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 101
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    goto :goto_0
.end method

.method protected disableNetwork()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mNetworkListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerGPS;->enableGPS()V

    .line 58
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerGPS;->enableNetwork()V

    .line 59
    return-void
.end method

.method protected enableGPS()V
    .locals 7

    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mLocationListener:Landroid/location/LocationListener;

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/ssp/DaemonRunner;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonRunner;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/ssp/DaemonRunnerGPS$1;

    invoke-direct {v1, p0}, Landroid/hardware/ssp/DaemonRunnerGPS$1;-><init>(Landroid/hardware/ssp/DaemonRunnerGPS;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected enableNetwork()V
    .locals 7

    .prologue
    .line 108
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mNetworkListener:Landroid/location/LocationListener;

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/ssp/DaemonRunner;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method protected getLocationSysTime()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mLocationSysTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerGPS;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public pauseRunner()V
    .locals 0

    .prologue
    .line 317
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 318
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerGPS;->disable()V

    .line 319
    return-void
.end method

.method public prepareRunner()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    .line 375
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 376
    const-string v0, "GPSManager is null"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public resumeRunner()V
    .locals 0

    .prologue
    .line 328
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 329
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerGPS;->enable()V

    .line 330
    return-void
.end method

.method protected setLocationSysTime(J)V
    .locals 0
    .parameter "mLocationSysTime"

    .prologue
    .line 363
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mLocationSysTime:J

    .line 364
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerGPS;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z
    .locals 2
    .parameter "aggregator"
    .parameter "rate"

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Landroid/hardware/ssp/ADaemonRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    .line 305
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS;->mLocationSysTime:J

    .line 307
    const/4 v0, 0x1

    goto :goto_0
.end method
