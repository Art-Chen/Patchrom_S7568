.class public Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;
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
    name = "SSPDangerZone"
.end annotation


# instance fields
.field protected action:I

.field protected category:I

.field protected level:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 548
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->category:I

    .line 549
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->action:I

    .line 550
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->level:I

    .line 551
    return-void
.end method
