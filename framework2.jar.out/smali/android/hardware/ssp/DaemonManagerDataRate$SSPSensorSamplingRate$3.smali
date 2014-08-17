.class final enum Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate$3;
.super Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
.source "DaemonManagerDataRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/DaemonManagerDataRate$1;)V

    return-void
.end method


# virtual methods
.method protected getSamplingRate()I
    .locals 1

    .prologue
    .line 110
    const v0, 0xea60

    return v0
.end method
