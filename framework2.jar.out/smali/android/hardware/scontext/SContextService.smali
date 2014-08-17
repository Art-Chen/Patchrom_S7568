.class public Landroid/hardware/scontext/SContextService;
.super Landroid/hardware/scontext/ISContextService$Stub;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextDaemonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextService$EventPool;,
        Landroid/hardware/scontext/SContextService$ServiceHandler;,
        Landroid/hardware/scontext/SContextService$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

.field private mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mSContextDaemon:Landroid/hardware/scontext/SContextDaemon;

.field private mSContextDaemonUserInfo:Landroid/hardware/scontext/SContextDaemonUserInfo;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/ISContextService$Stub;-><init>()V

    .line 31
    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    .line 33
    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    .line 37
    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    .line 44
    iput-object p1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.hub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "scontext"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    .line 48
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/hardware/scontext/SContextService$ServiceHandler;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/scontext/SContextService$ServiceHandler;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 52
    new-instance v0, Landroid/hardware/scontext/SContextService$EventPool;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/SContextService$EventPool;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    .line 54
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUserInfo;->getInstance()Landroid/hardware/scontext/SContextDaemonUserInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextDaemonUserInfo:Landroid/hardware/scontext/SContextDaemonUserInfo;

    .line 56
    invoke-static {}, Landroid/hardware/scontext/SContextDaemon;->getInstance()Landroid/hardware/scontext/SContextDaemon;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextDaemon:Landroid/hardware/scontext/SContextDaemon;

    .line 57
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextDaemon:Landroid/hardware/scontext/SContextDaemon;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/scontext/SContextDaemon;->initializeDaemon(Landroid/content/Context;Landroid/os/Looper;)Z

    .line 58
    invoke-direct {p0, p0}, Landroid/hardware/scontext/SContextService;->addSContextDaemonListener(Landroid/hardware/scontext/ISContextDaemonListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextService$EventPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    return-object v0
.end method

.method private addSContextDaemonListener(Landroid/hardware/scontext/ISContextDaemonListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 63
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->getInstance()Landroid/hardware/scontext/SContextDaemonUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->addListener(Landroid/hardware/scontext/ISContextDaemonListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 1
    .parameter "service"

    .prologue
    .line 199
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextDaemon:Landroid/hardware/scontext/SContextDaemon;

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContextDaemon;->initializeService(I)V

    .line 200
    return-void
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V
    .locals 12
    .parameter "binder"
    .parameter "scontext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v4, 0x0

    .line 128
    .local v4, listener:Landroid/hardware/scontext/SContextService$Listener;
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    .line 130
    .local v6, service:I
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getStepCount()I

    move-result v7

    .line 132
    .local v7, stepcount:I
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mSContextDaemonUserInfo:Landroid/hardware/scontext/SContextDaemonUserInfo;

    invoke-virtual {v8, v7}, Landroid/hardware/scontext/SContextDaemonUserInfo;->setStepCount(I)V

    .line 134
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 135
    :try_start_0
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move-object v5, v4

    .end local v4           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .local v5, listener:Landroid/hardware/scontext/SContextService$Listener;
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .line 136
    .local v2, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 137
    move-object v4, v2

    .end local v5           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :goto_1
    move-object v5, v4

    .end local v4           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v5       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_0

    .line 141
    .end local v2           #i:Landroid/hardware/scontext/SContextService$Listener;
    :cond_0
    if-nez v5, :cond_1

    .line 142
    new-instance v4, Landroid/hardware/scontext/SContextService$Listener;

    invoke-direct {v4, p0, p1}, Landroid/hardware/scontext/SContextService$Listener;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    .end local v5           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4       #listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v8, 0x0

    :try_start_2
    invoke-interface {p1, v4, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 144
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_2
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mSContextDaemon:Landroid/hardware/scontext/SContextDaemon;

    invoke-virtual {v8, v6}, Landroid/hardware/scontext/SContextDaemon;->addService(I)V

    .line 148
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .local v1, client:Ljava/lang/String;
    :try_start_3
    invoke-static {p1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 153
    .local v0, cb:Landroid/hardware/scontext/ISContextCallback;
    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 156
    .end local v0           #cb:Landroid/hardware/scontext/ISContextCallback;
    :goto_3
    :try_start_4
    const-string v8, "SContextService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  .registerCallback : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", service="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", client="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 160
    monitor-exit v9

    .line 161
    return-void

    .line 160
    .end local v1           #client:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    :goto_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .end local v4           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_4

    .line 154
    .restart local v1       #client:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_3

    .end local v1           #client:Ljava/lang/String;
    .end local v4           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v5       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    move-object v4, v5

    .end local v5           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_2

    .end local v4           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #i:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v5       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_2
    move-object v4, v5

    .end local v5           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_1
.end method

.method public declared-synchronized sendEvent(ILandroid/hardware/scontext/ISContextDaemonContexts;)V
    .locals 10
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    invoke-virtual {v8}, Landroid/hardware/scontext/SContextService$EventPool;->obtain()Landroid/hardware/scontext/SContextEvent;

    move-result-object v6

    .line 69
    .local v6, scontextEvent:Landroid/hardware/scontext/SContextEvent;
    iget-object v8, v6, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v8, p1}, Landroid/hardware/scontext/SContext;->setType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 122
    .end local p2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    .restart local p2
    :pswitch_0
    :try_start_1
    new-instance v1, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextApproach;-><init>()V

    .line 74
    .local v1, approachContext:Landroid/hardware/scontext/SContextApproach;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    move-object v8, v0

    iget v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;->approach:I

    invoke-virtual {v1, v8}, Landroid/hardware/scontext/SContextApproach;->setApproach(I)V

    .line 75
    invoke-virtual {v6, v1}, Landroid/hardware/scontext/SContextEvent;->setApproachContext(Landroid/hardware/scontext/SContextApproach;)V

    .line 76
    check-cast p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    .end local p2
    iget-wide v8, p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;->timestamp:J

    iput-wide v8, v6, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 115
    .end local v1           #approachContext:Landroid/hardware/scontext/SContextApproach;
    :goto_1
    :pswitch_1
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 116
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 117
    .local v4, msg:Landroid/os/Message;
    const/4 v8, 0x0

    iput v8, v4, Landroid/os/Message;->what:I

    .line 118
    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-virtual {v8, v4}, Landroid/hardware/scontext/SContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v4           #msg:Landroid/os/Message;
    .end local v6           #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 79
    .restart local v6       #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    .restart local p2
    :pswitch_2
    :try_start_2
    new-instance v3, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {v3}, Landroid/hardware/scontext/SContextMotion;-><init>()V

    .line 80
    .local v3, motionContext:Landroid/hardware/scontext/SContextMotion;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    move-object v8, v0

    iget v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;->motion:I

    invoke-virtual {v3, v8}, Landroid/hardware/scontext/SContextMotion;->setMotion(I)V

    .line 81
    invoke-virtual {v6, v3}, Landroid/hardware/scontext/SContextEvent;->setMotionContext(Landroid/hardware/scontext/SContextMotion;)V

    .line 82
    check-cast p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    .end local p2
    iget-wide v8, p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;->timestamp:J

    iput-wide v8, v6, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    goto :goto_1

    .line 85
    .end local v3           #motionContext:Landroid/hardware/scontext/SContextMotion;
    .restart local p2
    :pswitch_3
    new-instance v2, Landroid/hardware/scontext/SContextLocation;

    invoke-direct {v2}, Landroid/hardware/scontext/SContextLocation;-><init>()V

    .line 86
    .local v2, locationContext:Landroid/hardware/scontext/SContextLocation;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    move-object v8, v0

    iget-wide v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->timestamp:J

    invoke-virtual {v2, v8, v9}, Landroid/hardware/scontext/SContextLocation;->setTimeStamp(J)V

    .line 87
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    move-object v8, v0

    iget-wide v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->latitude:D

    invoke-virtual {v2, v8, v9}, Landroid/hardware/scontext/SContextLocation;->setLatitude(D)V

    .line 88
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    move-object v8, v0

    iget-wide v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->longitude:D

    invoke-virtual {v2, v8, v9}, Landroid/hardware/scontext/SContextLocation;->setLongitude(D)V

    .line 89
    invoke-virtual {v6, v2}, Landroid/hardware/scontext/SContextEvent;->setLocationContext(Landroid/hardware/scontext/SContextLocation;)V

    .line 90
    check-cast p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    .end local p2
    iget-wide v8, p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->timestamp:J

    iput-wide v8, v6, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    goto :goto_1

    .line 95
    .end local v2           #locationContext:Landroid/hardware/scontext/SContextLocation;
    .restart local p2
    :pswitch_4
    new-instance v5, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {v5}, Landroid/hardware/scontext/SContextPedometer;-><init>()V

    .line 96
    .local v5, pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-object v8, v0

    iget-wide v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepCount:J

    invoke-virtual {v5, v8, v9}, Landroid/hardware/scontext/SContextPedometer;->setStepCount(J)V

    .line 97
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-object v8, v0

    iget-wide v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->calorie:D

    invoke-virtual {v5, v8, v9}, Landroid/hardware/scontext/SContextPedometer;->setCalorie(D)V

    .line 98
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-object v8, v0

    iget-wide v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->distance:D

    invoke-virtual {v5, v8, v9}, Landroid/hardware/scontext/SContextPedometer;->setDistance(D)V

    .line 99
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-object v8, v0

    iget-wide v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->speed:D

    invoke-virtual {v5, v8, v9}, Landroid/hardware/scontext/SContextPedometer;->setSpeed(D)V

    .line 100
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-object v8, v0

    iget v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepStatusST:I

    invoke-virtual {v5, v8}, Landroid/hardware/scontext/SContextPedometer;->setStepStatusST(I)V

    .line 101
    check-cast p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    .end local p2
    iget v8, p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepStatusLT:I

    invoke-virtual {v5, v8}, Landroid/hardware/scontext/SContextPedometer;->setStepStatusLT(I)V

    .line 102
    invoke-virtual {v6, v5}, Landroid/hardware/scontext/SContextEvent;->setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V

    .line 103
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    goto/16 :goto_1

    .line 106
    .end local v5           #pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    .restart local p2
    :pswitch_5
    new-instance v7, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-direct {v7}, Landroid/hardware/scontext/SContextStepCountAlert;-><init>()V

    .line 107
    .local v7, stepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;

    move-object v8, v0

    iget v8, v8, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;->alert:I

    invoke-virtual {v7, v8}, Landroid/hardware/scontext/SContextStepCountAlert;->setAlert(I)V

    .line 108
    invoke-virtual {v6, v7}, Landroid/hardware/scontext/SContextEvent;->setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V

    .line 109
    check-cast p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;

    .end local p2
    iget-wide v8, p2, Landroid/hardware/scontext/SContextDaemonContexts$SContextStepCountAlertContext;->timestamp:J

    iput-wide v8, v6, Landroid/hardware/scontext/SContextEvent;->timestamp:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public unregisterCallback(Landroid/os/IBinder;)V
    .locals 11
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 168
    .local v4, l:Landroid/hardware/scontext/SContextService$Listener;
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 169
    :try_start_0
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/scontext/SContextService$Listener;

    .line 170
    .local v5, listener:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v7

    if-ne p1, v7, :cond_0

    .line 171
    move-object v4, v5

    .line 176
    .end local v5           #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    if-eqz v4, :cond_3

    .line 178
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    .line 179
    .local v6, services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 180
    .local v2, i:I
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mSContextDaemon:Landroid/hardware/scontext/SContextDaemon;

    invoke-virtual {v7, v2}, Landroid/hardware/scontext/SContextDaemon;->removeService(I)V

    goto :goto_0

    .line 195
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 183
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {p1, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 184
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 186
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .local v1, client:Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 189
    .local v0, cb:Landroid/hardware/scontext/ISContextCallback;
    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 192
    .end local v0           #cb:Landroid/hardware/scontext/ISContextCallback;
    :goto_1
    :try_start_3
    const-string v7, "SContextService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  .unregisterCallback : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", client="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 195
    .end local v1           #client:Ljava/lang/String;
    .end local v6           #services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    return-void

    .line 190
    .restart local v1       #client:Ljava/lang/String;
    .restart local v6       #services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v7

    goto :goto_1
.end method
