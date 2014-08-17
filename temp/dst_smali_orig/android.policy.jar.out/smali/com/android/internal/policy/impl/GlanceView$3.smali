.class Lcom/android/internal/policy/impl/GlanceView$3;
.super Landroid/content/BroadcastReceiver;
.source "GlanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlanceView;->IniteMusicBRReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlanceView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlanceView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x12c3

    const/16 v10, 0x12c2

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/GlanceView;->access$1100(Lcom/android/internal/policy/impl/GlanceView;)I

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "playing"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_2

    move v6, v3

    .local v6, playing:I
    :goto_0
    if-ne v6, v3, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #setter for: Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I
    invoke-static {v8, v3}, Lcom/android/internal/policy/impl/GlanceView;->access$1102(Lcom/android/internal/policy/impl/GlanceView;I)I

    :cond_0
    const-string v8, "isStop"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_3

    .local v3, isStop:I
    :goto_1
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .local v4, mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

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
    move v6, v7

    goto :goto_0

    .restart local v6       #playing:I
    :cond_3
    move v3, v7

    goto :goto_1

    .end local v6           #playing:I
    :cond_4
    const-string v8, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "playing"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_5

    const/4 v6, 0x1

    .restart local v6       #playing:I
    :goto_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #setter for: Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/GlanceView;->access$1102(Lcom/android/internal/policy/impl/GlanceView;I)I

    const-string v8, "hostType"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v3

    .local v2, hostType:I
    :goto_4
    if-ne v2, v3, :cond_7

    new-array v1, v9, [Ljava/lang/String;

    const-string v8, "title"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const-string v7, "artist"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .local v1, dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

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
    move v2, v7

    goto :goto_4

    .restart local v2       #hostType:I
    :cond_7
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .end local v2           #hostType:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/GlanceView;->access$1100(Lcom/android/internal/policy/impl/GlanceView;)I

    move-result v8

    if-ne v8, v3, :cond_c

    const-string v8, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "playing"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_a

    move v6, v3

    .restart local v6       #playing:I
    :goto_5
    if-ne v6, v3, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #setter for: Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I
    invoke-static {v8, v3}, Lcom/android/internal/policy/impl/GlanceView;->access$1102(Lcom/android/internal/policy/impl/GlanceView;I)I

    :cond_9
    const-string v8, "isStop"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_b

    .restart local v3       #isStop:I
    :goto_6
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .end local v3           #isStop:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_a
    move v6, v7

    goto :goto_5

    .restart local v6       #playing:I
    :cond_b
    move v3, v7

    goto :goto_6

    .end local v6           #playing:I
    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/GlanceView;->access$1100(Lcom/android/internal/policy/impl/GlanceView;)I

    move-result v8

    if-ne v8, v9, :cond_1

    const-string v8, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "playing"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_d

    const/4 v6, 0x1

    .restart local v6       #playing:I
    :goto_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #setter for: Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/GlanceView;->access$1102(Lcom/android/internal/policy/impl/GlanceView;I)I

    const-string v8, "hostType"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_e

    move v2, v3

    .restart local v2       #hostType:I
    :goto_8
    if-ne v2, v3, :cond_f

    new-array v1, v9, [Ljava/lang/String;

    const-string v8, "title"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const-string v7, "artist"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .restart local v1       #dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

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
    move v2, v7

    goto :goto_8

    .restart local v2       #hostType:I
    :cond_f
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlanceView$3;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlanceView;->access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
