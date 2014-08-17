.class Landroid/hardware/ssp/DaemonManagerDataRate;
.super Ljava/lang/Object;
.source "DaemonManagerDataRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/DaemonManagerDataRate$1;,
        Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
    }
.end annotation


# static fields
.field private static final CARRYING_RATE:I = 0x4e20

.field private static final DEFAULT_RATE:I = 0xf4240

.field private static final PEDOMETER_RATE:I = 0x3

.field private static final RAWSENSOR_RATE:I = 0xea60

.field private static volatile instance:Landroid/hardware/ssp/DaemonManagerDataRate;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonManagerDataRate;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Landroid/hardware/ssp/DaemonManagerDataRate;->instance:Landroid/hardware/ssp/DaemonManagerDataRate;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Landroid/hardware/ssp/DaemonManagerDataRate;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerDataRate;->instance:Landroid/hardware/ssp/DaemonManagerDataRate;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/hardware/ssp/DaemonManagerDataRate;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerDataRate;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerDataRate;->instance:Landroid/hardware/ssp/DaemonManagerDataRate;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerDataRate;->instance:Landroid/hardware/ssp/DaemonManagerDataRate;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I
    .locals 8
    .parameter "aggregator"

    .prologue
    .line 154
    const v4, 0xf4240

    .line 156
    .local v4, rate:I
    if-nez p1, :cond_0

    move v5, v4

    .line 167
    .end local v4           #rate:I
    .local v5, rate:I
    :goto_0
    return v5

    .line 160
    .end local v5           #rate:I
    .restart local v4       #rate:I
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->values()[Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 161
    .local v1, code:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
    invoke-virtual {p1}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->getName()Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;->getSamplingRate()I

    move-result v4

    .end local v1           #code:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
    :cond_1
    move v5, v4

    .line 167
    .end local v4           #rate:I
    .restart local v5       #rate:I
    goto :goto_0

    .line 160
    .end local v5           #rate:I
    .restart local v1       #code:Landroid/hardware/ssp/DaemonManagerDataRate$SSPSensorSamplingRate;
    .restart local v4       #rate:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
