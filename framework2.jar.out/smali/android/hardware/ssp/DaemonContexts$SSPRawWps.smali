.class public Landroid/hardware/ssp/DaemonContexts$SSPRawWps;
.super Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;
.source "DaemonContexts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPRawWps"
.end annotation


# instance fields
.field protected altitude:D

.field protected latitude:D

.field protected longitude:D

.field protected timeStamp:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;-><init>(Landroid/hardware/ssp/DaemonContexts$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 452
    invoke-virtual {p0, v2, v3}, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->setSysTime(J)V

    .line 453
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->timeStamp:J

    .line 454
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->latitude:D

    .line 455
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->longitude:D

    .line 456
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawWps;->altitude:D

    .line 457
    return-void
.end method
