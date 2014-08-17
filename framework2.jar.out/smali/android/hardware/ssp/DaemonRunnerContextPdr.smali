.class Landroid/hardware/ssp/DaemonRunnerContextPdr;
.super Landroid/hardware/ssp/ADaemonRunnerContext;
.source "DaemonRunnerContextPdr.java"


# static fields
.field private static final RUNNER_NAME:Ljava/lang/String;


# instance fields
.field private mPdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PDR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->RUNNER_NAME:Ljava/lang/String;

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
    .line 62
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPPdr;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->mPdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    .line 63
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->mPdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->clear()V

    .line 64
    return-void
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public notifyContext()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getPdrAggregator()Landroid/hardware/ssp/DaemonAggregatorPdr;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->mPdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorPdr;->notifyPdrContext(Landroid/hardware/ssp/DaemonContexts$SSPPdr;)V

    .line 131
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerContextPdr;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public updateContext(Landroid/hardware/ssp/DaemonParserContext;)V
    .locals 8
    .parameter "parser"

    .prologue
    const/4 v7, 0x1

    .line 97
    invoke-virtual {p1, v7}, Landroid/hardware/ssp/DaemonParserContext;->getParser(B)Landroid/hardware/ssp/ADaemonParserData;

    move-result-object v3

    .line 98
    .local v3, pdrParser:Landroid/hardware/ssp/ADaemonParserData;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->display()V

    .line 106
    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ssp/IDaemonParserMsgType;

    .local v1, next:Landroid/hardware/ssp/IDaemonParserMsgType;
    move-object v2, v1

    .line 107
    check-cast v2, Landroid/hardware/ssp/DaemonContextPDR;

    .line 109
    .local v2, pdrMsg:Landroid/hardware/ssp/DaemonContextPDR;
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->mPdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPDR;->getSpeed()D

    move-result-wide v5

    iput-wide v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->speed:D

    .line 110
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->mPdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPDR;->getDeltaTime()D

    move-result-wide v5

    iput-wide v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->deltaTime:D

    .line 111
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->mPdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPDR;->getHeading()D

    move-result-wide v5

    iput-wide v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->heading:D

    .line 112
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextPdr;->mPdrContext:Landroid/hardware/ssp/DaemonContexts$SSPPdr;

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextPDR;->getDoe()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPPdr;->doe:I

    .line 114
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerContextPdr;->notifyContext()V

    goto :goto_1

    .line 117
    .end local v1           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    .end local v2           #pdrMsg:Landroid/hardware/ssp/DaemonContextPDR;
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->clear()V

    .line 119
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderAlarm;->getInstance()Landroid/hardware/ssp/DaemonProviderAlarm;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/hardware/ssp/DaemonProviderAlarm;->vibrateAlarm(Z)V

    goto :goto_0
.end method
