.class Lcom/android/server/FMRadioService$15;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 742
    const-string v1, "Alarm onReceive"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 743
    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, cmdStr:Ljava/lang/String;
    const-string v1, "TTSstart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    const-string v1, "TTSstart play"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/FMRadioService;->alarmTTSPlay:Z
    invoke-static {v1, v2}, Lcom/android/server/FMRadioService;->access$2302(Lcom/android/server/FMRadioService;Z)Z

    .line 755
    :cond_0
    const-string v1, "TTSstop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 756
    const-string v1, "TTSstop play"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/FMRadioService;->alarmTTSPlay:Z
    invoke-static {v1, v2}, Lcom/android/server/FMRadioService;->access$2302(Lcom/android/server/FMRadioService;Z)Z

    .line 760
    :cond_1
    return-void
.end method
