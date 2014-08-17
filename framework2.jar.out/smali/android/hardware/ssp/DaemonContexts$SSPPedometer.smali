.class public Landroid/hardware/ssp/DaemonContexts$SSPPedometer;
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
    name = "SSPPedometer"
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
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepCount:J

    .line 149
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->calorie:D

    .line 150
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->distance:D

    .line 151
    iput-wide v2, p0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->speed:D

    .line 152
    iput v4, p0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepStatusST:I

    .line 153
    iput v4, p0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepStatusLT:I

    .line 154
    return-void
.end method
