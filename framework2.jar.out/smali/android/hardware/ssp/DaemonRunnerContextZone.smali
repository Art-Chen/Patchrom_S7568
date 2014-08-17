.class Landroid/hardware/ssp/DaemonRunnerContextZone;
.super Landroid/hardware/ssp/ADaemonRunnerContext;
.source "DaemonRunnerContextZone.java"


# static fields
.field private static final FIRST_TYPE_ZONE:I = 0x0

.field private static final RUNNER_NAME:Ljava/lang/String; = null

.field private static final SECOND_TYPE_ADD_ZONE:I = 0x1

.field private static final SECOND_TYPE_REMOVE_ZONE:I = 0xb


# instance fields
.field private mZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerContextZone;->RUNNER_NAME:Ljava/lang/String;

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
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPZone;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPZone;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextZone;->mZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPZone;

    .line 81
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextZone;->mZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPZone;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPZone;->clear()V

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
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerContextZone;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public notifyContext()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getZoneAggregator()Landroid/hardware/ssp/DaemonAggregatorZone;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerContextZone;->mZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPZone;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorZone;->notifyZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPZone;)V

    .line 148
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerContextZone;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public updateContext(Landroid/hardware/ssp/DaemonParserContext;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 117
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/hardware/ssp/DaemonParserContext;->getParser(B)Landroid/hardware/ssp/ADaemonParserData;

    move-result-object v3

    .line 119
    .local v3, zoneParser:Landroid/hardware/ssp/ADaemonParserData;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->display()V

    .line 127
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

    .line 128
    check-cast v2, Landroid/hardware/ssp/DaemonContextZone;

    .line 130
    .local v2, zoneMsg:Landroid/hardware/ssp/DaemonContextZone;
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextZone;->mZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPZone;

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextZone;->getType()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    .line 131
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextZone;->mZoneContext:Landroid/hardware/ssp/DaemonContexts$SSPZone;

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextZone;->getAction()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPZone;->action:I

    .line 133
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerContextZone;->notifyContext()V

    goto :goto_1

    .line 136
    .end local v1           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    .end local v2           #zoneMsg:Landroid/hardware/ssp/DaemonContextZone;
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonParserData;->clear()V

    goto :goto_0
.end method
