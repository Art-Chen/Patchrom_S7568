.class public Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
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
    name = "SContextPedometerContext"
.end annotation


# instance fields
.field protected calorie:D

.field protected distance:D

.field protected speed:D

.field protected stepCount:J

.field protected stepStatusLT:I

.field protected stepStatusST:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepCount:J

    .line 72
    iput-wide v2, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->calorie:D

    .line 73
    iput-wide v2, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->distance:D

    .line 74
    iput-wide v2, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->speed:D

    .line 75
    iput v4, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepStatusST:I

    .line 76
    iput v4, p0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepStatusLT:I

    .line 77
    return-void
.end method
