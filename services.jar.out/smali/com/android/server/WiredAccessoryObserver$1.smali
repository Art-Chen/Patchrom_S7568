.class Lcom/android/server/WiredAccessoryObserver$1;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryObserver;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 151
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USB AUDIO UEVENT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v10, "ACTION"

    invoke-virtual {p1, v10}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, action:Ljava/lang/String;
    const-string v10, "DEVPATH"

    invoke-virtual {p1, v10}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, devpath:Ljava/lang/String;
    const-string v10, "MAJOR"

    invoke-virtual {p1, v10}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, major:Ljava/lang/String;
    const-string v10, "MINOR"

    invoke-virtual {p1, v10}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, minor:Ljava/lang/String;
    const-string v10, "DEVNAME"

    invoke-virtual {p1, v10}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, devname:Ljava/lang/String;
    const-string v1, "1"

    .line 159
    .local v1, cardNumber:Ljava/lang/String;
    const-string v3, "0"

    .line 160
    .local v3, deviceNumber:Ljava/lang/String;
    const-string v2, "1"

    .line 161
    .local v2, channels:Ljava/lang/String;
    const/4 v8, 0x0

    .line 162
    .local v8, state:I
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onUEvent(device) :: action = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", MAJOR = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", MINOR = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", DEVPATH = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DEVPATH = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "devname = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v9, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;

    iget-object v10, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V

    .line 167
    .local v9, usbAudioData:Lcom/android/server/WiredAccessoryObserver$UsbAudioData;
    const-string v10, "116"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 168
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 169
    const-string v10, "usb"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 171
    const-string v10, "p"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 172
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " cardNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " deviceNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v10, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    #calls: Lcom/android/server/WiredAccessoryObserver;->getChannel(Ljava/lang/String;)I
    invoke-static {v10, v1}, Lcom/android/server/WiredAccessoryObserver;->access$500(Lcom/android/server/WiredAccessoryObserver;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " channels = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v10, "add"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 179
    const/4 v8, 0x1

    .line 184
    :goto_0
    if-nez v8, :cond_0

    .line 185
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "check smart dock"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v10, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-virtual {v10}, Lcom/android/server/WiredAccessoryObserver;->isRemoveSmartDock()V

    .line 189
    :cond_0
    invoke-virtual {v9, v8, v2, v1, v3}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v10, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    #calls: Lcom/android/server/WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    invoke-static {v10, v9}, Lcom/android/server/WiredAccessoryObserver;->access$600(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V

    .line 196
    :cond_1
    :goto_1
    return-void

    .line 181
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 193
    :cond_3
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Smartdock connected!! no any action during smart dock"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
