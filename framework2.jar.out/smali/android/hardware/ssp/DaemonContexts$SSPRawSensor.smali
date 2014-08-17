.class public Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;
.super Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;
.source "DaemonContexts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPRawSensor"
.end annotation


# instance fields
.field protected accAccuracy:F

.field protected accelerometer:[F

.field protected gyroAccuracy:F

.field protected gyroscope:[F

.field protected magAccuracy:F

.field protected magnetic:[F

.field protected oriAccuracy:F

.field protected orientation:[F

.field protected timeStamp:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;-><init>(Landroid/hardware/ssp/DaemonContexts$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0, v3, v4}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->setSysTime(J)V

    .line 266
    iput-wide v3, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->timeStamp:J

    .line 267
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->accelerometer:[F

    .line 268
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->orientation:[F

    .line 269
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->magnetic:[F

    .line 270
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->gyroscope:[F

    .line 271
    iput v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->accAccuracy:F

    .line 272
    iput v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->oriAccuracy:F

    .line 273
    iput v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->magAccuracy:F

    .line 274
    iput v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->gyroAccuracy:F

    .line 275
    return-void

    .line 267
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 268
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 269
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 270
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
