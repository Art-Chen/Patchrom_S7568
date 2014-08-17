.class Landroid/hardware/ssp/DaemonManagerRunner;
.super Ljava/lang/Object;
.source "DaemonManagerRunner.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonManagerRunner;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mRunnerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/ssp/DaemonConstants$SSPAggregators;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/hardware/ssp/ADaemonRunner;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)Z
    .locals 2
    .parameter "aggregator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/hardware/ssp/ADaemonRunner;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPAggregators;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, runner:Landroid/hardware/ssp/ADaemonRunner;,"TT;"
    const/4 v0, 0x0

    .line 196
    .local v0, runnerSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/hardware/ssp/ADaemonRunner;>;"
    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #runnerSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/hardware/ssp/ADaemonRunner;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 198
    .restart local v0       #runnerSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/hardware/ssp/ADaemonRunner;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    :goto_0
    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 200
    :cond_0
    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #runnerSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/hardware/ssp/ADaemonRunner;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 201
    .restart local v0       #runnerSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/hardware/ssp/ADaemonRunner;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private buildRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;)Landroid/hardware/ssp/ADaemonRunner;
    .locals 3
    .parameter "type"
    .parameter "runner"

    .prologue
    .line 145
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GPS:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_0

    .line 146
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerGPS;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerGPS;-><init>()V

    .line 173
    .restart local p2
    :goto_0
    new-instance v0, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;

    invoke-direct {v0, p2}, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;-><init>(Landroid/hardware/ssp/ADaemonRunner;)V

    .line 176
    .local v0, director:Landroid/hardware/ssp/DaemonBuilderDirectorRunner;
    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;->buildObj(Landroid/content/Context;Landroid/os/Looper;)V

    move-object v1, p2

    .line 178
    .end local v0           #director:Landroid/hardware/ssp/DaemonBuilderDirectorRunner;
    :goto_1
    return-object v1

    .line 147
    :cond_0
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_1

    .line 148
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerSensor;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerSensor;-><init>()V

    .restart local p2
    goto :goto_0

    .line 149
    :cond_1
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->GESTURE_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_2

    .line 150
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerSensorGesture;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerSensorGesture;-><init>()V

    .restart local p2
    goto :goto_0

    .line 151
    :cond_2
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_3

    .line 152
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerContext;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerContext;-><init>()V

    .restart local p2
    goto :goto_0

    .line 153
    :cond_3
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PDR:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_4

    .line 154
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerContextPdr;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerContextPdr;-><init>()V

    .restart local p2
    goto :goto_0

    .line 155
    :cond_4
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_5

    .line 156
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerContextPedometer;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerContextPedometer;-><init>()V

    .restart local p2
    goto :goto_0

    .line 157
    :cond_5
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_6

    .line 158
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerContextZone;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerContextZone;-><init>()V

    .restart local p2
    goto :goto_0

    .line 159
    :cond_6
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_7

    .line 160
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;-><init>()V

    .restart local p2
    goto :goto_0

    .line 161
    :cond_7
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_MOTION:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_8

    .line 162
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerContextMotion;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerContextMotion;-><init>()V

    .restart local p2
    goto :goto_0

    .line 163
    :cond_8
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_9

    .line 164
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerContextGesture;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerContextGesture;-><init>()V

    .restart local p2
    goto :goto_0

    .line 165
    :cond_9
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_BLE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_a

    .line 166
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerContextBLE;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerContextBLE;-><init>()V

    .restart local p2
    goto :goto_0

    .line 167
    :cond_a
    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    if-ne p1, v1, :cond_b

    .line 168
    new-instance p2, Landroid/hardware/ssp/DaemonRunnerReplay;

    .end local p2
    invoke-direct {p2}, Landroid/hardware/ssp/DaemonRunnerReplay;-><init>()V

    .restart local p2
    goto :goto_0

    .line 170
    :cond_b
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonManagerRunner;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Landroid/hardware/ssp/DaemonManagerRunner;->instance:Landroid/hardware/ssp/DaemonManagerRunner;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Landroid/hardware/ssp/DaemonManagerRunner;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerRunner;->instance:Landroid/hardware/ssp/DaemonManagerRunner;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/hardware/ssp/DaemonManagerRunner;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerRunner;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerRunner;->instance:Landroid/hardware/ssp/DaemonManagerRunner;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerRunner;->instance:Landroid/hardware/ssp/DaemonManagerRunner;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)Z
    .locals 2
    .parameter "aggregator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/hardware/ssp/ADaemonRunner;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPAggregators;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p2, runner:Landroid/hardware/ssp/ADaemonRunner;,"TT;"
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 247
    :goto_0
    return v0

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 237
    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected finalizeRunnerManager()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mContext:Landroid/content/Context;

    .line 80
    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mLooper:Landroid/os/Looper;

    .line 81
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 82
    return-void
