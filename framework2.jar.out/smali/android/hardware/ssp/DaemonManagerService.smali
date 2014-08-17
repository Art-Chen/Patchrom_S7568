.class Landroid/hardware/ssp/DaemonManagerService;
.super Ljava/lang/Object;
.source "DaemonManagerService.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonManagerService;


# instance fields
.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            "Landroid/hardware/ssp/ADaemonService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .parameter "service"
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, serviceObj:Landroid/hardware/ssp/ADaemonService;
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GENERAL:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_1

    .line 142
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalGeneral;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalGeneral;-><init>()V

    .line 169
    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    :goto_0
    new-instance v0, Landroid/hardware/ssp/DaemonBuilderDirectorService;

    invoke-direct {v0, v1}, Landroid/hardware/ssp/DaemonBuilderDirectorService;-><init>(Landroid/hardware/ssp/ADaemonService;)V

    .line 171
    .local v0, director:Landroid/hardware/ssp/DaemonBuilderDirectorService;
    invoke-virtual {v0, p2, p3}, Landroid/hardware/ssp/DaemonBuilderDirectorService;->buildObj(Landroid/content/Context;Landroid/os/Looper;)V

    .line 173
    iget-object v2, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v0           #director:Landroid/hardware/ssp/DaemonBuilderDirectorService;
    :cond_0
    return-void

    .line 143
    :cond_1
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_2

    .line 144
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalLocation;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalLocation;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 145
    :cond_2
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_3

    .line 146
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalMoving;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalMoving;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 149
    :cond_3
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_4

    .line 150
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalPedometer;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalPedometer;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 151
    :cond_4
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->RAW_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_5

    .line 152
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalRawSensor;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalRawSensor;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 153
    :cond_5
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_6

    .line 154
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalZone;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalZone;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 155
    :cond_6
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_7

    .line 156
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalDangerZone;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalDangerZone;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 157
    :cond_7
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_8

    .line 158
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalMotion;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalMotion;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 159
    :cond_8
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_9

    .line 160
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalGesture;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalGesture;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 161
    :cond_9
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_a

    .line 162
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalNotification;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalNotification;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 163
    :cond_a
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->BLE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_0

    .line 164
    new-instance v1, Landroid/hardware/ssp/DaemonServiceNormalBLE;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceNormalBLE;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0
.end method

.method private createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .parameter "service"
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, serviceObj:Landroid/hardware/ssp/ADaemonService;
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_1

    .line 191
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayLocation;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayLocation;-><init>()V

    .line 214
    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    :goto_0
    new-instance v0, Landroid/hardware/ssp/DaemonBuilderDirectorService;

    invoke-direct {v0, v1}, Landroid/hardware/ssp/DaemonBuilderDirectorService;-><init>(Landroid/hardware/ssp/ADaemonService;)V

    .line 216
    .local v0, director:Landroid/hardware/ssp/DaemonBuilderDirectorService;
    invoke-virtual {v0, p2, p3}, Landroid/hardware/ssp/DaemonBuilderDirectorService;->buildObj(Landroid/content/Context;Landroid/os/Looper;)V

    .line 218
    iget-object v2, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v0           #director:Landroid/hardware/ssp/DaemonBuilderDirectorService;
    :cond_0
    return-void

    .line 192
    :cond_1
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_2

    .line 193
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayMoving;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayMoving;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 196
    :cond_2
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_3

    .line 197
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayPedometer;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayPedometer;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 198
    :cond_3
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->RAW_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_4

    .line 199
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayRawSensor;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayRawSensor;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 200
    :cond_4
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_5

    .line 201
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayZone;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayZone;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 202
    :cond_5
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_6

    .line 203
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayDangerZone;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayDangerZone;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 204
    :cond_6
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_7

    .line 205
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayMotion;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayMotion;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 206
    :cond_7
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_8

    .line 207
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayGesture;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayGesture;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0

    .line 208
    :cond_8
    sget-object v2, Landroid/hardware/ssp/DaemonConstants$SSPServices;->NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    if-ne p1, v2, :cond_0

    .line 209
    new-instance v1, Landroid/hardware/ssp/DaemonServiceReplayNotification;

    .end local v1           #serviceObj:Landroid/hardware/ssp/ADaemonService;
    invoke-direct {v1}, Landroid/hardware/ssp/DaemonServiceReplayNotification;-><init>()V

    .restart local v1       #serviceObj:Landroid/hardware/ssp/ADaemonService;
    goto :goto_0
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonManagerService;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Landroid/hardware/ssp/DaemonManagerService;->instance:Landroid/hardware/ssp/DaemonManagerService;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Landroid/hardware/ssp/DaemonManagerService;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerService;->instance:Landroid/hardware/ssp/DaemonManagerService;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/hardware/ssp/DaemonManagerService;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerService;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerService;->instance:Landroid/hardware/ssp/DaemonManagerService;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerService;->instance:Landroid/hardware/ssp/DaemonManagerService;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected varargs addService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V
    .locals 2
    .parameter "services"

    .prologue
    .line 273
    invoke-static {p1}, Landroid/hardware/ssp/DaemonConstants;->selectService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)Ljava/util/Set;

    move-result-object v0

    .line 276
    .local v0, serviceSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonManagerOperation;->addService(Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected varargs clearService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V
    .locals 4
    .parameter "services"

    .prologue
    .line 307
    invoke-static {p1}, Landroid/hardware/ssp/DaemonConstants;->selectService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)Ljava/util/Set;

    move-result-object v2

    .line 310
    .local v2, serviceSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 320
    :cond_0
    return-void

    .line 314
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 315
    .local v0, i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonService;->isRun()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonService;->clear()V

    goto :goto_0
