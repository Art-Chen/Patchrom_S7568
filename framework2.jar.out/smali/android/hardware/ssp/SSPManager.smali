.class public Landroid/hardware/ssp/SSPManager;
.super Ljava/lang/Object;
.source "SSPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    }
.end annotation


# static fields
.field public static final BLE_SERVICE:I = 0xc

.field public static final CARRYING_SERVICE:I = 0x4

.field public static final DANGER_ZONE_SERVICE:I = 0x8

.field public static final GENERAL_SERVICE:I = 0x1

.field public static final GESTURE_SERVICE:I = 0xa

.field public static final LOCATION_SERVICE:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_DEBUG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_ERROR:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_INFO:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_TRACE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_WARN:I = 0x0

.field public static final MOTION_SERVICE:I = 0x9

.field public static final MOVING_SERVICE:I = 0x3

.field public static final NONE_SERVICE:I = 0x0

.field public static final NORMAL_MODE:Ljava/lang/String; = null

.field public static final NOTIFICATION_SERVICE:I = 0xb

.field public static final PEDOMETER_SERVICE:I = 0x5

.field public static final PROPERTY_DANGER_ZONE_CATEGORY:I = 0x5

.field public static final PROPERTY_LOCATION_ACCURACY:I = 0x1

.field public static final PROPERTY_MOTION_TYPE:I = 0x6

.field public static final PROPERTY_PEDOMETER_HEIGHT:I = 0x3

.field public static final PROPERTY_PEDOMETER_WEIGHT:I = 0x2

.field public static final PROPERTY_ZONE_HOME_LATITUDE:I = 0x7

.field public static final PROPERTY_ZONE_HOME_LONGITUDE:I = 0x8

.field public static final PROPERTY_ZONE_OFFICE_LATITUDE:I = 0x9

.field public static final PROPERTY_ZONE_OFFICE_LONGITUDE:I = 0xa

.field public static final PROPERTY_ZONE_RANGE:I = 0xb

.field public static final PROPERTY_ZONE_TYPE:I = 0x4

.field public static final RAW_SENSOR_SERVICE:I = 0x6

.field public static final REPLAY_MODE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field protected static final SSP_SERVICE_NUM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SSPManager"

.field public static final ZONE_SERVICE:I = 0x7


