.class final Landroid/hardware/ssp/SSPService$Listener;
.super Ljava/lang/Object;
.source "SSPService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field private services:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/ssp/SSPService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/SSPService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "token"

    .prologue
    .line 435
    iput-object p1, p0, Landroid/hardware/ssp/SSPService$Listener;->this$0:Landroid/hardware/ssp/SSPService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p2, p0, Landroid/hardware/ssp/SSPService$Listener;->token:Landroid/os/IBinder;

    .line 437
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;

    .line 438
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/ssp/SSPService$Listener;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 421
    iget-object v0, p0, Landroid/hardware/ssp/SSPService$Listener;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/ssp/SSPService$Listener;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 421
    iget-object v0, p0, Landroid/hardware/ssp/SSPService$Listener;->services:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Landroid/hardware/ssp/SSPService$Listener;->this$0:Landroid/hardware/ssp/SSPService;

    #getter for: Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService;->access$200(Landroid/hardware/ssp/SSPService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ssp/SSPService$Listener;->this$0:Landroid/hardware/ssp/SSPService;

    #getter for: Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService;->access$200(Landroid/hardware/ssp/SSPService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Landroid/hardware/ssp/SSPService$Listener;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 450
    iget-object v0, p0, Landroid/hardware/ssp/SSPService$Listener;->this$0:Landroid/hardware/ssp/SSPService;

    #getter for: Landroid/hardware/ssp/SSPService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/ssp/SSPService;->access$200(Landroid/hardware/ssp/SSPService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 451
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callback(Landroid/hardware/ssp/SSPEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 462
    :try_start_0
    iget-object v2, p0, Landroid/hardware/ssp/SSPService$Listener;->token:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/hardware/ssp/ISSPCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ssp/ISSPCallback;

    move-result-object v0

    .line 464
    .local v0, cb:Landroid/hardware/ssp/ISSPCallback;
    invoke-interface {v0, p1}, Landroid/hardware/ssp/ISSPCallback;->sspCallback(Landroid/hardware/ssp/SSPEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v0           #cb:Landroid/hardware/ssp/ISSPCallback;
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
