.class Lcom/android/server/sec/MultiWindowManagerService$3;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/MultiWindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService$3;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2079
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2090
    :goto_0
    return-void

    .line 2083
    :pswitch_0
    new-instance v0, Landroid/sec/mwdialog/MWSplitDialog;

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService$3;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sec/MultiWindowManagerService;->access$400(Lcom/android/server/sec/MultiWindowManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/sec/mwdialog/MWSplitDialog;-><init>(Landroid/content/Context;)V

    .line 2085
    .local v0, guideDialog:Landroid/sec/mwdialog/MWSplitDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWSplitDialog;->show()V

    goto :goto_0

    .line 2079
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
