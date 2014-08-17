.class Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;
.super Landroid/os/Handler;
.source "CircleLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 164
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 269
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sent MSG cannot be handled here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 167
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Create WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    new-instance v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v4, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 169
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Create WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->getEnableWakeUp()Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$202(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 173
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$200(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 184
    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "initialize WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I

    .line 186
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mInitialized:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$302(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "initialize WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 196
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$500(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$402(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 199
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startVerify(I)I

    .line 200
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "startVerify WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 203
    :catch_2
    move-exception v0

    .line 204
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 209
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 212
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$402(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 213
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "terminateVerify WakeUpCmdRecognizer finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 215
    :catch_3
    move-exception v0

    .line 216
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 225
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$402(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 226
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->destroy()V

    .line 230
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mInitialized:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$302(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 231
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 232
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 234
    :catch_4
    move-exception v0

    .line 235
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$602(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z

    .line 241
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->removeAllMsgs()V

    .line 242
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 243
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$702(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/content/Context;)Landroid/content/Context;

    .line 244
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$502(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    goto/16 :goto_0

    .line 247
    :pswitch_6
    const/4 v2, 0x0

    .line 248
    .local v2, tmpIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v5}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->choiceMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 249
    if-eqz v2, :cond_4

    .line 251
    const/high16 v5, 0x1020

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_3

    .line 253
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v5, v5, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->isSecure()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$800(Lcom/android/internal/policy/impl/CircleLockScreen;)Z

    move-result v1

    .line 256
    .local v1, isSecureLock:Z
    const-string v5, "isSecure"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const-string v5, "AUTO_LISTEN"

    if-nez v1, :cond_5

    :goto_1
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    .end local v1           #isSecureLock:Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$700(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->dismissLockScreen()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->access$900(Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V

    goto/16 :goto_0

    .restart local v1       #isSecureLock:Z
    :cond_5
    move v3, v4

    .line 257
    goto :goto_1

    .line 266
    .end local v1           #isSecureLock:Z
    .end local v2           #tmpIntent:Landroid/content/Intent;
    :pswitch_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
