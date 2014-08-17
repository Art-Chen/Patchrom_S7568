.class Lcom/android/server/sec/MultiWindowManagerService$1;
.super Ljava/lang/Thread;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/MultiWindowManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 125
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    new-instance v1, Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-direct {v1}, Lcom/android/server/sec/MultiWindowActionHandler;-><init>()V

    #setter for: Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;
    invoke-static {v0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->access$002(Lcom/android/server/sec/MultiWindowManagerService;Lcom/android/server/sec/MultiWindowActionHandler;)Lcom/android/server/sec/MultiWindowActionHandler;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 130
    return-void

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
