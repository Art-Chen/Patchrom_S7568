.class public Landroid/hardware/ssp/SSPService;
.super Landroid/hardware/ssp/ISSPService$Stub;
.source "SSPService.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonSSPEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/SSPService$EventPool;,
        Landroid/hardware/ssp/SSPService$ServiceHandler;,
        Landroid/hardware/ssp/SSPService$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SSPService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventPool:Landroid/hardware/ssp/SSPService$EventPool;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/ssp/SSPService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSSPAutoTest:Landroid/hardware/ssp/SSPAutoTest;

.field private final mSSPDaemon:Landroid/hardware/ssp/Daemon;

.field private final mServiceHandler:Landroid/hardware/ssp/SSPService$ServiceHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/hardware/ssp/ISSPService$Stub;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ssp"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/ssp/SSPService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    iput-object p1, p0, Landroid/hardware/ssp/SSPService;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/hardware/ssp/SSPService$ServiceHandler;

    iget-object v1, p0, Landroid/hardware/ssp/SSPService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/ssp/SSPService$ServiceHandler;-><init>(Landroid/hardware/ssp/SSPService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/ssp/SSPService;->mServiceHandler:Landroid/hardware/ssp/SSPService$ServiceHandler;

    .line 83
    new-instance v0, Landroid/hardware/ssp/SSPService$EventPool;

    invoke-direct {v0, p0}, Landroid/hardware/ssp/SSPService$EventPool;-><init>(Landroid/hardware/ssp/SSPService;)V

    iput-object v0, p0, Landroid/hardware/ssp/SSPService;->mEventPool:Landroid/hardware/ssp/SSPService$EventPool;

    .line 85
    new-instance v0, Landroid/hardware/ssp/Daemon;

    invoke-direct {v0}, Landroid/hardware/ssp/Daemon;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    .line 86
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    iget-object v1, p0, Landroid/hardware/ssp/SSPService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/ssp/Daemon;->initializeDaemon(Landroid/content/Context;Landroid/os/Looper;[Ljava/lang/String;)Z

    .line 88
    invoke-direct {p0, p0}, Landroid/hardware/ssp/SSPService;->addSSPEventListener(Landroid/hardware/ssp/IDaemonSSPEventListener;)V

    .line 90
    new-instance v0, Landroid/hardware/ssp/SSPAutoTest;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPAutoTest;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPAutoTest:Landroid/hardware/ssp/SSPAutoTest;

    .line 91
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/ssp/SSPService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/ssp/SSPService;)Landroid/hardware/ssp/SSPService$EventPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mEventPool:Landroid/hardware/ssp/SSPService$EventPool;

    return-object v0
.end method

.method private addSSPEventListener(Landroid/hardware/ssp/IDaemonSSPEventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 100
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getSSPEventObserver()Landroid/hardware/ssp/DaemonObserverSSPEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverSSPEvent;->addSSPEventObserver(Landroid/hardware/ssp/IDaemonSSPEventListener;)V

    .line 102
    return-void
.end method

.method private isUsableService(I)Z
    .locals 4
    .parameter "service"

    .prologue
    .line 577
    iget-object v2, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPService$Listener;

    .line 578
    .local v0, i:Landroid/hardware/ssp/SSPService$Listener;
    #getter for: Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService$Listener;->access$100(Landroid/hardware/ssp/SSPService$Listener;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    const/4 v2, 0x0

    .line 583
    .end local v0           #i:Landroid/hardware/ssp/SSPService$Listener;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .parameter "binder"
    .parameter "str"

    .prologue
    .line 405
    const-string v1, ""

    .line 407
    .local v1, client:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/ssp/ISSPCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ssp/ISSPCallback;

    move-result-object v0

    .line 408
    .local v0, cb:Landroid/hardware/ssp/ISSPCallback;
    invoke-interface {v0}, Landroid/hardware/ssp/ISSPCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 412
    .end local v0           #cb:Landroid/hardware/ssp/ISSPCallback;
    :goto_0
    const-string v3, "SSPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v3, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 416
    return-void

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeSSPEventListener()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getSSPEventObserver()Landroid/hardware/ssp/DaemonObserverSSPEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonObserverSSPEvent;->removeSSPEventObserver()V

    .line 111
    return-void
.end method

.method private showListenerList()V
    .locals 7

    .prologue
    .line 234
    const-string v4, "SSPService"

    const-string v5, "===== SSP Service List ====="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v4, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPService$Listener;

    .line 236
    .local v0, i:Landroid/hardware/ssp/SSPService$Listener;
    #getter for: Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService$Listener;->access$100(Landroid/hardware/ssp/SSPService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 237
    .local v3, j:Ljava/lang/Integer;
    const-string v4, "SSPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Service : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .end local v0           #i:Landroid/hardware/ssp/SSPService$Listener;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #j:Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method public initializeSSPService(I)V
    .locals 1
    .parameter "service"

    .prologue
    .line 267
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/Daemon;->initializeService(I)V

    .line 268
    return-void
.end method

.method public isRunSSPAutoTest()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPAutoTest:Landroid/hardware/ssp/SSPAutoTest;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPAutoTest;->isRun()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Landroid/os/IBinder;I)V
    .locals 7
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, listener:Landroid/hardware/ssp/SSPService$Listener;
    iget-object v5, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 163
    :try_start_0
    iget-object v4, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPService$Listener;

    .line 164
    .local v0, i:Landroid/hardware/ssp/SSPService$Listener;
    #getter for: Landroid/hardware/ssp/SSPService$Listener;->token:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService$Listener;->access$000(Landroid/hardware/ssp/SSPService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 165
    invoke-direct {p0, p2}, Landroid/hardware/ssp/SSPService;->isUsableService(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    invoke-virtual {v4, p2}, Landroid/hardware/ssp/Daemon;->addService(I)V

    .line 168
    :cond_1
    #getter for: Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService$Listener;->access$100(Landroid/hardware/ssp/SSPService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-direct {p0}, Landroid/hardware/ssp/SSPService;->showListenerList()V

    .line 170
    monitor-exit v5

    .line 188
    .end local v0           #i:Landroid/hardware/ssp/SSPService$Listener;
    :goto_0
    return-void

    .line 174
    :cond_2
    new-instance v3, Landroid/hardware/ssp/SSPService$Listener;

    invoke-direct {v3, p0, p1}, Landroid/hardware/ssp/SSPService$Listener;-><init>(Landroid/hardware/ssp/SSPService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v2           #listener:Landroid/hardware/ssp/SSPService$Listener;
    .local v3, listener:Landroid/hardware/ssp/SSPService$Listener;
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 176
    iget-object v4, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0, p2}, Landroid/hardware/ssp/SSPService;->isUsableService(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 179
    iget-object v4, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    invoke-virtual {v4, p2}, Landroid/hardware/ssp/Daemon;->addService(I)V

    .line 182
    :cond_3
    #getter for: Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/ssp/SSPService$Listener;->access$100(Landroid/hardware/ssp/SSPService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0}, Landroid/hardware/ssp/SSPService;->showListenerList()V

    .line 186
    const-string v4, "registerCallback"

    invoke-direct {p0, p1, v4}, Landroid/hardware/ssp/SSPService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 187
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 188
    .end local v3           #listener:Landroid/hardware/ssp/SSPService$Listener;
    .restart local v2       #listener:Landroid/hardware/ssp/SSPService$Listener;
    goto :goto_0

    .line 187
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v2           #listener:Landroid/hardware/ssp/SSPService$Listener;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #listener:Landroid/hardware/ssp/SSPService$Listener;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/ssp/SSPService$Listener;
    .restart local v2       #listener:Landroid/hardware/ssp/SSPService$Listener;
    goto :goto_1
.end method

.method public declared-synchronized sendEvent(ILandroid/hardware/ssp/IDaemonContexts;)V
    .locals 18
    .parameter "event"
    .parameter "context"

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/ssp/SSPService;->mEventPool:Landroid/hardware/ssp/SSPService$EventPool;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/ssp/SSPService$EventPool;->obtain()Landroid/hardware/ssp/SSPEvent;

    move-result-object v14

    .line 281
    .local v14, sspEvent:Landroid/hardware/ssp/SSPEvent;
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/hardware/ssp/SSPEvent;->setEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 394
    .end local p2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 285
    .restart local p2
    :pswitch_0
    :try_start_1
    new-instance v5, Landroid/hardware/ssp/SSPGeneralContext;

    invoke-direct {v5}, Landroid/hardware/ssp/SSPGeneralContext;-><init>()V

    .line 286
    .local v5, generalContext:Landroid/hardware/ssp/SSPGeneralContext;
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPGeneral;

    .end local p2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPGeneral;->message:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/hardware/ssp/SSPGeneralContext;->setMessage(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v14, v5}, Landroid/hardware/ssp/SSPEvent;->setGeneralContext(Landroid/hardware/ssp/SSPGeneralContext;)V

    .line 388
    .end local v5           #generalContext:Landroid/hardware/ssp/SSPGeneralContext;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 389
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 390
    .local v10, msg:Landroid/os/Message;
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v10, Landroid/os/Message;->what:I

    .line 391
    iput-object v14, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/ssp/SSPService;->mServiceHandler:Landroid/hardware/ssp/SSPService$ServiceHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/hardware/ssp/SSPService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    .end local v10           #msg:Landroid/os/Message;
    .end local v14           #sspEvent:Landroid/hardware/ssp/SSPEvent;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 290
    .restart local v14       #sspEvent:Landroid/hardware/ssp/SSPEvent;
    .restart local p2
    :pswitch_1
    :try_start_2
    new-instance v7, Landroid/hardware/ssp/SSPLocationContext;

    invoke-direct {v7}, Landroid/hardware/ssp/SSPLocationContext;-><init>()V

    .line 291
    .local v7, locationContext:Landroid/hardware/ssp/SSPLocationContext;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->getSysTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/hardware/ssp/SSPLocationContext;->setSysTime(J)V

    .line 292
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->timeStamp:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/hardware/ssp/SSPLocationContext;->setTimeStamp(J)V

    .line 293
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->latitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/hardware/ssp/SSPLocationContext;->setLatitude(D)V

    .line 294
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->longitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/hardware/ssp/SSPLocationContext;->setLongitude(D)V

    .line 295
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->altitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/hardware/ssp/SSPLocationContext;->setAltitude(D)V

    .line 296
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->accuracy:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/hardware/ssp/SSPLocationContext;->setAccuracy(F)V

    .line 297
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->speed:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/hardware/ssp/SSPLocationContext;->setSpeed(F)V

    .line 298
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->heading:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/hardware/ssp/SSPLocationContext;->setHeading(F)V

    .line 299
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    .end local p2
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->valid:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/hardware/ssp/SSPLocationContext;->setValid(Z)V

    .line 300
    invoke-virtual {v14, v7}, Landroid/hardware/ssp/SSPEvent;->setLocationContext(Landroid/hardware/ssp/SSPLocationContext;)V

    goto/16 :goto_1

    .line 303
    .end local v7           #locationContext:Landroid/hardware/ssp/SSPLocationContext;
    .restart local p2
    :pswitch_2
    new-instance v9, Landroid/hardware/ssp/SSPMovingContext;

    invoke-direct {v9}, Landroid/hardware/ssp/SSPMovingContext;-><init>()V

    .line 304
    .local v9, movingContext:Landroid/hardware/ssp/SSPMovingContext;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/hardware/ssp/SSPMovingContext;->setTransMethod(I)V

    .line 305
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/hardware/ssp/SSPMovingContext;->setMove(I)V

    .line 306
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->mode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/hardware/ssp/SSPMovingContext;->setMode(I)V

    .line 307
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->step:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/hardware/ssp/SSPMovingContext;->setStep(I)V

    .line 308
    invoke-virtual {v14, v9}, Landroid/hardware/ssp/SSPEvent;->setMovingContext(Landroid/hardware/ssp/SSPMovingContext;)V

    goto/16 :goto_1

    .line 311
    .end local v9           #movingContext:Landroid/hardware/ssp/SSPMovingContext;
    .restart local p2
    :pswitch_3
    new-instance v3, Landroid/hardware/ssp/SSPCarryingContext;

    invoke-direct {v3}, Landroid/hardware/ssp/SSPCarryingContext;-><init>()V

    .line 312
    .local v3, carryingContext:Landroid/hardware/ssp/SSPCarryingContext;
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPCarrying;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPCarrying;->carryingPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/hardware/ssp/SSPCarryingContext;->setCarryingPosition(I)V

    .line 314
    invoke-virtual {v14, v3}, Landroid/hardware/ssp/SSPEvent;->setCarryingContext(Landroid/hardware/ssp/SSPCarryingContext;)V

    goto/16 :goto_1

    .line 317
    .end local v3           #carryingContext:Landroid/hardware/ssp/SSPCarryingContext;
    .restart local p2
    :pswitch_4
    new-instance v12, Landroid/hardware/ssp/SSPPedometerContext;

    invoke-direct {v12}, Landroid/hardware/ssp/SSPPedometerContext;-><init>()V

    .line 318
    .local v12, pedometerContext:Landroid/hardware/ssp/SSPPedometerContext;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepCount:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/hardware/ssp/SSPPedometerContext;->setStepCount(J)V

    .line 319
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->calorie:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/hardware/ssp/SSPPedometerContext;->setCalorie(D)V

    .line 320
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->distance:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/hardware/ssp/SSPPedometerContext;->setDistance(D)V

    .line 321
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->speed:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/hardware/ssp/SSPPedometerContext;->setSpeed(D)V

    .line 322
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepStatusST:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/hardware/ssp/SSPPedometerContext;->setStepStatusST(I)V

    .line 324
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPPedometer;->stepStatusLT:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/hardware/ssp/SSPPedometerContext;->setStepStatusLT(I)V

    .line 326
    invoke-virtual {v14, v12}, Landroid/hardware/ssp/SSPEvent;->setPedometerContext(Landroid/hardware/ssp/SSPPedometerContext;)V

    goto/16 :goto_1

    .line 329
    .end local v12           #pedometerContext:Landroid/hardware/ssp/SSPPedometerContext;
    .restart local p2
    :pswitch_5
    new-instance v13, Landroid/hardware/ssp/SSPRawSensorContext;

    invoke-direct {v13}, Landroid/hardware/ssp/SSPRawSensorContext;-><init>()V

    .line 330
    .local v13, rawSensorContext:Landroid/hardware/ssp/SSPRawSensorContext;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->getSysTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/hardware/ssp/SSPRawSensorContext;->setSysTime(J)V

    .line 331
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->timeStamp:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/hardware/ssp/SSPRawSensorContext;->setTimeStamp(J)V

    .line 332
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->accelerometer:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/hardware/ssp/SSPRawSensorContext;->setAccelerometer([F)V

    .line 334
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->orientation:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/hardware/ssp/SSPRawSensorContext;->setOrientation([F)V

    .line 336
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->magnetic:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/hardware/ssp/SSPRawSensorContext;->setMagnetic([F)V

    .line 337
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->gyroscope:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/hardware/ssp/SSPRawSensorContext;->setGyroscope([F)V

    .line 338
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->accAccuracy:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/hardware/ssp/SSPRawSensorContext;->setAccAccuracy(F)V

    .line 340
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->oriAccuracy:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/hardware/ssp/SSPRawSensorContext;->setOriAccuracy(F)V

    .line 342
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->magAccuracy:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/hardware/ssp/SSPRawSensorContext;->setMagAccuracy(F)V

    .line 344
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;->gyroAccuracy:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/hardware/ssp/SSPRawSensorContext;->setGyroAccuracy(F)V

    .line 346
    invoke-virtual {v14, v13}, Landroid/hardware/ssp/SSPEvent;->setRawSensorContext(Landroid/hardware/ssp/SSPRawSensorContext;)V

    goto/16 :goto_1

    .line 349
    .end local v13           #rawSensorContext:Landroid/hardware/ssp/SSPRawSensorContext;
    .restart local p2
    :pswitch_6
    new-instance v15, Landroid/hardware/ssp/SSPZoneContext;

    invoke-direct {v15}, Landroid/hardware/ssp/SSPZoneContext;-><init>()V

    .line 350
    .local v15, zoneContext:Landroid/hardware/ssp/SSPZoneContext;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPZone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPZone;->type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/ssp/SSPZoneContext;->setType(I)V

    .line 351
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPZone;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPZone;->action:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/ssp/SSPZoneContext;->setAction(I)V

    .line 352
    invoke-virtual {v14, v15}, Landroid/hardware/ssp/SSPEvent;->setZoneContext(Landroid/hardware/ssp/SSPZoneContext;)V

    goto/16 :goto_1

    .line 355
    .end local v15           #zoneContext:Landroid/hardware/ssp/SSPZoneContext;
    .restart local p2
    :pswitch_7
    new-instance v4, Landroid/hardware/ssp/SSPDangerZoneContext;

    invoke-direct {v4}, Landroid/hardware/ssp/SSPDangerZoneContext;-><init>()V

    .line 356
    .local v4, dangerZoneContext:Landroid/hardware/ssp/SSPDangerZoneContext;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/hardware/ssp/SSPDangerZoneContext;->setCategory(I)V

    .line 357
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->action:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/hardware/ssp/SSPDangerZoneContext;->setAction(I)V

    .line 358
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/hardware/ssp/SSPDangerZoneContext;->setLevel(I)V

    .line 359
    invoke-virtual {v14, v4}, Landroid/hardware/ssp/SSPEvent;->setDangerZoneContext(Landroid/hardware/ssp/SSPDangerZoneContext;)V

    goto/16 :goto_1

    .line 362
    .end local v4           #dangerZoneContext:Landroid/hardware/ssp/SSPDangerZoneContext;
    .restart local p2
    :pswitch_8
    new-instance v8, Landroid/hardware/ssp/SSPMotionContext;

    invoke-direct {v8}, Landroid/hardware/ssp/SSPMotionContext;-><init>()V

    .line 363
    .local v8, motionContext:Landroid/hardware/ssp/SSPMotionContext;
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPMotion;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPMotion;->type:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/hardware/ssp/SSPMotionContext;->setType(I)V

    .line 364
    invoke-virtual {v14, v8}, Landroid/hardware/ssp/SSPEvent;->setMotionContext(Landroid/hardware/ssp/SSPMotionContext;)V

    goto/16 :goto_1

    .line 367
    .end local v8           #motionContext:Landroid/hardware/ssp/SSPMotionContext;
    .restart local p2
    :pswitch_9
    new-instance v6, Landroid/hardware/ssp/SSPGestureContext;

    invoke-direct {v6}, Landroid/hardware/ssp/SSPGestureContext;-><init>()V

    .line 368
    .local v6, gestureContext:Landroid/hardware/ssp/SSPGestureContext;
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPGesture;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPGesture;->proximity:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/hardware/ssp/SSPGestureContext;->setProximity(I)V

    .line 369
    invoke-virtual {v14, v6}, Landroid/hardware/ssp/SSPEvent;->setGestureContext(Landroid/hardware/ssp/SSPGestureContext;)V

    goto/16 :goto_1

    .line 372
    .end local v6           #gestureContext:Landroid/hardware/ssp/SSPGestureContext;
    .restart local p2
    :pswitch_a
    new-instance v11, Landroid/hardware/ssp/SSPNotificationContext;

    invoke-direct {v11}, Landroid/hardware/ssp/SSPNotificationContext;-><init>()V

    .line 373
    .local v11, notificationContext:Landroid/hardware/ssp/SSPNotificationContext;
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPNotification;->action:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/hardware/ssp/SSPNotificationContext;->setAction(I)V

    .line 374
    invoke-virtual {v14, v11}, Landroid/hardware/ssp/SSPEvent;->setNotificationContext(Landroid/hardware/ssp/SSPNotificationContext;)V

    goto/16 :goto_1

    .line 377
    .end local v11           #notificationContext:Landroid/hardware/ssp/SSPNotificationContext;
    .restart local p2
    :pswitch_b
    new-instance v2, Landroid/hardware/ssp/SSPBleContext;

    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->count:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/hardware/ssp/SSPBleContext;-><init>(I)V

    .line 379
    .local v2, bleContext:Landroid/hardware/ssp/SSPBleContext;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->count:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/SSPBleContext;->setCount(I)V

    .line 380
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->id:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/SSPBleContext;->setId([Ljava/lang/String;)V

    .line 381
    check-cast p2, Landroid/hardware/ssp/DaemonContexts$SSPBLE;

    .end local p2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->rssi:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/hardware/ssp/SSPBleContext;->setRssi([I)V

    .line 382
    invoke-virtual {v14, v2}, Landroid/hardware/ssp/SSPEvent;->setBleContext(Landroid/hardware/ssp/SSPBleContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 120
    sget-object v0, Landroid/hardware/ssp/SSPManager;->NORMAL_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    invoke-virtual {v0}, Landroid/hardware/ssp/Daemon;->finalizeDaemon()Z

    .line 122
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    iget-object v1, p0, Landroid/hardware/ssp/SSPService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/ssp/SSPService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ssp/Daemon;->initializeDaemon(Landroid/content/Context;Landroid/os/Looper;[Ljava/lang/String;)Z

    .line 124
    invoke-direct {p0, p0}, Landroid/hardware/ssp/SSPService;->addSSPEventListener(Landroid/hardware/ssp/IDaemonSSPEventListener;)V

    .line 125
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    sget-object v0, Landroid/hardware/ssp/SSPManager;->REPLAY_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "SSPService"

    const-string v1, "need to set the file name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPacketListForSSPAutoTest([BI)V
    .locals 1
    .parameter "packet"
    .parameter "delayTime"

    .prologue
    .line 629
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPAutoTest:Landroid/hardware/ssp/SSPAutoTest;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/ssp/SSPAutoTest;->setPacketList([BI)V

    .line 630
    return-void
.end method

.method public setReplayMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "mode"
    .parameter "fileName"

    .prologue
    .line 139
    sget-object v0, Landroid/hardware/ssp/SSPManager;->REPLAY_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    invoke-virtual {v0}, Landroid/hardware/ssp/Daemon;->finalizeDaemon()Z

    .line 144
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    iget-object v1, p0, Landroid/hardware/ssp/SSPService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/ssp/SSPService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ssp/Daemon;->initializeDaemon(Landroid/content/Context;Landroid/os/Looper;[Ljava/lang/String;)Z

    .line 146
    invoke-direct {p0, p0}, Landroid/hardware/ssp/SSPService;->addSSPEventListener(Landroid/hardware/ssp/IDaemonSSPEventListener;)V

    .line 147
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setSSPLogger(ZZIZ)V
    .locals 0
    .parameter "isConsole"
    .parameter "isFile"
    .parameter "level"
    .parameter "isCaller"

    .prologue
    .line 595
    invoke-static {p1}, Landroid/hardware/ssp/SSPLogger;->setConsoleLoggingEnable(Z)V

    .line 596
    invoke-static {p2}, Landroid/hardware/ssp/SSPLogger;->setFileLoggingEnable(Z)V

    .line 597
    invoke-static {p3, p4}, Landroid/hardware/ssp/SSPLogger;->setLogOption(IZ)V

    .line 598
    return-void
.end method

.method public setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V
    .locals 1
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 252
    if-lez p1, :cond_0

    sget v0, Landroid/hardware/ssp/SSPManager;->SSP_SERVICE_NUM:I

    if-le p1, v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/ssp/Daemon;->setProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    goto :goto_0
.end method

.method public startSSPAutoTest(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 607
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPAutoTest:Landroid/hardware/ssp/SSPAutoTest;

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/SSPAutoTest;->startAutoTest(I)V

    .line 608
    return-void
.end method

.method public stopSSPAutoTest()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroid/hardware/ssp/SSPService;->mSSPAutoTest:Landroid/hardware/ssp/SSPAutoTest;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPAutoTest;->stopAutoTest()V

    .line 618
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 7
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v2, 0x0

    .line 202
    .local v2, listener:Landroid/hardware/ssp/SSPService$Listener;
    iget-object v4, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v5, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/SSPService$Listener;

    .line 204
    .local v0, i:Landroid/hardware/ssp/SSPService$Listener;
    #getter for: Landroid/hardware/ssp/SSPService$Listener;->token:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService$Listener;->access$000(Landroid/hardware/ssp/SSPService$Listener;)Landroid/os/IBinder;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 205
    move-object v2, v0

    .line 206
    #getter for: Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService$Listener;->access$100(Landroid/hardware/ssp/SSPService$Listener;)Ljava/util/HashSet;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 211
    .end local v0           #i:Landroid/hardware/ssp/SSPService$Listener;
    :cond_1
    invoke-direct {p0}, Landroid/hardware/ssp/SSPService;->showListenerList()V

    .line 213
    invoke-direct {p0, p2}, Landroid/hardware/ssp/SSPService;->isUsableService(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    iget-object v5, p0, Landroid/hardware/ssp/SSPService;->mSSPDaemon:Landroid/hardware/ssp/Daemon;

    invoke-virtual {v5, p2}, Landroid/hardware/ssp/Daemon;->removeService(I)V

    .line 217
    :cond_2
    if-eqz v2, :cond_3

    #getter for: Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/ssp/SSPService$Listener;->access$100(Landroid/hardware/ssp/SSPService$Listener;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 218
    :cond_3
    monitor-exit v4

    .line 227
    :goto_0
    return v3

    .line 221
    :cond_4
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 222
    iget-object v3, p0, Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    const-string v3, "unregisterCallback"

    invoke-direct {p0, p1, v3}, Landroid/hardware/ssp/SSPService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 225
    monitor-exit v4

    .line 227
    const/4 v3, 0x1

    goto :goto_0

    .line 225
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
