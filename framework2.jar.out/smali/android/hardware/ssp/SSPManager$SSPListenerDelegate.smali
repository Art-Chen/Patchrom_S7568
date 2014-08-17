.class Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;
.super Landroid/hardware/ssp/ISSPCallback$Stub;
.source "SSPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSPListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/ssp/SSPListener;

.field final synthetic this$0:Landroid/hardware/ssp/SSPManager;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/SSPManager;Landroid/hardware/ssp/SSPListener;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 616
    iput-object p1, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->this$0:Landroid/hardware/ssp/SSPManager;

    invoke-direct {p0}, Landroid/hardware/ssp/ISSPCallback$Stub;-><init>()V

    .line 617
    iput-object p2, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->mListener:Landroid/hardware/ssp/SSPListener;

    .line 619
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 622
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate$1;-><init>(Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;Landroid/os/Looper;Landroid/hardware/ssp/SSPManager;)V

    iput-object v1, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 633
    return-void

    .line 619
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    #getter for: Landroid/hardware/ssp/SSPManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/hardware/ssp/SSPManager;->access$000(Landroid/hardware/ssp/SSPManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;)Landroid/hardware/ssp/SSPListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 600
    iget-object v0, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->mListener:Landroid/hardware/ssp/SSPListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Landroid/hardware/ssp/SSPListener;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->mListener:Landroid/hardware/ssp/SSPListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->mListener:Landroid/hardware/ssp/SSPListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sspCallback(Landroid/hardware/ssp/SSPEvent;)V
    .locals 2
    .parameter "sspEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 654
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 655
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    iget-object v1, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void
.end method
