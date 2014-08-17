.class abstract Landroid/hardware/ssp/ADaemonAggregator;
.super Ljava/lang/Object;
.source "ADaemonAggregator.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonAggregator;


# instance fields
.field private mUsed:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public finalizeAggregator()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 42
    return-void
.end method

.method protected getUsedCnt()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    return v0
.end method

.method public initializeAggregator()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    .line 32
    return-void
.end method

.method public isRun()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    .line 52
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    .line 65
    :cond_0
    iget v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    if-gez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/ADaemonAggregator;->mUsed:I

    .line 68
    :cond_1
    return-void
.end method
