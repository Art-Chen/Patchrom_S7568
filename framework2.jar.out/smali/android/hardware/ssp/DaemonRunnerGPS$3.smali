.class Landroid/hardware/ssp/DaemonRunnerGPS$3;
.super Ljava/lang/Object;
.source "DaemonRunnerGPS.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonRunnerGPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mmAz:[F

.field private final mmEl:[F

.field private final mmMask:[I

.field private final mmPrn:[I

.field private final mmSnr:[F

.field final synthetic this$0:Landroid/hardware/ssp/DaemonRunnerGPS;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/DaemonRunnerGPS;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x20

    .line 195
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmPrn:[I

    .line 197
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmSnr:[F

    .line 198
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmEl:[F

    .line 199
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmAz:[F

    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmMask:[I

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 7
    .parameter "event"

    .prologue
    .line 203
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-virtual {v5}, Landroid/hardware/ssp/DaemonRunnerGPS;->isRun()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 208
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    #calls: Landroid/hardware/ssp/DaemonRunnerGPS;->getGpsSatellites()Ljava/util/Iterator;
    invoke-static {v5}, Landroid/hardware/ssp/DaemonRunnerGPS;->access$200(Landroid/hardware/ssp/DaemonRunnerGPS;)Ljava/util/Iterator;

    move-result-object v0

    .line 210
    .local v0, gpsSatellites:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v1, 0x0

    .line 211
    .local v1, nNumSat:I
    const/4 v2, 0x0

    .line 213
    .local v2, nNumSatUsedInFix:I
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    .line 216
    .local v4, satellite:Landroid/location/GpsSatellite;
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmPrn:[I

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    aput v6, v5, v1

    .line 217
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmSnr:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    aput v6, v5, v1

    .line 218
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmEl:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    aput v6, v5, v1

    .line 219
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmAz:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    aput v6, v5, v1

    .line 221
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 225
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 226
    goto :goto_1

    .line 228
    .end local v4           #satellite:Landroid/location/GpsSatellite;
    :cond_3
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmMask:[I

    const/4 v6, 0x2

    aput v2, v5, v6

    .line 230
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-virtual {v5}, Landroid/hardware/ssp/DaemonRunnerGPS;->getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v5

    sget-object v6, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    if-ne v5, v6, :cond_0

    .line 231
    new-instance v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;

    invoke-direct {v3}, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;-><init>()V

    .line 232
    .local v3, rawSatelliteData:Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;
    iput v1, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->numSat:I

    .line 233
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmPrn:[I

    iput-object v5, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->prn:[I

    .line 234
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmSnr:[F

    iput-object v5, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->snr:[F

    .line 235
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmEl:[F

    iput-object v5, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->elev:[F

    .line 236
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmAz:[F

    iput-object v5, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->azim:[F

    .line 237
    iget-object v5, p0, Landroid/hardware/ssp/DaemonRunnerGPS$3;->mmMask:[I

    iput-object v5, v3, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->mask:[I

    .line 239
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->getInstance()Landroid/hardware/ssp/DaemonAggregatorLPHP;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/hardware/ssp/DaemonAggregatorLPHP;->updateRawSatelliteData(Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;)V

    goto :goto_0
.end method
