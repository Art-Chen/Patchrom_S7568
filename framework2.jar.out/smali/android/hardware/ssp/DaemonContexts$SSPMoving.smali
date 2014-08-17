.class public Landroid/hardware/ssp/DaemonContexts$SSPMoving;
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
    name = "SSPMoving"
.end annotation


# instance fields
.field protected mode:I

.field protected move:I

.field protected step:I

.field protected transMethod:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 200
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    .line 201
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 202
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->mode:I

    .line 203
    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->step:I

    .line 204
    return-void
.end method
