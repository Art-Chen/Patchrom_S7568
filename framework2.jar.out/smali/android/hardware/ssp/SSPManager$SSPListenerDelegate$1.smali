.class Landroid/hardware/ssp/SSPManager$SSPListenerDelegate$1;
.super Landroid/os/Handler;
.source "SSPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;-><init>(Landroid/hardware/ssp/SSPManager;Landroid/hardware/ssp/SSPListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/ssp/SSPManager;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;Landroid/os/Looper;Landroid/hardware/ssp/SSPManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate$1;->this$1:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

    iput-object p3, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate$1;->val$this$0:Landroid/hardware/ssp/SSPManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 626
    iget-object v1, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate$1;->this$1:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

    #getter for: Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->mListener:Landroid/hardware/ssp/SSPListener;
    invoke-static {v1}, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->access$100(Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;)Landroid/hardware/ssp/SSPListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 627
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/ssp/SSPEvent;

    .line 628
    .local v0, sspEvent:Landroid/hardware/ssp/SSPEvent;
    iget-object v1, p0, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate$1;->this$1:Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;

    #getter for: Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->mListener:Landroid/hardware/ssp/SSPListener;
    invoke-static {v1}, Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;->access$100(Landroid/hardware/ssp/SSPManager$SSPListenerDelegate;)Landroid/hardware/ssp/SSPListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/ssp/SSPListener;->onContextChanged(Landroid/hardware/ssp/SSPEvent;)V

    .line 630
    .end local v0           #sspEvent:Landroid/hardware/ssp/SSPEvent;
    :cond_0
    return-void
.end method
