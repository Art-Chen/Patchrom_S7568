.class Landroid/hardware/ssp/DaemonRunnerContextDangerZone;
.super Landroid/hardware/ssp/ADaemonRunnerContext;
.source "DaemonRunnerContextDangerZone.java"


# static fields
.field private static final FIRST_TYPE_DANGERZONE:I = 0x0

.field private static final RUNNER_NAME:Ljava/lang/String; = null

.field private static final SECOND_TYPE_ADD_DANGERZONE:I = 0x2

.field private static final SECOND_TYPE_REMOVE_DANGERZONE:I = 0xc


# instance fields
.field private mDangerZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->RUNNER_NAME:Ljava/lang/String;

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
    .line 80
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->mDangerZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    .line 81
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->mDangerZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->clear()V

    .line 84
    return-void
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public notifyContext()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getDangerZoneAggregator()Landroid/hardware/ssp/DaemonAggregatorDangerZone;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->mDangerZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->notifyDangerZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;)V

    .line 150
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public updateContext(Landroid/hardware/ssp/DaemonParserContext;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 117
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/hardware/ssp/DaemonParserContext;->getParser(B)Landroid/hardware/ssp/ADaemonParserData;

    move-result-object v1

    .line 119
    .local v1, dangerZoneoneParser:Landroid/hardware/ssp/ADaemonParserData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->display()V

    .line 128
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

    .line 129
    check-cast v0, Landroid/hardware/ssp/DaemonContextDangerZone;

    .line 131
    .local v0, dangerZoneMsg:Landroid/hardware/ssp/DaemonContextDangerZone;
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->mDangerZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextDangerZone;->getCategory()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->category:I

    .line 132
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->mDangerZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextDangerZone;->getAction()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->action:I

    .line 133
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->mDangerZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextDangerZone;->getLevel()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->level:I

    .line 135
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->notifyContext()V

    goto :goto_1

    .line 138
    .end local v0           #dangerZoneMsg:Landroid/hardware/ssp/DaemonContextDangerZone;
    .end local v3           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->clear()V

    goto :goto_0
.end method
