.class public Landroid/hardware/ssp/DaemonContexts$SSPPdr;
.super Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;
.source "DaemonContexts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPPdr"
.end annotation


# instance fields
.field protected deltaTime:D

.field protected doe:I

.field protected heading:D

.field protected latitude:D

.field protected longitude:D

.field protected speed:D

.field protected timeStamp:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 463
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

    .line 493
    invoke-virtual {p0, v2, v3}, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->setSysTime(J)V

    .line 494
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->timeStamp:J

    .line 495
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->latitude:D

    .line 496
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->longitude:D

    .line 497
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->speed:D

    .line 498
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->deltaTime:D

    .line 499
    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->heading:D

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->doe:I

    .line 501
    return-void
.end method
