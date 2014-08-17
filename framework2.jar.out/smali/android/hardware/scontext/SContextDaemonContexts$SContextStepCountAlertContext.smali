.class public Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;
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
    name = "SContextStepCountAlertContext"
.end annotation


# instance fields
.field protected alert:I

.field protected timestamp:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;->alert:I

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;->timestamp:J

    .line 89
    return-void
.end method
