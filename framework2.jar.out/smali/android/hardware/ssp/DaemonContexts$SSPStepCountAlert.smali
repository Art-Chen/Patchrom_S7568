.class public Landroid/hardware/ssp/DaemonContexts$SSPStepCountAlert;
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
    name = "SSPStepCountAlert"
.end annotation


# instance fields
.field protected action:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 661
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPStepCountAlert;->action:I

    .line 674
    return-void
.end method
