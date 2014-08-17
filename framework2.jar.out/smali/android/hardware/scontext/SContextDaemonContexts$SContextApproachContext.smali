.class public Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;
.super Ljava/lang/Object;
.source "SContextDaemonContexts.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextDaemonContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextDaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SContextApproachContext"
.end annotation


# instance fields
.field protected approach:I

.field protected timestamp:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;->approach:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;->timestamp:J

    .line 15
    return-void
.end method
