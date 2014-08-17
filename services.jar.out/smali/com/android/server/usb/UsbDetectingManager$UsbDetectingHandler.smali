.class final Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;
.super Landroid/os/Handler;
.source "UsbDetectingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDetectingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbDetectingHandler"
.end annotation


# instance fields
.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/usb/UsbDetectingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDetectingManager;Landroid/os/Looper;)V
    .locals 5
    .parameter
    .parameter "looper"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    .line 115
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    new-instance v1, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler$1;-><init>(Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    :try_start_0
    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDetectingManager;->access$100(Lcom/android/server/usb/UsbDetectingManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error initializing UsbDetectingHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    #setter for: Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z
    invoke-static {v5, v2}, Lcom/android/server/usb/UsbDetectingManager;->access$302(Lcom/android/server/usb/UsbDetectingManager;Z)Z

    .line 130
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_3

    :goto_2
    #setter for: Lcom/android/server/usb/UsbDetectingManager;->mConfigured:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDetectingManager;->access$402(Lcom/android/server/usb/UsbDetectingManager;Z)Z

    .line 131
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage -> mConnected = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbDetectingManager;->access$300(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mConfigured = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConfigured:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbDetectingManager;->access$400(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$300(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConfigured:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$400(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$500(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #calls: Lcom/android/server/usb/UsbDetectingManager;->startActivity()V
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$600(Lcom/android/server/usb/UsbDetectingManager;)V

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$300(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #calls: Lcom/android/server/usb/UsbDetectingManager;->cancelActivity()V
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$700(Lcom/android/server/usb/UsbDetectingManager;)V

    .line 140
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #setter for: Lcom/android/server/usb/UsbDetectingManager;->mStartActivity:Z
    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDetectingManager;->access$802(Lcom/android/server/usb/UsbDetectingManager;Z)Z

    goto :goto_0

    :cond_2
    move v2, v4

    .line 129
    goto :goto_1

    :cond_3
    move v3, v4

    .line 130
    goto :goto_2

    .line 144
    :pswitch_2
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v4, "handleMessage -> MSG_BOOT_COMPLETED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #setter for: Lcom/android/server/usb/UsbDetectingManager;->mBootCompleted:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDetectingManager;->access$502(Lcom/android/server/usb/UsbDetectingManager;Z)Z

    .line 146
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$300(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConfigured:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$400(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #calls: Lcom/android/server/usb/UsbDetectingManager;->startActivity()V
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$600(Lcom/android/server/usb/UsbDetectingManager;)V

    goto/16 :goto_0

    .line 150
    :pswitch_3
    monitor-enter p0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_START_ACTIVITY : mConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDetectingManager;->access$300(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStartActivity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mStartActivity:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDetectingManager;->access$800(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", functions = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #calls: Lcom/android/server/usb/UsbDetectingManager;->getFunctions()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbDetectingManager;->access$900(Lcom/android/server/usb/UsbDetectingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", installed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #calls: Lcom/android/server/usb/UsbDetectingManager;->installedHostDriver()Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDetectingManager;->access$1000(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$300(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mStartActivity:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$800(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #calls: Lcom/android/server/usb/UsbDetectingManager;->findNeedingDriver()Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$1100(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #calls: Lcom/android/server/usb/UsbDetectingManager;->installedHostDriver()Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$1000(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, resolverIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbDetectingManager;->access$100(Lcom/android/server/usb/UsbDetectingManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleMessage : UsbResolverActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/usb/UsbDetectingManager;->mHadPlayedActivity:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDetectingManager;->access$1202(Lcom/android/server/usb/UsbDetectingManager;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :goto_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/usb/UsbDetectingManager;->mStartActivity:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDetectingManager;->access$802(Lcom/android/server/usb/UsbDetectingManager;Z)Z

    .line 178
    .end local v1           #resolverIntent:Landroid/content/Intent;
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 170
    .restart local v1       #resolverIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_3
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