.end method

.method protected initializeRunnerManager(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mLooper:Landroid/os/Looper;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method protected pauseAll()V
    .locals 9

    .prologue
    .line 254
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v6

    .line 257
    .local v6, serviceSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 283
    :cond_0
    return-void

    .line 261
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 274
    invoke-static {}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->values()[Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 275
    .local v1, i:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
    iget-object v7, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->getCode()I

    move-result v7

    sget-object v8, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v8}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->getCode()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 274
    .end local v3           #i$:I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .restart local v2       #i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 279
    :cond_3
    iget-object v7, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/ssp/ADaemonRunner;

    .line 280
    .local v4, j:Landroid/hardware/ssp/ADaemonRunner;
    invoke-virtual {v4}, Landroid/hardware/ssp/ADaemonRunner;->pauseRunner()V

    goto :goto_1
.end method

.method protected pauseRunnerForLPHP()V
    .locals 4

    .prologue
    .line 339
    iget-object v2, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    const-string v2, "RunnerMap doesn\'t contain the LPHP."

    invoke-static {v2}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 347
    :cond_0
    return-void

    .line 344
    :cond_1
    iget-object v2, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->LPHP:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/ADaemonRunner;

    .line 345
    .local v0, i:Landroid/hardware/ssp/ADaemonRunner;
    invoke-virtual {v0}, Landroid/hardware/ssp/ADaemonRunner;->pauseRunner()V

    goto :goto_0
.end method

.method protected resumeAll()V
    .locals 8

    .prologue
    .line 289
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v6

    .line 292
    .local v6, serviceSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 317
    :cond_0
    return-void

    .line 296
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 309
    invoke-static {}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->values()[Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 310
    .local v1, i:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;
    iget-object v7, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 309
    .end local v3           #i$:I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .restart local v2       #i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 313
    :cond_3
    iget-object v7, p0, Landroid/hardware/ssp/DaemonManagerRunner;->mRunnerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/ssp/ADaemonRunner;

    .line 314
    .local v4, j:Landroid/hardware/ssp/ADaemonRunner;
    invoke-virtual {v4}, Landroid/hardware/ssp/ADaemonRunner;->resumeRunner()V

    goto :goto_1
.end method

.method protected startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;
    .locals 2
    .parameter "type"
    .parameter "runner"
    .parameter "aggregator"
    .parameter "rate"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/hardware/ssp/DaemonManagerRunner;->buildRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    .line 103
    .local v0, runnerObj:Landroid/hardware/ssp/ADaemonRunner;
    if-nez v0, :cond_1

    .line 104
    const-string v1, "startRunner func. is failed. (Runner object is null)"

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 113
    .end local v0           #runnerObj:Landroid/hardware/ssp/ADaemonRunner;
    :cond_0
    :goto_0
    return-object v0

    .line 109
    .restart local v0       #runnerObj:Landroid/hardware/ssp/ADaemonRunner;
    :cond_1
    invoke-direct {p0, p3, v0}, Landroid/hardware/ssp/DaemonManagerRunner;->addRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0, p3, p4}, Landroid/hardware/ssp/ADaemonRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Z

    goto :goto_0
.end method

.method protected stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V
    .locals 1
    .parameter "aggregator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/hardware/ssp/ADaemonRunner;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPAggregators;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, runner:Landroid/hardware/ssp/ADaemonRunner;,"TT;"
    invoke-direct {p0, p1, p2}, Landroid/hardware/ssp/DaemonManagerRunner;->removeRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p2}, Landroid/hardware/ssp/ADaemonRunner;->stopRunner()Z

    .line 131
    :cond_0
    return-void
.end method
