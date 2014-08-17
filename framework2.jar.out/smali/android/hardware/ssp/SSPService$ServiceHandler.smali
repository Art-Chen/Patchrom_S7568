.class final Landroid/hardware/ssp/SSPService$ServiceHandler;
.super Landroid/os/Handler;
.source "SSPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/ssp/SSPService;


# direct methods
.method public constructor <init>(Landroid/hardware/ssp/SSPService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 482
    iput-object p1, p0, Landroid/hardware/ssp/SSPService$ServiceHandler;->this$0:Landroid/hardware/ssp/SSPService;

    .line 483
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 484
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 493
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/ssp/SSPEvent;

    .line 495
    .local v0, event:Landroid/hardware/ssp/SSPEvent;
    iget-object v3, p0, Landroid/hardware/ssp/SSPService$ServiceHandler;->this$0:Landroid/hardware/ssp/SSPService;

    #getter for: Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/ssp/SSPService;->access$200(Landroid/hardware/ssp/SSPService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 496
    :try_start_0
    iget-object v3, p0, Landroid/hardware/ssp/SSPService$ServiceHandler;->this$0:Landroid/hardware/ssp/SSPService;

    #getter for: Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/ssp/SSPService;->access$200(Landroid/hardware/ssp/SSPService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ssp/SSPService$Listener;

    .line 497
    .local v1, i:Landroid/hardware/ssp/SSPService$Listener;
    #getter for: Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/ssp/SSPService$Listener;->access$100(Landroid/hardware/ssp/SSPService$Listener;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPEvent;->getEvent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/SSPService$Listener;->callback(Landroid/hardware/ssp/SSPEvent;)V

    goto :goto_0

    .line 504
    .end local v1           #i:Landroid/hardware/ssp/SSPService$Listener;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 502
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/hardware/ssp/SSPService$ServiceHandler;->this$0:Landroid/hardware/ssp/SSPService;

    #getter for: Landroid/hardware/ssp/SSPService;->mEventPool:Landroid/hardware/ssp/SSPService$EventPool;
    invoke-static {v3}, Landroid/hardware/ssp/SSPService;->access$300(Landroid/hardware/ssp/SSPService;)Landroid/hardware/ssp/SSPService$EventPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/hardware/ssp/SSPService$EventPool;->recycle(Landroid/hardware/ssp/SSPEvent;)V

    .line 503
    iget-object v3, p0, Landroid/hardware/ssp/SSPService$ServiceHandler;->this$0:Landroid/hardware/ssp/SSPService;

    #getter for: Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/ssp/SSPService;->access$200(Landroid/hardware/ssp/SSPService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 504
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    return-void
.end method
