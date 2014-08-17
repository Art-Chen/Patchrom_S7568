.class Lcom/android/server/WifiOffloadService$5;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$isWaitrequired:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$5;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/WifiOffloadService$5;->val$isWaitrequired:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 649
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "checkDataActivityTimer excecuted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->isBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$400(Lcom/android/server/WifiOffloadService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 656
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "WifiOffloadService"

    const-string v1, "Intel mode is ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_3
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check before offload , mSeamlessConnectWhileConnecting ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$300(Lcom/android/server/WifiOffloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_4
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$300(Lcom/android/server/WifiOffloadService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Its already trying to auto-connect to a known network in a loop, so dont offload now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$5;->val$packageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService$5;->val$isWaitrequired:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WifiOffloadService;->wifiOffloadFlow(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 665
    :cond_6
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Intel mode is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
