.class Landroid/hardware/ssp/DaemonRunnerContextGesture;
.super Landroid/hardware/ssp/ADaemonRunnerContext;
.source "DaemonRunnerContextGesture.java"


# static fields
.field private static final RUNNER_NAME:Ljava/lang/String;


# instance fields
.field private mGestureContext:Landroid/hardware/ssp/DaemonContexts$SSPGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerContextGesture;->RUNNER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPGesture;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPGesture;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextGesture;->mGestureContext:Landroid/hardware/ssp/DaemonContexts$SSPGesture;

    .line 67
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextGesture;->mGestureContext:Landroid/hardware/ssp/DaemonContexts$SSPGesture;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPGesture;->clear()V

    .line 68
    return-void
.end method

.method protected disable()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerSensorHub;->getInstance()Landroid/hardware/ssp/DaemonManagerSensorHub;

    move-result-object v0

    const/16 v1, -0x4e

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerSensorHub;->sendCmdToSensorHub(BB[B)V

    .line 57
    return-void
.end method

.method protected enable()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerSensorHub;->getInstance()Landroid/hardware/ssp/DaemonManagerSensorHub;

    move-result-object v0

    const/16 v1, -0x4f

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ssp/DaemonManagerSensorHub;->sendCmdToSensorHub(BB[B)V

    .line 43
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerContextGesture;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public notifyContext()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getGestureAggregator()Landroid/hardware/ssp/DaemonAggregatorGesture;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerContextGesture;->mGestureContext:Landroid/hardware/ssp/DaemonContexts$SSPGesture;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorGesture;->notifyGestureContext(Landroid/hardware/ssp/DaemonContexts$SSPGesture;)V

    .line 131
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerContextGesture;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public updateContext(Landroid/hardware/ssp/DaemonParserContext;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 101
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Landroid/hardware/ssp/DaemonParserContext;->getParser(B)Landroid/hardware/ssp/ADaemonParserData;

    move-result-object v1

    .line 103
    .local v1, gestureParser:Landroid/hardware/ssp/ADaemonParserData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->display()V

    .line 111
    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/IDaemonParserMsgType;

    .local v3, next:Landroid/hardware/ssp/IDaemonParserMsgType;
    move-object v0, v3

    .line 112
    check-cast v0, Landroid/hardware/ssp/DaemonContextGesture;

    .line 114
    .local v0, gestureMsg:Landroid/hardware/ssp/DaemonContextGesture;
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextGesture;->mGestureContext:Landroid/hardware/ssp/DaemonContexts$SSPGesture;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextGesture;->getProximity()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPGesture;->proximity:I

    .line 116
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerContextGesture;->notifyContext()V

    goto :goto_1

    .line 119
    .end local v0           #gestureMsg:Landroid/hardware/ssp/DaemonContextGesture;
    .end local v3           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->clear()V

    goto :goto_0
.end method
