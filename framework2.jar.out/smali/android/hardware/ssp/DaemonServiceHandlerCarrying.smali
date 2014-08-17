.class Landroid/hardware/ssp/DaemonServiceHandlerCarrying;
.super Ljava/lang/Object;
.source "DaemonServiceHandlerCarrying.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final mGeneralMsgProvider:Landroid/hardware/ssp/DaemonProviderGeneralMsg;

.field private mObserver:Ljava/util/Observable;

.field private final mReplyObserver:Ljava/util/Observable;

.field private mSensorRunner:Landroid/hardware/ssp/DaemonRunnerSensor;

.field private running:Z


# direct methods
.method public constructor <init>(Landroid/hardware/ssp/DaemonProviderGeneralMsg;Ljava/util/Observable;)V
    .locals 1
    .parameter "generalProvider"
    .parameter "replayObs"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/ssp/DaemonServiceHandlerCarrying;->running:Z

    .line 56
    iput-object p1, p0, Landroid/hardware/ssp/DaemonServiceHandlerCarrying;->mGeneralMsgProvider:Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    .line 57
    iput-object p2, p0, Landroid/hardware/ssp/DaemonServiceHandlerCarrying;->mReplyObserver:Ljava/util/Observable;

    .line 58
    return-void
.end method


# virtual methods
.method protected init(I)V
    .locals 0
    .parameter "samplingTime"

    .prologue
    .line 102
    return-void
.end method

.method public isService()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Landroid/hardware/ssp/DaemonServiceHandlerCarrying;->running:Z

    return v0
.end method

.method public setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V
    .locals 0
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, value:Ljava/lang/Object;,"TE;"
    return-void
.end method

.method protected setRunning(Z)V
    .locals 0
    .parameter "isRun"

    .prologue
    .line 196
    iput-boolean p1, p0, Landroid/hardware/ssp/DaemonServiceHandlerCarrying;->running:Z

    .line 197
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public declared-synchronized update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter "obs"
    .parameter "arg"

    .prologue
    .line 164
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
