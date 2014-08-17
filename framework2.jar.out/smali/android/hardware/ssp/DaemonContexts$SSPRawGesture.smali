.class public Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;
.super Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;
.source "DaemonContexts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPRawGesture"
.end annotation


# instance fields
.field protected proximity:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;-><init>(Landroid/hardware/ssp/DaemonContexts$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 293
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;->setSysTime(J)V

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawGesture;->proximity:F

    .line 295
    return-void
.end method
