.class public Landroid/hardware/ssp/DaemonContexts$SSPGesture;
.super Ljava/lang/Object;
.source "DaemonContexts.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPGesture"
.end annotation


# instance fields
.field protected proximity:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPGesture;->proximity:I

    .line 589
    return-void
.end method