# instance fields
.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mSSPService:Landroid/hardware/ssp/ISSPService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->NOMAL_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPMode;->getMode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/SSPManager;->NORMAL_MODE:Ljava/lang/String;

    .line 41
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPMode;->REPLAY_MODE:Landroid/hardware/ssp/DaemonConstants$SSPMode;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPMode;->getMode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/SSPManager;->REPLAY_MODE:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->values()[Landroid/hardware/ssp/DaemonConstants$SSPServices;

    move-result-object v0

    array-length v0, v0

    sput v0, Landroid/hardware/ssp/SSPManager;->SSP_SERVICE_NUM:I

    .line 120
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->TRACE:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/ssp/SSPManager;->LOG_LEVEL_TRACE:I

    .line 123
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->DEBUG:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/ssp/SSPManager;->LOG_LEVEL_DEBUG:I

    .line 126
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->INFO:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/ssp/SSPManager;->LOG_LEVEL_INFO:I

    .line 129
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->WARN:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/ssp/SSPManager;->LOG_LEVEL_WARN:I

    .line 132
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->ERROR:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/ssp/SSPManager;->LOG_LEVEL_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    .line 150
    const-string v0, "ssp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/ISSPService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ssp/ISSPService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    .line 152
    iput-object p1, p0, Landroid/hardware/ssp/SSPManager;->mMainLooper:Landroid/os/Looper;

    .line 153
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/ssp/SSPManager;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/ssp/SSPManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V
    .locals 2
    .parameter "service"
    .parameter "property"
    .parameter "propertyObj"

    .prologue
    .line 420
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/ssp/ISSPService;->setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startAutoTest(Landroid/hardware/ssp/SSPListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/ssp/SSPListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p2, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, packet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .local p4, delayTime:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 548
    .local v1, i:I
    invoke-virtual {p0, p1, v1}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    goto :goto_0

    .line 552
    .end local v1           #i:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 553
    iget-object v5, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v3, v4}, Landroid/hardware/ssp/ISSPService;->setPacketListForSSPAutoTest([BI)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 556
    :cond_1
    iget-object v3, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v3, p5}, Landroid/hardware/ssp/ISSPService;->startSSPAutoTest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_2
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public initializeSSPService(I)V
    .locals 2
    .parameter "service"

    .prologue
    .line 586
    if-lez p1, :cond_0

    sget v1, Landroid/hardware/ssp/SSPManager;->SSP_SERVICE_NUM:I

    if-le p1, v1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v1, p1}, Landroid/hardware/ssp/ISSPService;->initializeSSPService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isRunSSPAutoTest()Z
    .locals 3

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 571
    .local v1, isRun:Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v2}, Landroid/hardware/ssp/ISSPService;->isRunSSPAutoTest()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 576
    :goto_0
    return v1

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/ssp/SSPListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 189
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 190
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 191
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 192
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 193
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 194
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 195
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 196
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 197
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 198
    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 199
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->registerListener(Landroid/hardware/ssp/SSPListener;I)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/ssp/SSPListener;I)V
    .locals 9
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    sget v6, Landroid/hardware/ssp/SSPManager;->SSP_SERVICE_NUM:I

    if-le p2, v6, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v4, 0x0

    .line 217
    .local v4, sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    iget-object v6, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 219
    .local v3, size:I
    iget-object v7, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v7

    .line 220
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 221
    :try_start_0
    iget-object v6, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

    invoke-virtual {v6}, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->getListener()Landroid/hardware/ssp/SSPListener;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 222
    iget-object v6, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

    move-object v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    .line 227
    .end local v4           #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    .local v5, sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    :goto_2
    if-nez v5, :cond_3

    .line 228
    :try_start_1
    new-instance v4, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v4, p0, p1, v6}, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;-><init>(Landroid/hardware/ssp/SSPManager;Landroid/hardware/ssp/SSPListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    .end local v5           #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    .restart local v4       #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    :try_start_2
    iget-object v6, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :goto_3
    :try_start_3
    iget-object v6, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v6, v4, p2}, Landroid/hardware/ssp/ISSPService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 237
    :goto_4
    :try_start_4
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_5
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 220
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "SSPManager"

    const-string v8, "RemoteException in registerListener: "

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 237
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    .restart local v5       #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    .restart local v4       #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    goto :goto_5

    .end local v4           #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    .restart local v5       #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    :cond_3
    move-object v4, v5

    .end local v5           #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    .restart local v4       #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    goto :goto_3

    :cond_4
    move-object v5, v4

    .end local v4           #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    .restart local v5       #sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    goto :goto_2
.end method

.method public setSSPLogger(ZZIZ)V
    .locals 2
    .parameter "isConsole"
    .parameter "isFile"
    .parameter "level"
    .parameter "isCaller"

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/ssp/ISSPService;->setSSPLogger(ZZIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSSPMode(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v1, p1}, Landroid/hardware/ssp/ISSPService;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSSPMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mode"
    .parameter "fileName"

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v1, p1, p2}, Landroid/hardware/ssp/ISSPService;->setReplayMode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSSPProperty(IID)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 385
    new-instance v0, Landroid/hardware/ssp/SSPPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPPropertyBundle;-><init>()V

    .line 386
    .local v0, propertyObj:Landroid/hardware/ssp/SSPPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->getDoubleTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 387
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPManager;->setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    .line 388
    return-void
.end method

.method public setSSPProperty(IIF)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 368
    new-instance v0, Landroid/hardware/ssp/SSPPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPPropertyBundle;-><init>()V

    .line 369
    .local v0, propertyObj:Landroid/hardware/ssp/SSPPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->getFloatTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 370
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPManager;->setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    .line 371
    return-void
.end method

