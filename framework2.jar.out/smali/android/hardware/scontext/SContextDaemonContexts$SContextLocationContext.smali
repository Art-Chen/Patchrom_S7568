.class public Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;
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
    name = "SContextLocationContext"
.end annotation


# instance fields
.field protected latitude:D

.field protected longitude:D

.field protected timestamp:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->latitude:D

    .line 42
    iput-wide v0, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->longitude:D

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->timestamp:J

    .line 44
    return-void
.end method
