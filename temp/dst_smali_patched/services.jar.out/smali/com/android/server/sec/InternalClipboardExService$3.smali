.class Lcom/android/server/sec/InternalClipboardExService$3;
.super Landroid/os/Handler;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "handler msg : default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0, v1}, Lcom/android/server/sec/InternalClipboardExService;->access$402(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0, v1}, Lcom/android/server/sec/InternalClipboardExService;->access$402(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    goto :goto_0

    :cond_4
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ClipboardServiceEx"

    const-string v1, "mCBPickerDialog enter case. MSG_DISMISS_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
