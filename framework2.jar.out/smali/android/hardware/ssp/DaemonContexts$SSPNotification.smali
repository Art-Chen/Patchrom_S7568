.class public Landroid/hardware/ssp/DaemonContexts$SSPNotification;
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
    name = "SSPNotification"
.end annotation


# instance fields
.field protected action:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPNotification;->action:I

    .line 608
    return-void
.end method
