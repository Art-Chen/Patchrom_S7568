.class Landroid/hardware/ssp/DaemonRunnerGPS$4;
.super Ljava/lang/Object;
.source "DaemonRunnerGPS.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonRunnerGPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final locationDel:[D

.field private final locationExtDel:[F

.field final synthetic this$0:Landroid/hardware/ssp/DaemonRunnerGPS;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/DaemonRunnerGPS;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 247
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-array v0, v1, [D

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationDel:[D

    .line 249
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationExtDel:[F

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 11
    .parameter "location"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 257
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-virtual {v3}, Landroid/hardware/ssp/DaemonRunnerGPS;->isRun()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 263
    .local v1, sysTime:J
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationDel:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v3, v8

    .line 264
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationDel:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v3, v9

    .line 265
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationDel:[D

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, v3, v10

    .line 267
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationExtDel:[F

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    aput v4, v3, v8

    .line 268
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationExtDel:[F

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x400ccccccccccccdL

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v9

    .line 269
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationExtDel:[F

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    aput v4, v3, v10

    .line 271
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-virtual {v3}, Landroid/hardware/ssp/DaemonRunnerGPS;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v3

    sget-object v4, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    if-ne v3, v4, :cond_0

    .line 272
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;-><init>()V

    .line 273
    .local v0, rawWpsData:Landroid/hardware/ssp/DaemonContexts$SSPRawWps;
    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->setSysTime(J)V

    .line 274
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->timeStamp:J

    .line 275
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationDel:[D

    aget-wide v3, v3, v8

    iput-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->latitude:D

    .line 276
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationDel:[D

    aget-wide v3, v3, v9

    iput-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->longitude:D

    .line 277
    iget-object v3, p0, Landroid/hardware/ssp/DaemonRunnerGPS$4;->locationDel:[D

    aget-wide v3, v3, v10

    iput-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->altitude:D

    .line 279
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->updateRawWpsData(Landroid/hardware/ssp/DaemonContexts$SSPRawWps;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 253
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 290
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 286
    return-void
.end method
