.class Landroid/widget/HoverPopupWindow$HoverPopupHandler;
.super Landroid/os/Handler;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverPopupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupHandler;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/widget/HoverPopupWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 993
    invoke-direct {p0, p1}, Landroid/widget/HoverPopupWindow$HoverPopupHandler;-><init>(Landroid/widget/HoverPopupWindow;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 999
    const-string v1, "HoverPopupwindow"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "SHOW"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1010
    :goto_1
    return-void

    .line 999
    :cond_0
    const-string v0, "DISMISS"

    goto :goto_0

    .line 1003
    :pswitch_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupHandler;->this$0:Landroid/widget/HoverPopupWindow;

    #calls: Landroid/widget/HoverPopupWindow;->showPopup()V
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$100(Landroid/widget/HoverPopupWindow;)V

    .line 1004
    const/4 v0, 0x2

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1007
    :pswitch_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupHandler;->this$0:Landroid/widget/HoverPopupWindow;

    #calls: Landroid/widget/HoverPopupWindow;->dismissPopup()V
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$200(Landroid/widget/HoverPopupWindow;)V

    goto :goto_1

    .line 1001
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
