.class Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread$1;
.super Landroid/os/Handler;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1741
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1749
    :goto_0
    return-void

    .line 1743
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->onReceiveNetworkStats()V
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    goto :goto_0

    .line 1746
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->onReceiveNetworkConn()V
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;)V

    goto :goto_0

    .line 1741
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
