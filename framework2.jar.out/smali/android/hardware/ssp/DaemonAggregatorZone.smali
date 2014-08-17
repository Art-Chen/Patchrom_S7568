.class Landroid/hardware/ssp/DaemonAggregatorZone;
.super Landroid/hardware/ssp/ADaemonAggregator;
.source "DaemonAggregatorZone.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorLPHP;


# static fields
.field private static final DEFAULT_HOME_LATITUDE:D = 37.523881

.field private static final DEFAULT_HOME_LONGITUDE:D = 126.939829

.field private static final DEFAULT_OFFICE_LATITUDE:D = 37.529913

.field private static final DEFAULT_OFFICE_LONGITUDE:D = 126.95121

.field private static final DEFAULT_RANGE:I = 0x14


# instance fields
.field private mCurType:I

.field private mHomeLatitude:D

.field private mHomeLongitude:D

.field private mOfficeLatitude:D

.field private mOfficeLongitude:D

.field private mRange:I

.field private mZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextZone;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonAggregator;-><init>()V

    return-void
.end method

.method private getDistance(DDDD)F
    .locals 5
    .parameter "latA"
    .parameter "longA"
    .parameter "latB"
    .parameter "longB"

    .prologue
    const-wide/16 v3, 0x0

    .line 258
    new-instance v0, Landroid/location/Location;

    const-string v2, "locA"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, locA:Landroid/location/Location;
    new-instance v1, Landroid/location/Location;

    const-string v2, "locB"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, locB:Landroid/location/Location;
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 262
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 263
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 265
    invoke-virtual {v1, p5, p6}, Landroid/location/Location;->setLatitude(D)V

    .line 266
    invoke-virtual {v1, p7, p8}, Landroid/location/Location;->setLongitude(D)V

    .line 267
    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 269
    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    return v2
.end method

