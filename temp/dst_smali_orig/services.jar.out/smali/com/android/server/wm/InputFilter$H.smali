.class final Lcom/android/server/wm/InputFilter$H;
.super Landroid/os/Handler;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputFilter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/InputFilter$Host;

    #setter for: Lcom/android/server/wm/InputFilter;->mHost:Lcom/android/server/wm/InputFilter$Host;
    invoke-static {v2, v1}, Lcom/android/server/wm/InputFilter;->access$002(Lcom/android/server/wm/InputFilter;Lcom/android/server/wm/InputFilter$Host;)Lcom/android/server/wm/InputFilter$Host;

    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    #getter for: Lcom/android/server/wm/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    #getter for: Lcom/android/server/wm/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    #getter for: Lcom/android/server/wm/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$200(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    #getter for: Lcom/android/server/wm/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$200(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-virtual {v1}, Lcom/android/server/wm/InputFilter;->onInstalled()V

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-virtual {v1}, Lcom/android/server/wm/InputFilter;->onUninstalled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    #setter for: Lcom/android/server/wm/InputFilter;->mHost:Lcom/android/server/wm/InputFilter$Host;
    invoke-static {v1, v3}, Lcom/android/server/wm/InputFilter;->access$002(Lcom/android/server/wm/InputFilter;Lcom/android/server/wm/InputFilter$Host;)Lcom/android/server/wm/InputFilter$Host;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    #setter for: Lcom/android/server/wm/InputFilter;->mHost:Lcom/android/server/wm/InputFilter$Host;
    invoke-static {v2, v3}, Lcom/android/server/wm/InputFilter;->access$002(Lcom/android/server/wm/InputFilter;Lcom/android/server/wm/InputFilter$Host;)Lcom/android/server/wm/InputFilter$Host;

    throw v1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .local v0, event:Landroid/view/InputEvent;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    #getter for: Lcom/android/server/wm/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    #getter for: Lcom/android/server/wm/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
