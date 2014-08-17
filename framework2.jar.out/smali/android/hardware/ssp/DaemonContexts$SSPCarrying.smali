.class public Landroid/hardware/ssp/DaemonContexts$SSPCarrying;
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
    name = "SSPCarrying"
.end annotation


# instance fields
.field protected carryingPosition:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPCarrying;->carryingPosition:I

    .line 223
    return-void
.end method
