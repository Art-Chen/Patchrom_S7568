.class final enum Landroid/hardware/ssp/DaemonConstants$SSPMode$1;
.super Landroid/hardware/ssp/DaemonConstants$SSPMode;
.source "DaemonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonConstants$SSPMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/DaemonConstants$SSPMode;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/DaemonConstants$1;)V

    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode$1;->NOMAL_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPMode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