.method public setSSPProperty(III)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 334
    new-instance v0, Landroid/hardware/ssp/SSPPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPPropertyBundle;-><init>()V

    .line 335
    .local v0, propertyObj:Landroid/hardware/ssp/SSPPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->getIntegerTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 336
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPManager;->setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    .line 337
    return-void
.end method

.method public setSSPProperty(IIJ)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 351
    new-instance v0, Landroid/hardware/ssp/SSPPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPPropertyBundle;-><init>()V

    .line 352
    .local v0, propertyObj:Landroid/hardware/ssp/SSPPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->getLongTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 353
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPManager;->setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    .line 354
    return-void
.end method

.method public setSSPProperty(IILjava/lang/String;)V
    .locals 2
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 402
    new-instance v0, Landroid/hardware/ssp/SSPPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPPropertyBundle;-><init>()V

    .line 403
    .local v0, propertyObj:Landroid/hardware/ssp/SSPPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/ssp/SSPPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 404
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPManager;->setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    .line 405
    return-void
.end method

.method public setSSPProperty(IIZ)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 317
    new-instance v0, Landroid/hardware/ssp/SSPPropertyBundle;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPPropertyBundle;-><init>()V

    .line 318
    .local v0, propertyObj:Landroid/hardware/ssp/SSPPropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->getBooleanTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/SSPPropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 319
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPManager;->setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    .line 320
    return-void
.end method

.method public startSSPAutoTest(Landroid/hardware/ssp/SSPListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/ssp/SSPListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p2, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, packet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .local p4, delayTime:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 500
    const-string v0, "SSPManager"

    const-string v1, "Fail to create the packet map."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/ssp/SSPManager;->startAutoTest(Landroid/hardware/ssp/SSPListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public startSSPManagerAutoTest(Landroid/hardware/ssp/SSPListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/ssp/SSPListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p2, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, packet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .local p4, delayTime:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 463
    const-string v0, "SSPManager"

    const-string v1, "Fail to create the packet map."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/ssp/SSPManager;->startAutoTest(Landroid/hardware/ssp/SSPListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public stopSSPAutoTest(Landroid/hardware/ssp/SSPListener;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/ssp/SSPListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p2, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 520
    .local v1, i:I
    invoke-virtual {p0, p1, v1}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    goto :goto_0

    .line 524
    .end local v1           #i:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v3}, Landroid/hardware/ssp/ISSPService;->stopSSPAutoTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_1
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopSSPManagerAutoTest(Landroid/hardware/ssp/SSPListener;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/ssp/SSPListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p2, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2}, Landroid/hardware/ssp/SSPManager;->stopSSPAutoTest(Landroid/hardware/ssp/SSPListener;Ljava/util/ArrayList;)V

    .line 482
    return-void
.end method

.method public unregisterListener(Landroid/hardware/ssp/SSPListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 252
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 253
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 254
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 255
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 256
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 257
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 258
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 259
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 260
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 261
    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    .line 262
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/hardware/ssp/SSPManager;->unregisterListener(Landroid/hardware/ssp/SSPListener;I)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/ssp/SSPListener;I)V
    .locals 8
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 274
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    sget v5, Landroid/hardware/ssp/SSPManager;->SSP_SERVICE_NUM:I

    if-le p2, v5, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v4, 0x0

    .line 280
    .local v4, sspListener:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
    iget-object v5, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 281
    .local v3, size:I
    const/4 v2, 0x0

    .line 283
    .local v2, idx:I
    iget-object v6, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 284
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 285
    :try_start_0
    iget-object v5, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

    invoke-virtual {v5}, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->getListener()Landroid/hardware/ssp/SSPListener;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 286
    iget-object v5, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

    move-object v4, v0

    .line 291
    :cond_2
    if-nez v4, :cond_4

    .line 292
    monitor-exit v6

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 284
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/hardware/ssp/SSPManager;->mSSPService:Landroid/hardware/ssp/ISSPService;

    invoke-interface {v5, v4, p2}, Landroid/hardware/ssp/ISSPService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 297
    iget-object v5, p0, Landroid/hardware/ssp/SSPManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    :cond_5
    :goto_2
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "SSPManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
