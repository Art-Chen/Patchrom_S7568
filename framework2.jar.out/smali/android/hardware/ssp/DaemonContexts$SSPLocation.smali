.class public Landroid/hardware/ssp/DaemonContexts$SSPLocation;
.super Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;
.source "DaemonContexts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPLocation"
.end annotation


# instance fields
.field protected accuracy:F

.field protected altitude:D

.field protected heading:F

.field protected latitude:D

.field protected longitude:D

.field protected speed:F

.field protected timeStamp:J

.field protected valid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;-><init>(Landroid/hardware/ssp/DaemonContexts$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 106
    invoke-virtual {p0, v3, v4}, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->setSysTime(J)V

    .line 107
    iput-wide v3, p0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->timeStamp:J

    .line 108
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->latitude:D

    .line 109
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->longitude:D

    .line 110
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->altitude:D

    .line 111
    iput v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->accuracy:F

    .line 112
    iput v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->speed:F

    .line 113
    iput v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->heading:F

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->valid:Z

    .line 115
    return-void
.end method
