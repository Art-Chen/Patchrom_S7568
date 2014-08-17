.class abstract Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;
.super Ljava/lang/Object;
.source "DaemonContexts.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractCommonContexts"
.end annotation


# instance fields
.field private sysTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/ssp/DaemonContexts$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSysTime()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;->sysTime:J

    return-wide v0
.end method

.method protected setSysTime(J)V
    .locals 0
    .parameter "sysTime"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/hardware/ssp/DaemonContexts$AbstractCommonContexts;->sysTime:J

    .line 39
    return-void
.end method
