.class Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/net/wifi/WifiStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v3, "linkProperties"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v3, "linkCapabilities"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v4, Landroid/net/LinkCapabilities;

    invoke-direct {v4}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .local v1, state:Landroid/net/NetworkInfo$State;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_3

    const-string v3, "WifiStateTracker"

    const-string v4, "Set NetworkInfo=DISCONNECTED"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .local v2, tempNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/net/NetworkInfo;

    invoke-direct {v4, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    .end local v2           #tempNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-eq v3, v1, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v3, "linkProperties"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method