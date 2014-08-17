.class Lcom/android/server/usb/UsbDetectingManager$1;
.super Landroid/os/UEventObserver;
.source "UsbDetectingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDetectingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDetectingManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDetectingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/usb/UsbDetectingManager$1;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 243
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB DETECTING UEVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v5, "SWITCH_NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, switchName:Ljava/lang/String;
    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, switchState:Ljava/lang/String;
    const/4 v2, 0x0

    .line 250
    .local v2, state:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 260
    :goto_0
    const-string v5, "host_driver_install_noti"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-lez v2, :cond_0

    .line 263
    iget-object v5, p0, Lcom/android/server/usb/UsbDetectingManager$1;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mBootCompleted:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbDetectingManager;->access$500(Lcom/android/server/usb/UsbDetectingManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    iget-object v5, p0, Lcom/android/server/usb/UsbDetectingManager$1;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDetectingManager;->access$000(Lcom/android/server/usb/UsbDetectingManager;)Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 265
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/usb/UsbDetectingManager$1;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDetectingManager;->access$000(Lcom/android/server/usb/UsbDetectingManager;)Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 266
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUEventDetectingObserver :: failed to send message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse state or devPath from event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/android/server/usb/UsbDetectingManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ArrayIndexOutOfBoundsException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    iget-object v5, p0, Lcom/android/server/usb/UsbDetectingManager$1;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #setter for: Lcom/android/server/usb/UsbDetectingManager;->mBootStartActivity:Z
    invoke-static {v5, v8}, Lcom/android/server/usb/UsbDetectingManager;->access$1302(Lcom/android/server/usb/UsbDetectingManager;Z)Z

    goto :goto_1
.end method
