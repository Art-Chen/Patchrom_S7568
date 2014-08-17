.class Landroid/hardware/ssp/DaemonRunnerContextBLE;
.super Landroid/hardware/ssp/ADaemonRunnerContext;
.source "DaemonRunnerContextBLE.java"


# static fields
.field private static final FIRST_TYPE_BLE:I = 0x0

.field private static final RUNNER_NAME:Ljava/lang/String; = null

.field private static final SECOND_TYPE_ADD_BLE:I = 0x5

.field private static final SECOND_TYPE_REMOVE_BLE:I = 0x69


# instance fields
.field private mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_BLE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->RUNNER_NAME:Ljava/lang/String;

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
    .line 68
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPBLE;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    .line 69
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->clear()V

    .line 70
    return-void
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public notifyContext()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getBLEAggregator()Landroid/hardware/ssp/DaemonAggregatorBLE;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorBLE;->notifyBLEContext(Landroid/hardware/ssp/DaemonContexts$SSPBLE;)V

    .line 138
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerContextBLE;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public updateContext(Landroid/hardware/ssp/DaemonParserContext;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 103
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Landroid/hardware/ssp/DaemonParserContext;->getParser(B)Landroid/hardware/ssp/ADaemonParserData;

    move-result-object v1

    .line 105
    .local v1, bleParser:Landroid/hardware/ssp/ADaemonParserData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->display()V

    .line 113
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

    .line 114
    check-cast v0, Landroid/hardware/ssp/DaemonContextBLE;

    .line 116
    .local v0, bleMsg:Landroid/hardware/ssp/DaemonContextBLE;
    new-instance v4, Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    invoke-direct {v4}, Landroid/hardware/ssp/DaemonContexts$SSPBLE;-><init>()V

    iput-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    .line 117
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextBLE;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->clear(I)V

    .line 119
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextBLE;->getCount()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->count:I

    .line 120
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextBLE;->getId()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->id:[Ljava/lang/String;

    .line 121
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextBLE;->mBLEContext:Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContextBLE;->getRssi()[I

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->rssi:[I

    .line 123
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerContextBLE;->notifyContext()V

    goto :goto_1

    .line 126
    .end local v0           #bleMsg:Landroid/hardware/ssp/DaemonContextBLE;
    .end local v3           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonParserData;->clear()V

    goto :goto_0
.end method
