.class Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;
.super Landroid/content/BroadcastReceiver;
.source "LockscreenHelpOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockscreenHelpOverlay;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "received MISSED_EVENT intent !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    #getter for: Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->access$200(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    #getter for: Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->access$200(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "mScreenOn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    #getter for: Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->access$200(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    #getter for: Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->access$200(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
