.class Landroid/hardware/ssp/DaemonManagerSensorHub;
.super Ljava/lang/Object;
.source "DaemonManagerSensorHub.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonManagerSensorHub;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mContextManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonManagerSensorHub;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Landroid/hardware/ssp/DaemonManagerSensorHub;->instance:Landroid/hardware/ssp/DaemonManagerSensorHub;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Landroid/hardware/ssp/DaemonManagerSensorHub;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerSensorHub;->instance:Landroid/hardware/ssp/DaemonManagerSensorHub;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/hardware/ssp/DaemonManagerSensorHub;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerSensorHub;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerSensorHub;->instance:Landroid/hardware/ssp/DaemonManagerSensorHub;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerSensorHub;->instance:Landroid/hardware/ssp/DaemonManagerSensorHub;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalizeRunnerManager()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerSensorHub;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method protected initializeSensorHubManager(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    iput-object p1, p0, Landroid/hardware/ssp/DaemonManagerSensorHub;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerSensorHub;->mContext:Landroid/content/Context;

    const-string v1, "sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerSensorHub;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 62
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerSensorHub;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "ContextManager is null"

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected sendCmdToSensorHub(BB[B)V
    .locals 7
    .parameter "inst"
    .parameter "type"
    .parameter "data"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 101
    .local v0, packet:[B
    aput-byte p1, v0, v3

    .line 102
    aput-byte p2, v0, v4

    .line 103
    aget-byte v1, p3, v3

    aput-byte v1, v0, v5

    .line 104
    aget-byte v1, p3, v4

    aput-byte v1, v0, v6

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inst = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v3

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v4

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v5

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v6

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 111
    array-length v1, v0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/ssp/DaemonManagerSensorHub;->sendPacketToSensorHub(I[B)V

    .line 112
    return-void
.end method

.method protected sendPacketToSensorHub(I[B)V
    .locals 3
    .parameter "len"
    .parameter "packet"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerSensorHub;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerSensorHub;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/sensorhub/SensorHubManager;->SendSensorHubData(Landroid/hardware/sensorhub/SensorHub;I[B)I

    .line 86
    return-void
.end method
