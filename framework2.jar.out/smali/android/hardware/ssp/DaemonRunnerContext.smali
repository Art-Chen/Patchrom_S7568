.class Landroid/hardware/ssp/DaemonRunnerContext;
.super Landroid/hardware/ssp/ADaemonRunnerContext;
.source "DaemonRunnerContext.java"


# static fields
.field private static final RUNNER_NAME:Ljava/lang/String;


# instance fields
.field protected mContextParser:Landroid/hardware/ssp/DaemonParserContext;

.field private final mContextRunner:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/hardware/ssp/ADaemonRunnerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerContext;->RUNNER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextRunner:Ljava/util/HashSet;

    return-void
.end method

.method private parse([B)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextParser:Landroid/hardware/ssp/DaemonParserContext;

    if-nez v0, :cond_0

    .line 172
    const-string v0, "Context parser is null"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextParser:Landroid/hardware/ssp/DaemonParserContext;

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonParserContext;->parse([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    const-string v0, "Parser error"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextParser:Landroid/hardware/ssp/DaemonParserContext;

    invoke-virtual {p0, v0}, Landroid/hardware/ssp/DaemonRunnerContext;->updateContext(Landroid/hardware/ssp/DaemonParserContext;)V

    goto :goto_0
.end method


# virtual methods
.method protected addContextRunner(Landroid/hardware/ssp/ADaemonRunnerContext;)V
    .locals 1
    .parameter "runner"

    .prologue
    .line 151
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextRunner:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method protected disable()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/hardware/ssp/ADaemonRunnerContext;->mSSPHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getContextListener()Landroid/hardware/sensorhub/SensorHubEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;)V

    .line 65
    return-void
.end method

.method protected enable()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/ssp/ADaemonRunnerContext;->mSSPHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getContextListener()Landroid/hardware/sensorhub/SensorHubEventListener;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/ssp/ADaemonRunnerContext;->mSSPHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z

    .line 55
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerContext;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected parseForScenarioTesting([B)V
    .locals 1
    .parameter "packetData"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextParser:Landroid/hardware/ssp/DaemonParserContext;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextParser:Landroid/hardware/ssp/DaemonParserContext;

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonParserContext;->parseForScenarioTesting([B)Z

    .line 193
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextParser:Landroid/hardware/ssp/DaemonParserContext;

    invoke-virtual {p0, v0}, Landroid/hardware/ssp/DaemonRunnerContext;->updateContext(Landroid/hardware/ssp/DaemonParserContext;)V

    .line 195
    :cond_0
    return-void
.end method

.method public prepareRunner()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->prepareRunner()V

    .line 105
    new-instance v0, Landroid/hardware/ssp/DaemonParserContext;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonParserContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextParser:Landroid/hardware/ssp/DaemonParserContext;

    .line 106
    return-void
.end method

.method protected removeContextRunner(Landroid/hardware/ssp/ADaemonRunnerContext;)V
    .locals 1
    .parameter "runner"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextRunner:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public run(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 94
    iget-object v0, p1, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    invoke-direct {p0, v0}, Landroid/hardware/ssp/DaemonRunnerContext;->parse([B)V

    .line 95
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerContext;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public updateContext(Landroid/hardware/ssp/DaemonParserContext;)V
    .locals 3
    .parameter "parser"

    .prologue
    .line 139
    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerContext;->mContextRunner:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/ADaemonRunnerContext;

    .line 140
    .local v0, i:Landroid/hardware/ssp/ADaemonRunnerContext;
    invoke-virtual {v0, p1}, Landroid/hardware/ssp/ADaemonRunnerContext;->updateContext(Landroid/hardware/ssp/DaemonParserContext;)V

    goto :goto_0

    .line 142
    .end local v0           #i:Landroid/hardware/ssp/ADaemonRunnerContext;
    :cond_0
    return-void
.end method
