.class Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4058
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4061
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4062
    :cond_0
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4063
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v1, "stopping supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4064
    :cond_1
    const/16 v0, 0xd

    invoke-static {v0, v4}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 4065
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4066
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Failed to stop supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4070
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20011

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$7904(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4073
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 4074
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)V

    .line 4075
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4076
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 4077
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v0

    const v1, 0x2006f

    invoke-virtual {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 4078
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v0

    const v1, 0x2007a

    invoke-virtual {v0, v1}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    .line 4079
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 4082
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4083
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 4129
    const/4 v0, 0x0

    .line 4132
    :goto_0
    return v0

    .line 4085
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Supplicant connection received while stopping"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4131
    :cond_1
    :goto_1
    const v1, 0xc366

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_0

    .line 4088
    :sswitch_1
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Supplicant connection lost"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4092
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 4093
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 4094
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4097
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$7900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4098
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Timed out on a supplicant stop, kill and proceed"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4099
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 4100
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 4101
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4119
    :sswitch_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 4124
    :sswitch_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsFinish(Z)V

    goto :goto_1

    .line 4083
    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_3
        0x20002 -> :sswitch_3
        0x2000b -> :sswitch_3
        0x2000c -> :sswitch_3
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20011 -> :sswitch_2
        0x20015 -> :sswitch_3
        0x20018 -> :sswitch_3
        0x20048 -> :sswitch_3
        0x20049 -> :sswitch_3
        0x2004d -> :sswitch_3
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_3
        0x20055 -> :sswitch_3
        0x2005a -> :sswitch_3
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
        0x24046 -> :sswitch_4
    .end sparse-switch
.end method
