.class Landroid/hardware/ssp/DaemonRunnerGPS$2;
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

    .line 128
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-array v0, v1, [D

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationDel:[D

    .line 130
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationExtDel:[F

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 14
    .parameter "location"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 137
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-virtual {v6}, Landroid/hardware/ssp/DaemonRunnerGPS;->isRun()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v6, "GPS is running"

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 144
    .local v4, sysTime:J
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/ssp/DaemonRunnerGPS;->setLocationSysTime(J)V

    .line 146
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationDel:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    aput-wide v7, v6, v12

    .line 147
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationDel:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    aput-wide v7, v6, v11

    .line 148
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationDel:[D

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    aput-wide v7, v6, v13

    .line 150
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationExtDel:[F

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v7

    aput v7, v6, v12

    .line 151
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationExtDel:[F

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x400ccccccccccccdL

    mul-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v6, v11

    .line 152
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationExtDel:[F

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    aput v7, v6, v13

    .line 154
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    #calls: Landroid/hardware/ssp/DaemonRunnerGPS;->getGpsSatellites()Ljava/util/Iterator;
    invoke-static {v6}, Landroid/hardware/ssp/DaemonRunnerGPS;->access$200(Landroid/hardware/ssp/DaemonRunnerGPS;)Ljava/util/Iterator;

    move-result-object v0

    .line 156
    .local v0, gpsSatellites:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v1, 0x0

    .line 158
    .local v1, iSvCount:I
    if-eqz v0, :cond_3

    .line 159
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 161
    .local v3, satellite:Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    .end local v3           #satellite:Landroid/location/GpsSatellite;
    :cond_3
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-virtual {v6}, Landroid/hardware/ssp/DaemonRunnerGPS;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v6

    sget-object v7, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    if-ne v6, v7, :cond_0

    .line 168
    new-instance v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;

    invoke-direct {v2}, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;-><init>()V

    .line 169
    .local v2, rawGpsData:Landroid/hardware/ssp/DaemonContexts$SSPRawGps;
    invoke-virtual {v2, v4, v5}, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->setSysTime(J)V

    .line 170
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->timeStamp:J

    .line 171
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationDel:[D

    aget-wide v6, v6, v12

    iput-wide v6, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->latitude:D

    .line 172
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationDel:[D

    aget-wide v6, v6, v11

    iput-wide v6, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->longitude:D

    .line 173
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationDel:[D

    aget-wide v6, v6, v13

    iput-wide v6, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->altitude:D

    .line 174
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationExtDel:[F

    aget v6, v6, v12

    iput v6, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->bearing:F

    .line 175
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationExtDel:[F

    aget v6, v6, v11

    iput v6, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->speed:F

    .line 176
    iget-object v6, p0, Landroid/hardware/ssp/DaemonRunnerGPS$2;->locationExtDel:[F

    aget v6, v6, v13

    iput v6, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->accuracy:F

    .line 177
    iput v11, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->valid:I

    .line 178
    iput v1, v2, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->svCount:I

    .line 180
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->updateRawGpsData(Landroid/hardware/ssp/DaemonContexts$SSPRawGps;)V

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 186
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 134
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 191
    return-void
.end method
