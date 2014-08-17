.class Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 166
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 168
    :pswitch_0
    monitor-enter p0

    .line 169
    :try_start_0
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dock state changed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mSmartDockState: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/DockObserver;->mSmartDockState:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 173
    .local v3, cr:Landroid/content/ContentResolver;
    const-string v14, "device_provisioned"

    const/4 v15, 0x0

    invoke-static {v3, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v14

    const/16 v15, 0x9

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v14

    const/16 v15, 0x9

    if-eq v14, v15, :cond_0

    .line 176
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Device not provisioned, skipping dock broadcast"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit p0

    goto :goto_0

    .line 274
    .end local v3           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 181
    .restart local v3       #cr:Landroid/content/ContentResolver;
    :cond_0
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v5, intent:Landroid/content/Intent;
    const/high16 v14, 0x2000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    const-string v14, "android.intent.extra.DOCK_STATE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v15}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v15

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v14, "android.intent.extra.SMART_DOCK_STATE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mSmartDockState:I
    invoke-static {v15}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v15

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-static {}, Landroid/server/BluetoothService;->readDockBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 189
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    :cond_1
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->IsShutDownStarted()Z

    move-result v14

    if-nez v14, :cond_5

    .line 197
    const-string v14, "dock_sounds_enabled"

    const/4 v15, 0x1

    invoke-static {v3, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    .line 200
    const/4 v13, 0x0

    .line 201
    .local v13, whichSound:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v14

    if-nez v14, :cond_7

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v14

    const/16 v15, 0x9

    if-ne v14, v15, :cond_6

    .line 206
    :cond_2
    const-string v13, "desk_undock_sound"

    .line 222
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "audio"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 223
    .local v2, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    .line 225
    .local v9, ringerMode:I
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "whichSound is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-eqz v13, :cond_4

    .line 228
    const/4 v14, 0x1

    if-ne v9, v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v14

    const/16 v15, 0x9

    if-ne v14, v15, :cond_a

    .line 230
    new-instance v12, Landroid/os/Vibrator;

    invoke-direct {v12}, Landroid/os/Vibrator;-><init>()V

    .line 231
    .local v12, vibrator:Landroid/os/Vibrator;
    const-wide/16 v14, 0x3e8

    invoke-virtual {v12, v14, v15}, Landroid/os/Vibrator;->vibrate(J)V

    .line 272
    .end local v2           #audioManager:Landroid/media/AudioManager;
    .end local v9           #ringerMode:I
    .end local v12           #vibrator:Landroid/os/Vibrator;
    .end local v13           #whichSound:Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 274
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    .line 207
    .restart local v13       #whichSound:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 208
    const-string v13, "car_undock_sound"

    goto :goto_1

    .line 211
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v14

    const/16 v15, 0x9

    if-ne v14, v15, :cond_9

    .line 215
    :cond_8
    const-string v13, "desk_dock_sound"

    goto/16 :goto_1

    .line 216
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 217
    const-string v13, "car_dock_sound"

    goto/16 :goto_1

    .line 233
    .restart local v2       #audioManager:Landroid/media/AudioManager;
    .restart local v9       #ringerMode:I
    :cond_a
    invoke-static {v3, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, soundPath:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "soundPath is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz v10, :cond_4

    .line 236
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 237
    .local v11, soundUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "soundUri is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz v11, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v11}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v15

    #setter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v14, v15}, Lcom/android/server/DockObserver;->access$502(Lcom/android/server/DockObserver;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Landroid/media/Ringtone;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 244
    const-string v14, "audioParam;outDevice"

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 246
    .local v6, isHDMI:Z
    if-eqz v8, :cond_b

    const-string v14, ""

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 251
    :cond_b
    :goto_3
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 252
    .local v7, masterStreamVolume:I
    int-to-float v14, v7

    const/high16 v15, 0x40e0

    div-float/2addr v14, v15

    const v15, 0x3e99999a

    mul-float v4, v14, v15

    .line 254
    .local v4, dockSoundVolume:F
    if-eqz v7, :cond_c

    const/4 v14, 0x2

    if-eq v9, v14, :cond_f

    .line 255
    :cond_c
    monitor-exit p0

    goto/16 :goto_0

    .line 248
    .end local v4           #dockSoundVolume:F
    .end local v7           #masterStreamVolume:I
    :cond_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    and-int/lit16 v14, v14, 0x400

    if-nez v14, :cond_e

    const/4 v6, 0x0

    :goto_4
    goto :goto_3

    :cond_e
    const/4 v6, 0x1

    goto :goto_4

    .line 257
    .restart local v4       #dockSoundVolume:F
    .restart local v7       #masterStreamVolume:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Landroid/media/Ringtone;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Landroid/media/Ringtone;

    move-result-object v14

    invoke-virtual {v14, v4, v4}, Landroid/media/Ringtone;->setVolume(FF)V

    .line 259
    if-nez v6, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v14}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Landroid/media/Ringtone;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_2

    .line 269
    .end local v2           #audioManager:Landroid/media/AudioManager;
    .end local v4           #dockSoundVolume:F
    .end local v6           #isHDMI:Z
    .end local v7           #masterStreamVolume:I
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #ringerMode:I
    .end local v10           #soundPath:Ljava/lang/String;
    .end local v11           #soundUri:Landroid/net/Uri;
    .end local v13           #whichSound:Ljava/lang/String;
    :cond_10
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DOCK_SOUNDS_ENALBED is not"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
