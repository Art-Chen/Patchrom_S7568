.class public Landroid/hardware/ssp/DaemonContexts$SSPRawGps;
.super Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;
.source "DaemonContexts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPRawGps"
.end annotation


# instance fields
.field protected accuracy:F

.field protected altitude:D

.field protected bearing:F

.field protected latitude:D

.field protected longitude:D

.field protected speed:F

.field protected svCount:I

.field protected timeStamp:J

.field protected valid:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;-><init>(Landroid/hardware/ssp/DaemonContexts$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 376
    invoke-virtual {p0, v4, v5}, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->setSysTime(J)V

    .line 377
    iput-wide v4, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->timeStamp:J

    .line 378
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->latitude:D

    .line 379
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->longitude:D

    .line 380
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->altitude:D

    .line 381
    iput v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->bearing:F

    .line 382
    iput v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->speed:F

    .line 383
    iput v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->accuracy:F

    .line 384
    iput v3, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->valid:I

    .line 385
    iput v3, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGps;->svCount:I

    .line 386
    return-void
.end method
