.class abstract Landroid/hardware/ssp/ADaemonRunner;
.super Ljava/lang/Object;
.source "ADaemonRunner.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonRunner;
.implements Landroid/hardware/ssp/IDaemonBuilderRunner;


# static fields
.field protected static final READY:I = 0x1

.field protected static final RUN:I = 0x3

.field protected static final SLEEP:I = 0x0

.field protected static final WAIT:I = 0x2


# instance fields
.field private aggregator:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

.field private mDataRate:I

.field private mRunner:Landroid/hardware/ssp/DaemonRunner;

.field private running:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/ADaemonRunner;->running:I

    return-void
.end method


# virtual methods
.method public clearVar()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method protected abstract disable()V
.end method

.method protected abstract enable()V
.end method

.method protected getAggregator()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/hardware/ssp/ADaemonRunner;->aggregator:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    return-object v0
.end method

.method protected getDataRate()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Landroid/hardware/ssp/ADaemonRunner;->mDataRate:I

    return v0
.end method

.method protected getRunner()Landroid/hardware/ssp/DaemonRunner;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/hardware/ssp/ADaemonRunner;->mRunner:Landroid/hardware/ssp/DaemonRunner;

    return-object v0
.end method

.method public isRun()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/hardware/ssp/ADaemonRunner;->running:I

    return v0
.end method

.method protected setRunner(Landroid/hardware/ssp/DaemonRunner;)V
    .locals 0
    .parameter "runner"

    .prologue
    .line 113
    iput-object p1, p0, Landroid/hardware/ssp/ADaemonRunner;->mRunner:Landroid/hardware/ssp/DaemonRunner;

    .line 114
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 160
    iput p1, p0, Landroid/hardware/ssp/ADaemonRunner;->running:I

    .line 161
    return-void
.end method

.method public startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z
    .locals 2
    .parameter "aggregator"
    .parameter "rate"

    .prologue
    const/4 v1, 0x3

    .line 57
    iget v0, p0, Landroid/hardware/ssp/ADaemonRunner;->running:I

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 61
    :cond_0
    iput-object p1, p0, Landroid/hardware/ssp/ADaemonRunner;->aggregator:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    .line 62
    iput p2, p0, Landroid/hardware/ssp/ADaemonRunner;->mDataRate:I

    .line 64
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonRunner;->enable()V

    .line 65
    invoke-virtual {p0, v1}, Landroid/hardware/ssp/ADaemonRunner;->setStatus(I)V

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopRunner()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    iget v1, p0, Landroid/hardware/ssp/ADaemonRunner;->running:I

    if-nez v1, :cond_0

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonRunner;->disable()V

    .line 82
    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ADaemonRunner;->setStatus(I)V

    .line 84
    const/4 v0, 0x1

    goto :goto_0
.end method
