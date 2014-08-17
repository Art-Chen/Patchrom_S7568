.class Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;
.super Ljava/lang/Thread;
.source "SSPAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPAutoTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScenarioThread"
.end annotation


# instance fields
.field private mDelayTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPacket:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mStopFlag:Z

.field final synthetic this$0:Landroid/hardware/ssp/SSPAutoTest;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/SSPAutoTest;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->this$0:Landroid/hardware/ssp/SSPAutoTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mPacket:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mDelayTime:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mStopFlag:Z

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mPacket:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mDelayTime:Ljava/util/ArrayList;

    .line 121
    return-void
.end method


# virtual methods
.method putPacket([B)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 177
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getContextRunner()Landroid/hardware/ssp/DaemonRunnerContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonRunnerContext;->parseForScenarioTesting([B)V

    .line 179
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 130
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->this$0:Landroid/hardware/ssp/SSPAutoTest;

    #getter for: Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/ssp/SSPAutoTest;->access$000(Landroid/hardware/ssp/SSPAutoTest;)I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 131
    const-string v6, "========== Scenario Test Start (SSP_ALL_TEST) =========="

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mPacket:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 138
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mDelayTime:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 140
    iget-boolean v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mStopFlag:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_4

    .line 162
    :cond_1
    :goto_2
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->this$0:Landroid/hardware/ssp/SSPAutoTest;

    #getter for: Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/ssp/SSPAutoTest;->access$000(Landroid/hardware/ssp/SSPAutoTest;)I

    move-result v6

    if-ne v6, v10, :cond_8

    .line 163
    const-string v6, "========== Scenario Test Stop (SSP_ALL_TEST) =========="

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 167
    :cond_2
    :goto_3
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->this$0:Landroid/hardware/ssp/SSPAutoTest;

    invoke-virtual {v6}, Landroid/hardware/ssp/SSPAutoTest;->stopAutoTest()V

    .line 168
    return-void

    .line 132
    .end local v2           #i:I
    :cond_3
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->this$0:Landroid/hardware/ssp/SSPAutoTest;

    #getter for: Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/ssp/SSPAutoTest;->access$000(Landroid/hardware/ssp/SSPAutoTest;)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 133
    const-string v6, "========== Scenario Test Start (SSP_MANAGER_TEST) =========="

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .restart local v2       #i:I
    :cond_4
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scenario ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DelayTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mDelayTime:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 147
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mPacket:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v5, :cond_5

    aget-byte v4, v0, v3

    .line 148
    .local v4, j:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 151
    .end local v4           #j:I
    :cond_5
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->this$0:Landroid/hardware/ssp/SSPAutoTest;

    #getter for: Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/ssp/SSPAutoTest;->access$000(Landroid/hardware/ssp/SSPAutoTest;)I

    move-result v6

    if-ne v6, v10, :cond_7

    .line 152
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerSensorHub;->getInstance()Landroid/hardware/ssp/DaemonManagerSensorHub;

    move-result-object v7

    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mPacket:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v8, v6

    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mPacket:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v7, v8, v6}, Landroid/hardware/ssp/DaemonManagerSensorHub;->sendPacketToSensorHub(I[B)V

    .line 137
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 154
    :cond_7
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->this$0:Landroid/hardware/ssp/SSPAutoTest;

    #getter for: Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/ssp/SSPAutoTest;->access$000(Landroid/hardware/ssp/SSPAutoTest;)I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 155
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mPacket:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {p0, v6}, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->putPacket([B)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 158
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 164
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_8
    iget-object v6, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->this$0:Landroid/hardware/ssp/SSPAutoTest;

    #getter for: Landroid/hardware/ssp/SSPAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/ssp/SSPAutoTest;->access$000(Landroid/hardware/ssp/SSPAutoTest;)I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 165
    const-string v6, "========== Scenario Test Stop (SSP_MANAGER_TEST) =========="

    invoke-static {v6}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method setPacketList([BI)V
    .locals 2
    .parameter "packet"
    .parameter "delayTime"

    .prologue
    .line 190
    iget-object v0, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mPacket:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mDelayTime:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method stopThread()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/ssp/SSPAutoTest$ScenarioThread;->mStopFlag:Z

    .line 199
    return-void
.end method
