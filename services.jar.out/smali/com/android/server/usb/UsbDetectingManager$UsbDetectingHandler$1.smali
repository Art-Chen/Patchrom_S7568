.class Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDetectingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler$1;->this$1:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler$1;->this$1:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    iget-object v0, v0, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->this$0:Lcom/android/server/usb/UsbDetectingManager;

    #getter for: Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbDetectingManager;->access$000(Lcom/android/server/usb/UsbDetectingManager;)Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->sendEmptyMessage(I)Z

    .line 111
    return-void
.end method