.end method

.method protected finalizeService()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v2

    .line 106
    .local v2, serviceSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move v3, v4

    .line 124
    :goto_0
    return v3

    .line 110
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 111
    .local v0, i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonService;->isRun()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    new-array v3, v5, [Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Landroid/hardware/ssp/DaemonManagerService;->removeService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V

    .line 114
    new-array v3, v5, [Landroid/hardware/ssp/DaemonConstants$SSPServices;

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Landroid/hardware/ssp/DaemonManagerService;->stopService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V

    .line 116
    :cond_3
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonService;->isRun()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    const-string v3, "fail to fianlize the service"

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    move v3, v4

    .line 118
    goto :goto_0

    .line 122
    .end local v0           #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    :cond_4
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move v3, v5

    .line 124
    goto :goto_0
.end method

.method protected initializeServiceManager(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/ssp/DaemonConstants$SSPMode;)V
    .locals 1
    .parameter "context"
    .parameter "looper"
    .parameter "mode"

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    .line 67
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->NOMAL_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    if-ne p3, v0, :cond_1

    .line 68
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GENERAL:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 69
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 70
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 71
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 72
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 73
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->RAW_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 74
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 75
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 76
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 77
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 78
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 79
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->BLE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createNormalServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->REPLAY_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    if-ne p3, v0, :cond_0

    .line 82
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GENERAL:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 83
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 84
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 85
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->CARRYING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 86
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 87
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->RAW_SENSOR:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 88
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 89
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 90
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOTION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 91
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GESTURE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 92
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->NOTIFICATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    .line 93
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->BLE:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/ssp/DaemonManagerService;->createReplayServiceObj(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/content/Context;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method protected varargs removeService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V
    .locals 2
    .parameter "services"

    .prologue
    .line 290
    invoke-static {p1}, Landroid/hardware/ssp/DaemonConstants;->selectService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)Ljava/util/Set;

    move-result-object v0

    .line 293
    .local v0, serviceSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonManagerOperation;->removeService(Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected setProperty(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V
    .locals 6
    .parameter "service"
    .parameter "parameter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p3, value:Ljava/lang/Object;,"TE;"
    invoke-static {}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->values()[Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 338
    .local v1, i:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->getCode()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 339
    iget-object v4, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v4, p2, p3}, Landroid/hardware/ssp/ADaemonService;->setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)Z

    .line 343
    .end local v1           #i:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    :cond_0
    return-void

    .line 337
    .restart local v1       #i:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected startService()Z
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v2

    .line 230
    .local v2, serviceSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 231
    :cond_0
    const/4 v3, 0x0

    .line 241
    :goto_0
    return v3

    .line 234
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 235
    .local v0, i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonService;->isRun()Z

    move-result v3

    if-nez v3, :cond_2

    .line 237
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonService;->startService()Z

    goto :goto_1

    .line 241
    .end local v0           #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected varargs stopService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)V
    .locals 4
    .parameter "services"

    .prologue
    .line 251
    invoke-static {p1}, Landroid/hardware/ssp/DaemonConstants;->selectService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)Ljava/util/Set;

    move-result-object v2

    .line 254
    .local v2, serviceSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 264
    :cond_0
    return-void

    .line 258
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 259
    .local v0, i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonService;->isRun()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Landroid/hardware/ssp/DaemonManagerService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v3}, Landroid/hardware/ssp/ADaemonService;->stopService()Z

    goto :goto_0
.end method
