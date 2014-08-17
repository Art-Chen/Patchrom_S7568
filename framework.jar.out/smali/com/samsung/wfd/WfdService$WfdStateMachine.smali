.class Lcom/samsung/wfd/WfdService$WfdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

.field private mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

.field private mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "wfdSupported"

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    .line 1403
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 1398
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    .line 1399
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    .line 1400
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    .line 1405
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1406
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1408
    if-eqz p3, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1414
    :goto_0
    return-void

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1396
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showNotification()V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showWeakNetworkNotification()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByAudioNotification()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V

    return-void
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 1792
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1793
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1794
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1795
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService;->access$5102(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 1797
    :cond_0
    return-void
.end method

.method private disableWiFiP2P()V
    .locals 3

    .prologue
    .line 1856
    const-string v0, "disabling WiFi P2P"

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1859
    const-string v0, "WfdService"

    const-string v1, " mWifiP2pManager is null!! check!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_0
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1865
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;

    invoke-direct {v2, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1879
    :goto_0
    return-void

    .line 1877
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method private enableWiFiP2P()V
    .locals 2

    .prologue
    .line 1828
    const-string v0, "enabling WiFi P2P"

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1832
    :cond_0
    return-void
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1838
    :try_start_0
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1839
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1841
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 1842
    const-string v4, "WfdService"

    const-string/jumbo v5, "isP2pConnected >> true!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1843
    const/4 v3, 0x1

    .line 1851
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 1847
    :catch_0
    move-exception v1

    .line 1848
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "WfdService"

    const-string/jumbo v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1731
    const-string v0, "WfdService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1735
    const-string v0, "WfdService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    .line 1725
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1726
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1727
    return-object v0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 1700
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 1704
    :goto_0
    return-void

    .line 1701
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1702
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1703
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5000(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1707
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 1712
    :goto_0
    return-void

    .line 1708
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1709
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1710
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1711
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5000(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1715
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 1720
    :goto_0
    return-void

    .line 1716
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1717
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1718
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1719
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5000(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private showNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1755
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1756
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1766
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1767
    const/high16 v6, 0x1080

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1768
    const-string v6, "cause"

    const v7, 0x22077

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1770
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1772
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1773
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x104051a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1774
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x10404df

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1778
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    #setter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6, v7}, Lcom/samsung/wfd/WfdService;->access$5102(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 1779
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 1781
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x1080676

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 1782
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 1783
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1784
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1785
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1787
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private showTerminatedByAudioNotification()V
    .locals 4

    .prologue
    .line 1746
    const-string v2, "WfdService"

    const-string/jumbo v3, "showTerminatedByAudioNotification"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1748
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x104051f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1749
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1752
    return-void
.end method

.method private showWeakNetworkNotification()V
    .locals 4

    .prologue
    .line 1739
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1740
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x104051c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1741
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1744
    return-void
.end method

.method private terminateWfdRoutine(I)V
    .locals 4
    .parameter "option"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1651
    const-string v0, "enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->setWfdParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1653
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->clearNotification()V

    .line 1655
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdOffTimer:Z
    invoke-static {v0, v2}, Lcom/samsung/wfd/WfdService;->access$4702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1657
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    const-string v0, "[WFD] Let\'s start Wfd with Last connect!!!"

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 1659
    const-string/jumbo v0, "p2p disable by Wfd!!!"

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 1660
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    .line 1661
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v0, v2}, Lcom/samsung/wfd/WfdService;->access$3302(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1694
    :goto_0
    return-void

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    const-string/jumbo v0, "p2p disable by Wfd!!!"

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 1668
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    .line 1669
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v0, v2}, Lcom/samsung/wfd/WfdService;->access$3302(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1682
    :goto_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v0, v3}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 1683
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V
    invoke-static {v0, v3}, Lcom/samsung/wfd/WfdService;->access$4900(Lcom/samsung/wfd/WfdService;I)V

    .line 1688
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v0, v2}, Lcom/samsung/wfd/WfdService;->access$2002(Lcom/samsung/wfd/WfdService;I)I

    .line 1689
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v0, v2}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WFD] done!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    :cond_1
    const-string/jumbo v0, "now we should turn off wifip2p even though turned on by wifip2pservice!!!"

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1676
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1679
    :cond_2
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v0, v2}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    goto :goto_1
.end method


# virtual methods
.method public sendWfdPickerStartBroadCast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1804
    const-string/jumbo v1, "sendWfdPickerStartBroadCast"

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 1807
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1810
    const-string/jumbo v1, "state"

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1812
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4000(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1813
    const-string v1, "cause"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1814
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$4002(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1815
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1816
    const-string/jumbo v1, "putExtra >> cause::restart by ongoing"

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 1823
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1824
    return-void

    .line 1817
    :cond_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1818
    const-string v1, "cause"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1819
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1820
    const-string/jumbo v1, "putExtra >> cause::restart by AP connected"

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncGetWfdState()I
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
