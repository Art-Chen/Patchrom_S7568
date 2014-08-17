.class Lcom/android/internal/policy/impl/CircleMusicWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "CircleMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v7, "GlassLockScreenMusicWidget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() : intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "playing"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v6, 0x1

    .local v6, playing:I
    :goto_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$102(Lcom/android/internal/policy/impl/CircleMusicWidget;I)I

    :cond_0
    const-string v7, "isStop"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v3, 0x1

    .local v3, isStop:I
    :goto_1
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .local v4, mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3           #isStop:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6       #playing:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .end local v6           #playing:I
    :cond_4
    const-string v7, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "playing"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const/4 v6, 0x1

    .restart local v6       #playing:I
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    const/4 v8, 0x2

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$102(Lcom/android/internal/policy/impl/CircleMusicWidget;I)I

    const-string v7, "hostType"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v2, 0x1

    .local v2, hostType:I
    :goto_4
    const/4 v7, 0x1

    if-ne v2, v7, :cond_7

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "title"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "artist"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .local v1, dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c3

    invoke-virtual {v7, v8, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .end local v1           #dataArray:[Ljava/lang/String;
    .end local v2           #hostType:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #playing:I
    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .restart local v2       #hostType:I
    :cond_7
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .end local v2           #hostType:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    const-string v7, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "playing"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    const/4 v6, 0x1

    .restart local v6       #playing:I
    :goto_5
    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$102(Lcom/android/internal/policy/impl/CircleMusicWidget;I)I

    :cond_9
    const-string v7, "isStop"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    const/4 v3, 0x1

    .restart local v3       #isStop:I
    :goto_6
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .end local v3           #isStop:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .restart local v6       #playing:I
    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    .end local v6           #playing:I
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const-string v7, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "playing"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    const/4 v6, 0x1

    .restart local v6       #playing:I
    :goto_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    const/4 v8, 0x2

    #setter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$102(Lcom/android/internal/policy/impl/CircleMusicWidget;I)I

    const-string v7, "hostType"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v2, 0x1

    .restart local v2       #hostType:I
    :goto_8
    const/4 v7, 0x1

    if-ne v2, v7, :cond_f

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "title"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "artist"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .restart local v1       #dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c3

    invoke-virtual {v7, v8, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .end local v1           #dataArray:[Ljava/lang/String;
    .end local v2           #hostType:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_d
    const/4 v6, 0x0

    .restart local v6       #playing:I
    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    goto :goto_8

    .restart local v2       #hostType:I
    :cond_f
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
