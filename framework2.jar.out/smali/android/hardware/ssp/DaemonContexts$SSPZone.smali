.class public Landroid/hardware/ssp/DaemonContexts$SSPZone;
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
    name = "SSPZone"
.end annotation


# instance fields
.field protected action:I

.field protected type:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 522
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    .line 523
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPZone;->action:I

    .line 524
    return-void
.end method
