.class Lcom/android/server/WifiOffloadService$11;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$11;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1651
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "back key timer resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1502(Z)Z

    .line 1654
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1602(I)I

    .line 1655
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1702(I)I

    .line 1657
    return-void
.end method