.method private isHomeRange(DD)Z
    .locals 7
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-wide/16 v5, 0x0

    .line 227
    new-instance v1, Landroid/location/Location;

    const-string v3, "Temp"

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, locA:Landroid/location/Location;
    new-instance v2, Landroid/location/Location;

    const-string v3, "Temp"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, locB:Landroid/location/Location;
    iget-wide v3, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLatitude:D

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 231
    iget-wide v3, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLongitude:D

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 232
    invoke-virtual {v1, v5, v6}, Landroid/location/Location;->setAltitude(D)V

    .line 234
    invoke-virtual {v2, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 235
    invoke-virtual {v2, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 236
    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setAltitude(D)V

    .line 238
    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 240
    .local v0, distance:F
    iget v3, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mRange:I

    int-to-float v3, v3

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 125
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 126
    const-wide v0, 0x4042c30e8858ff76L

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLatitude:D

    .line 128
    :cond_0
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 129
    const-wide v0, 0x405fbc262888b546L

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLongitude:D

    .line 131
    :cond_1
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mOfficeLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 132
    const-wide v0, 0x4042c3d4306e5cd5L

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mOfficeLatitude:D

    .line 134
    :cond_2
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mOfficeLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 135
    const-wide v0, 0x405fbce09fe86834L

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mOfficeLongitude:D

    .line 137
    :cond_3
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mRange:I

    if-nez v0, :cond_4

    .line 138
    const/16 v0, 0x14

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mRange:I

    .line 141
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mCurType:I

    .line 143
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->clear()V

    .line 151
    return-void
.end method

.method protected notifyZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPZone;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 160
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPZone;->action:I

    if-eq v0, v1, :cond_0

    .line 168
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    if-ne v0, v1, :cond_2

    .line 169
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderAudio;->getInstance()Landroid/hardware/ssp/DaemonProviderAudio;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/ssp/DaemonProviderAudio;->setAudioMode(I)V

    .line 173
    :cond_2
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    if-ne v0, v2, :cond_3

    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPZone;->action:I

    if-ne v0, v1, :cond_3

    .line 175
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderAudio;->getInstance()Landroid/hardware/ssp/DaemonProviderAudio;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderAudio;->setAudioMode(I)V

    .line 180
    :cond_3
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonObserverAggregator;->notifyZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPZone;)V

    goto :goto_0
.end method

.method protected setHomeLatitude(D)V
    .locals 2
    .parameter "latitude"

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHomeLatitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 280
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLatitude:D

    .line 281
    return-void
.end method

.method protected setHomeLongitude(D)V
    .locals 2
    .parameter "longitude"

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHomeLongitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 291
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLongitude:D

    .line 292
    return-void
.end method

.method protected setOfficeLatitude(D)V
    .locals 2
    .parameter "latitude"

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOfficeLatitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 302
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mOfficeLatitude:D

    .line 303
    return-void
.end method

.method protected setOfficeLongitude(D)V
    .locals 2
    .parameter "longitude"

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOfficeLongitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 313
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mOfficeLongitude:D

    .line 314
    return-void
.end method

.method protected setRange(I)V
    .locals 3
    .parameter "range"

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 324
    iput p1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mRange:I

    .line 325
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 61
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonAggregatorZone;->clear()V

    .line 76
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextZone;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-static {}, Landroid/hardware/ssp/DaemonManagerDataRate;->getInstance()Landroid/hardware/ssp/DaemonManagerDataRate;

    move-result-object v4

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerContextZone;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextZone;

    .line 84
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getContextRunner()Landroid/hardware/ssp/DaemonRunnerContext;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextZone;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunnerContext;->addContextRunner(Landroid/hardware/ssp/ADaemonRunnerContext;)V

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->start()V

    .line 89
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 100
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getContextRunner()Landroid/hardware/ssp/DaemonRunnerContext;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextZone;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunnerContext;->removeContextRunner(Landroid/hardware/ssp/ADaemonRunnerContext;)V

    .line 113
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextZone;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V

    goto :goto_0
.end method

.method public updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    .line 193
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLatitude:D

    iget-wide v3, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mHomeLongitude:D

    iget-wide v5, p1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->latitude:D

    iget-wide v7, p1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->longitude:D

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/hardware/ssp/DaemonAggregatorZone;->getDistance(DDDD)F

    move-result v9

    .line 195
    .local v9, homeDist:F
    iget-wide v1, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mOfficeLatitude:D

    iget-wide v3, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mOfficeLongitude:D

    iget-wide v5, p1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->latitude:D

    iget-wide v7, p1, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->longitude:D

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/hardware/ssp/DaemonAggregatorZone;->getDistance(DDDD)F

    move-result v10

    .line 198
    .local v10, officeDist:F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "homeDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", officeDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 201
    new-instance v11, Landroid/hardware/ssp/DaemonContexts$SSPZone;

    invoke-direct {v11}, Landroid/hardware/ssp/DaemonContexts$SSPZone;-><init>()V

    .line 202
    .local v11, zoneContext:Landroid/hardware/ssp/DaemonContexts$SSPZone;
    invoke-virtual {v11}, Landroid/hardware/ssp/DaemonContexts$SSPZone;->clear()V

    .line 203
    iput v12, v11, Landroid/hardware/ssp/DaemonContexts$SSPZone;->action:I

    .line 205
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mRange:I

    int-to-float v0, v0

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_1

    .line 206
    iput v12, v11, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    .line 213
    :goto_0
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mCurType:I

    iget v1, v11, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    if-ne v0, v1, :cond_2

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mRange:I

    int-to-float v0, v0

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_0

    .line 208
    const/4 v0, 0x2

    iput v0, v11, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    goto :goto_0

    .line 217
    :cond_2
    iget v0, v11, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorZone;->mCurType:I

    .line 219
    invoke-virtual {p0, v11}, Landroid/hardware/ssp/DaemonAggregatorZone;->notifyZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPZone;)V

    goto :goto_1
.end method

.method public updatePedestrianStatus(I)V
    .locals 0
    .parameter "pedestrianStatus"

    .prologue
    .line 224
    return-void
.end method
