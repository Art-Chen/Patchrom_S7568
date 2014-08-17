.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 755
    const-string v0, "WifiService"

    const-string v1, "android.intent.action.CSC_WIFI_UPDATE_DONE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->getPersistedWifiState()I
    invoke-static {v0}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    const-string v0, "WifiService"

    const-string v1, "try to turn on wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v0, v2}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 762
    :cond_0
    return-void
.end method
