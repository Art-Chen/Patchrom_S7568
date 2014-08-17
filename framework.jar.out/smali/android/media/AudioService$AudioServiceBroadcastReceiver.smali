.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3232
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3232
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 51
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3235
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 3237
    .local v12, action:Ljava/lang/String;
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3238
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 3241
    .local v31, dockState:I
    packed-switch v31, :pswitch_data_0

    .line 3256
    const/16 v24, 0x0

    .line 3258
    .local v24, config:I
    :goto_0
    const/4 v4, 0x3

    move/from16 v0, v24

    invoke-static {v4, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3751
    .end local v24           #config:I
    .end local v31           #dockState:I
    :cond_0
    :goto_1
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 3752
    const-string v4, "audioParam;curDevice"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3753
    .local v35, isMusicHPH:Ljava/lang/String;
    const/16 v45, 0x0

    .local v45, spkIndex:I
    const/16 v32, 0x0

    .line 3754
    .local v32, hphIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v5}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)[I

    move-result-object v5

    const/4 v6, 0x3

    aget v5, v5, v6

    aget-object v48, v4, v5

    .line 3755
    .local v48, streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v5}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)[I

    move-result-object v5

    const/16 v6, 0xd

    aget v5, v5, v6

    aget-object v47, v4, v5

    .line 3756
    .local v47, streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v48 .. v48}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    if-eqz v4, :cond_3f

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v48 .. v48}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v45

    .line 3757
    :goto_2
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v47 .. v47}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    if-eqz v4, :cond_40

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v47 .. v47}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v32

    .line 3759
    :goto_3
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3760
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3761
    .local v46, state:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->isMediaSilentMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3762
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_41

    .line 3763
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plug EAPHONE  mMediaSilentMode SPK volume"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v6}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v6}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioService;->setStreamVolumeForce(III)V

    .line 3770
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$7502(Landroid/media/AudioService;I)I

    .line 3771
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$7602(Landroid/media/AudioService;I)I

    .line 3772
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mMediaSilentMode:Z
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$7702(Landroid/media/AudioService;Z)Z

    .line 3777
    .end local v46           #state:I
    :cond_1
    const-string v4, "HPH"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 3778
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    const/16 v6, 0x40

    move/from16 v0, v45

    move/from16 v1, v32

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v4, v5, v0, v1, v6}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;IIII)V

    .line 3779
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0x9

    const/16 v6, 0x40

    move/from16 v0, v45

    move/from16 v1, v32

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v4, v5, v0, v1, v6}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;IIII)V

    .line 3784
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3785
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0xa

    const/16 v6, 0x40

    move/from16 v0, v32

    move/from16 v1, v45

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v4, v5, v0, v1, v6}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;IIII)V

    .line 3790
    .end local v32           #hphIndex:I
    .end local v35           #isMusicHPH:Ljava/lang/String;
    .end local v45           #spkIndex:I
    .end local v47           #streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    .end local v48           #streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    :cond_2
    :goto_6
    return-void

    .line 3243
    .restart local v31       #dockState:I
    :pswitch_0
    const/16 v24, 0x7

    .line 3244
    .restart local v24       #config:I
    goto/16 :goto_0

    .line 3246
    .end local v24           #config:I
    :pswitch_1
    const/16 v24, 0x6

    .line 3247
    .restart local v24       #config:I
    goto/16 :goto_0

    .line 3249
    .end local v24           #config:I
    :pswitch_2
    const/16 v24, 0x8

    .line 3250
    .restart local v24       #config:I
    goto/16 :goto_0

    .line 3252
    .end local v24           #config:I
    :pswitch_3
    const/16 v24, 0x9

    .line 3253
    .restart local v24       #config:I
    goto/16 :goto_0

    .line 3259
    .end local v24           #config:I
    .end local v31           #dockState:I
    :cond_3
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3260
    const-string v4, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3262
    .restart local v46       #state:I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 3264
    .local v18, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v18

    move/from16 v1, v46

    #calls: Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v4, v0, v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_1

    .line 3265
    .end local v18           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v46           #state:I
    :cond_4
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3266
    const-string v4, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3268
    .restart local v46       #state:I
    const/16 v28, 0x10

    .line 3269
    .local v28, device:I
    const/4 v14, 0x0

    .line 3271
    .local v14, address:Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    .line 3272
    .restart local v18       #btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v18, :cond_2

    .line 3276
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 3277
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    .line 3278
    .local v17, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v17, :cond_5

    .line 3279
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 3290
    :cond_5
    :goto_7
    invoke-static {v14}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3291
    const-string v14, ""

    .line 3294
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 3295
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v34, 0x1

    .line 3298
    .local v34, isConnected:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3299
    if-eqz v34, :cond_9

    const/4 v4, 0x2

    move/from16 v0, v46

    if-eq v0, v4, :cond_9

    .line 3300
    const/4 v4, 0x0

    :try_start_1
    move/from16 v0, v28

    invoke-static {v0, v4, v14}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3303
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3304
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v7, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v7}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3305
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v4}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)V

    .line 3313
    :cond_7
    :goto_9
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3314
    :try_start_2
    monitor-exit v5

    goto/16 :goto_1

    .end local v34           #isConnected:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3282
    :sswitch_0
    const/16 v28, 0x20

    .line 3283
    goto :goto_7

    .line 3285
    :sswitch_1
    const/16 v28, 0x40

    goto :goto_7

    .line 3295
    :cond_8
    const/16 v34, 0x0

    goto :goto_8

    .line 3306
    .restart local v34       #isConnected:Z
    :cond_9
    if-nez v34, :cond_7

    const/4 v4, 0x2

    move/from16 v0, v46

    if-ne v0, v4, :cond_7

    .line 3307
    const/4 v4, 0x1

    :try_start_3
    move/from16 v0, v28

    invoke-static {v0, v4, v14}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3310
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3311
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v18

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v0}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_9

    .line 3313
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3315
    .end local v14           #address:Ljava/lang/String;
    .end local v17           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v18           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v28           #device:I
    .end local v34           #isConnected:Z
    .end local v46           #state:I
    :cond_a
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3316
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 3317
    :try_start_5
    const-string/jumbo v4, "state"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3318
    .restart local v46       #state:I
    const-string/jumbo v4, "microphone"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 3320
    .local v36, microphone:I
    new-instance v33, Landroid/content/Intent;

    const-string v4, "com.sec.android.contextaware.HEADSET_PLUG"

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3321
    .local v33, intentForCA:Landroid/content/Intent;
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 3322
    const/16 v4, 0x20

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3323
    const-string v4, "AudioService"

    const-string/jumbo v6, "send broadcast HEADSET_PLUG to CA "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3328
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3329
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3331
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v38

    .line 3332
    .local v38, musicLev:I
    const/16 v26, 0x9

    .line 3333
    .local v26, defaultMusicLev:I
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_b

    .line 3334
    move/from16 v0, v38

    move/from16 v1, v26

    if-le v0, v1, :cond_b

    .line 3335
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v6, 0xd

    const/16 v7, 0x40

    move/from16 v0, v26

    invoke-virtual {v4, v6, v0, v7}, Landroid/media/AudioService;->setStreamVolume(III)V

    .line 3336
    const-string v4, "AudioService"

    const-string v6, "HEADSET PLUG IN : set default volume "

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    .end local v26           #defaultMusicLev:I
    .end local v38           #musicLev:I
    :cond_b
    if-eqz v36, :cond_e

    .line 3343
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3346
    .restart local v34       #isConnected:Z
    if-nez v46, :cond_d

    if-eqz v34, :cond_d

    .line 3347
    const/4 v4, 0x4

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3350
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3374
    :cond_c
    :goto_a
    monitor-exit v5

    goto/16 :goto_1

    .end local v33           #intentForCA:Landroid/content/Intent;
    .end local v34           #isConnected:Z
    .end local v36           #microphone:I
    .end local v46           #state:I
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 3351
    .restart local v33       #intentForCA:Landroid/content/Intent;
    .restart local v34       #isConnected:Z
    .restart local v36       #microphone:I
    .restart local v46       #state:I
    :cond_d
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_c

    if-nez v34, :cond_c

    .line 3352
    const/4 v4, 0x4

    const/4 v6, 0x1

    :try_start_6
    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3355
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 3359
    .end local v34           #isConnected:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3361
    .restart local v34       #isConnected:Z
    if-nez v46, :cond_f

    if-eqz v34, :cond_f

    .line 3362
    const/16 v4, 0x8

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3365
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 3366
    :cond_f
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_c

    if-nez v34, :cond_c

    .line 3367
    const/16 v4, 0x8

    const/4 v6, 0x1

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3370
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x8

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_a

    .line 3375
    .end local v33           #intentForCA:Landroid/content/Intent;
    .end local v34           #isConnected:Z
    .end local v36           #microphone:I
    .end local v46           #state:I
    :cond_10
    const-string v4, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3376
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3377
    .restart local v46       #state:I
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast Receiver: Got ACTION_USB_ANLG_HEADSET_PLUG, state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 3379
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3381
    .restart local v34       #isConnected:Z
    if-nez v46, :cond_12

    if-eqz v34, :cond_12

    .line 3382
    const/16 v4, 0x800

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3386
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3395
    :cond_11
    :goto_b
    monitor-exit v5

    goto/16 :goto_1

    .end local v34           #isConnected:Z
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4

    .line 3387
    .restart local v34       #isConnected:Z
    :cond_12
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_11

    if-nez v34, :cond_11

    .line 3388
    const/16 v4, 0x800

    const/4 v6, 0x1

    :try_start_8
    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3392
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x800

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_b

    .line 3396
    .end local v34           #isConnected:Z
    .end local v46           #state:I
    :cond_13
    const-string v4, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3397
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3398
    .restart local v46       #state:I
    const-string v4, "channels"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 3399
    .local v22, channels:I
    const-string v4, "delay"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 3400
    .local v27, delay:I
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast Receiver: Got ACTION_HDMI_AUDIO_PLUG, state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "channels = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " delay = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 3402
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3404
    .restart local v34       #isConnected:Z
    if-nez v46, :cond_15

    if-eqz v34, :cond_15

    .line 3407
    const/16 v4, 0x400

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3410
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3417
    :cond_14
    :goto_c
    monitor-exit v5

    goto/16 :goto_1

    .end local v34           #isConnected:Z
    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v4

    .line 3411
    .restart local v34       #isConnected:Z
    :cond_15
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_14

    if-nez v34, :cond_14

    .line 3412
    const/16 v4, 0x400

    const/4 v6, 0x1

    :try_start_a
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3415
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_c

    .line 3418
    .end local v22           #channels:I
    .end local v27           #delay:I
    .end local v34           #isConnected:Z
    .end local v46           #state:I
    :cond_16
    const-string v4, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 3419
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3420
    .restart local v46       #state:I
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast Receiver: Got ACTION_USB_DGTL_HEADSET_PLUG, state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 3422
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x1000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3424
    .restart local v34       #isConnected:Z
    if-nez v46, :cond_18

    if-eqz v34, :cond_18

    .line 3425
    const/16 v4, 0x1000

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3429
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x1000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    :cond_17
    :goto_d
    monitor-exit v5

    goto/16 :goto_1

    .end local v34           #isConnected:Z
    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v4

    .line 3430
    .restart local v34       #isConnected:Z
    :cond_18
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_17

    if-nez v34, :cond_17

    .line 3431
    const/16 v4, 0x1000

    const/4 v6, 0x1

    :try_start_c
    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3435
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1000

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_d

    .line 3439
    .end local v34           #isConnected:Z
    .end local v46           #state:I
    :cond_19
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3440
    const/16 v16, 0x0

    .line 3441
    .local v16, broadcast:Z
    const/16 v46, -0x1

    .line 3442
    .restart local v46       #state:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 3443
    :try_start_d
    const-string v4, "android.bluetooth.profile.extra.STATE"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 3445
    .local v19, btState:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_1b

    .line 3449
    :cond_1a
    const/16 v16, 0x1

    .line 3451
    :cond_1b
    packed-switch v19, :pswitch_data_1

    .line 3473
    :cond_1c
    :goto_e
    const/16 v16, 0x0

    .line 3476
    :cond_1d
    :goto_f
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 3477
    if-eqz v16, :cond_0

    .line 3478
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v46

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v4, v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;I)V

    .line 3481
    new-instance v40, Landroid/content/Intent;

    const-string v4, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3482
    .local v40, newIntent:Landroid/content/Intent;
    const-string v4, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3483
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3453
    .end local v40           #newIntent:Landroid/content/Intent;
    :pswitch_4
    const/16 v46, 0x1

    .line 3454
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1d

    .line 3457
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v6, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4, v6}, Landroid/media/AudioService;->access$2302(Landroid/media/AudioService;I)I

    goto :goto_f

    .line 3476
    .end local v19           #btState:I
    :catchall_6
    move-exception v4

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v4

    .line 3461
    .restart local v19       #btState:I
    :pswitch_5
    const/16 v46, 0x0

    .line 3462
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v6, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4, v6}, Landroid/media/AudioService;->access$2302(Landroid/media/AudioService;I)I

    .line 3463
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_f

    .line 3466
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1c

    .line 3469
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v6, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v4, v6}, Landroid/media/AudioService;->access$2302(Landroid/media/AudioService;I)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/16 :goto_e

    .line 3485
    .end local v16           #broadcast:Z
    .end local v19           #btState:I
    .end local v46           #state:I
    :cond_1e
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3486
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$6602(Landroid/media/AudioService;Z)Z

    .line 3488
    const-string v4, "audio.country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 3489
    .local v42, salescode:Ljava/lang/String;
    if-nez v42, :cond_22

    .line 3490
    const-string v4, "AudioService"

    const-string v5, "can not get salescode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$6502(Landroid/media/AudioService;Z)Z

    .line 3499
    :cond_1f
    :goto_10
    const-string/jumbo v4, "ril.simtype"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 3501
    .local v43, simtype:Ljava/lang/String;
    const-string v4, "2"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3502
    const-string/jumbo v4, "simtype=kt"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3507
    :cond_20
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v4}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0x9

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v4 .. v11}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 3510
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v5, v4}, Landroid/media/AudioService;->access$6702(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 3512
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$6802(Landroid/media/AudioService;I)I

    .line 3513
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v4}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)V

    .line 3514
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v4}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Z

    .line 3517
    new-instance v40, Landroid/content/Intent;

    const-string v4, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3518
    .restart local v40       #newIntent:Landroid/content/Intent;
    const-string v4, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3520
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3522
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v13

    .line 3523
    .local v13, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v13, :cond_21

    .line 3524
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v5}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v13, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 3529
    :cond_21
    const-string/jumbo v4, "ril_connected=1"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3494
    .end local v13           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v40           #newIntent:Landroid/content/Intent;
    .end local v43           #simtype:Ljava/lang/String;
    :cond_22
    const-string v4, "1"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3495
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$6502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_10

    .line 3503
    .restart local v43       #simtype:Ljava/lang/String;
    :cond_23
    const-string v4, "4"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3504
    const-string/jumbo v4, "simtype=skt"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3530
    .end local v42           #salescode:Ljava/lang/String;
    .end local v43           #simtype:Ljava/lang/String;
    :cond_24
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3531
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3533
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v41

    .line 3534
    .local v41, packageName:Ljava/lang/String;
    if-eqz v41, :cond_0

    .line 3535
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v41

    #calls: Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    invoke-static {v4, v0}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3538
    .end local v41           #packageName:Ljava/lang/String;
    :cond_25
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3539
    const-string/jumbo v4, "screen_state=on"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3540
    :cond_26
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3541
    const-string/jumbo v4, "screen_state=off"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3542
    :cond_27
    const-string v4, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3543
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3544
    .restart local v46       #state:I
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WiFi Display device state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3546
    .restart local v34       #isConnected:Z
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_28

    if-nez v34, :cond_28

    .line 3547
    const-string v4, "count"

    const/16 v5, 0x780

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    .line 3548
    .local v39, nBufCnt:I
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTERNAL_WIFI_CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wfdBufferCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3550
    const/16 v4, 0x4000

    const/4 v5, 0x1

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3553
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0x4000

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wfdBufferCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3554
    .end local v39           #nBufCnt:I
    :cond_28
    if-nez v46, :cond_0

    if-eqz v34, :cond_0

    .line 3555
    const/16 v4, 0x4000

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3558
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3562
    .end local v34           #isConnected:Z
    .end local v46           #state:I
    :cond_29
    const-string v4, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3564
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "preferred_tty_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 3578
    const-string/jumbo v49, "off"

    .line 3580
    .local v49, tty_mode:Ljava/lang/String;
    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tty_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3568
    .end local v49           #tty_mode:Ljava/lang/String;
    :pswitch_7
    const-string v49, "full"

    .line 3569
    .restart local v49       #tty_mode:Ljava/lang/String;
    goto :goto_12

    .line 3571
    .end local v49           #tty_mode:Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v49, "vco"

    .line 3572
    .restart local v49       #tty_mode:Ljava/lang/String;
    goto :goto_12

    .line 3574
    .end local v49           #tty_mode:Ljava/lang/String;
    :pswitch_9
    const-string v49, "hco"

    .line 3575
    .restart local v49       #tty_mode:Ljava/lang/String;
    goto :goto_12

    .line 3585
    .end local v49           #tty_mode:Ljava/lang/String;
    :cond_2a
    const-string v4, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3587
    const-string/jumbo v4, "mono"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 3588
    .local v37, monoMode:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v37

    #setter for: Landroid/media/AudioService;->mMonoMode:I
    invoke-static {v4, v0}, Landroid/media/AudioService;->access$5602(Landroid/media/AudioService;I)I

    .line 3589
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v37

    #calls: Landroid/media/AudioService;->setMonoMode(I)V
    invoke-static {v4, v0}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;I)V

    goto/16 :goto_1

    .line 3591
    .end local v37           #monoMode:I
    :cond_2b
    const-string v4, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string/jumbo v5, "mute"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Landroid/media/AudioService;->mAllSoundMute:I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$5802(Landroid/media/AudioService;I)I

    .line 3594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioParam;allsoundmute="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAllSoundMute:I
    invoke-static {v5}, Landroid/media/AudioService;->access$5800(Landroid/media/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3596
    :cond_2c
    const-string v4, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3597
    const-string v4, "CONNECTION_MODE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 3598
    .local v25, connectionMode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioParam;wfdFixedVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3599
    new-instance v50, Landroid/content/Intent;

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3600
    .local v50, volume_intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3604
    .end local v25           #connectionMode:I
    .end local v50           #volume_intent:Landroid/content/Intent;
    :cond_2d
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3605
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3606
    .restart local v46       #state:I
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x800

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3609
    .restart local v34       #isConnected:Z
    if-nez v46, :cond_2e

    if-eqz v34, :cond_2e

    .line 3610
    const/16 v4, 0x800

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3612
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x800

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3613
    :cond_2e
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_0

    if-nez v34, :cond_0

    .line 3614
    const/16 v4, 0x800

    const/4 v5, 0x1

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3616
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3620
    .end local v34           #isConnected:Z
    .end local v46           #state:I
    :cond_2f
    const-string v4, "com.sec.tms.audio.server"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3621
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3622
    .restart local v46       #state:I
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    const-string v4, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3624
    .local v15, app:Ljava/lang/String;
    if-eqz v15, :cond_34

    .line 3625
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    const-string/jumbo v4, "server"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 3627
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const v5, 0x8000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3628
    .restart local v34       #isConnected:Z
    const/4 v4, 0x2

    move/from16 v0, v46

    if-ne v0, v4, :cond_30

    if-eqz v34, :cond_30

    .line 3629
    const v4, 0x8000

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3631
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const v5, 0x8000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3632
    :cond_30
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_0

    if-nez v34, :cond_0

    .line 3633
    const v4, 0x8000

    const/4 v5, 0x1

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3635
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    const v6, 0x8000

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3637
    .end local v34           #isConnected:Z
    :cond_31
    const-string v4, "client"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3638
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/high16 v5, 0x1000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3639
    .restart local v34       #isConnected:Z
    const/4 v4, 0x2

    move/from16 v0, v46

    if-ne v0, v4, :cond_32

    if-eqz v34, :cond_32

    .line 3640
    const/high16 v4, 0x1000

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3642
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/high16 v5, 0x1000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3643
    :cond_32
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_0

    if-nez v34, :cond_0

    .line 3644
    const/high16 v4, 0x1000

    const/4 v5, 0x1

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3646
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    const/high16 v6, 0x1000

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3649
    .end local v34           #isConnected:Z
    :cond_33
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt app wrong : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3652
    :cond_34
    const-string v4, "AudioService"

    const-string/jumbo v5, "tms evt app is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3659
    .end local v15           #app:Ljava/lang/String;
    .end local v46           #state:I
    :cond_35
    const-string v4, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3660
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3661
    .restart local v46       #state:I
    const-string v4, "channels"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3662
    .local v22, channels:Ljava/lang/String;
    const-string v4, "cardnumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 3663
    .local v20, cardnumber:Ljava/lang/String;
    const-string v4, "devicenumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 3665
    .local v29, devicenumber:Ljava/lang/String;
    const-string/jumbo v4, "smartdock"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v44

    .line 3666
    .local v44, smartdock:Z
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTERNAL_USB_HEADSET_PLUG, channels = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,cardnumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", devicenumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", smartdock : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 3669
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x1000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    .line 3672
    .restart local v34       #isConnected:Z
    if-eqz v44, :cond_36

    .line 3673
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mExternalUsbInfo:Landroid/media/AudioService$UsbAudioData;
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/media/AudioService$UsbAudioData;

    move-result-object v4

    #getter for: Landroid/media/AudioService$UsbAudioData;->channels:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AudioService$UsbAudioData;->access$7200(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 3674
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mExternalUsbInfo:Landroid/media/AudioService$UsbAudioData;
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/media/AudioService$UsbAudioData;

    move-result-object v4

    #getter for: Landroid/media/AudioService$UsbAudioData;->channels:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AudioService$UsbAudioData;->access$7200(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;

    move-result-object v22

    .line 3680
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mExternalUsbInfo:Landroid/media/AudioService$UsbAudioData;
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/media/AudioService$UsbAudioData;

    move-result-object v4

    #getter for: Landroid/media/AudioService$UsbAudioData;->cardNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AudioService$UsbAudioData;->access$7300(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 3681
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mExternalUsbInfo:Landroid/media/AudioService$UsbAudioData;
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/media/AudioService$UsbAudioData;

    move-result-object v4

    #getter for: Landroid/media/AudioService$UsbAudioData;->cardNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AudioService$UsbAudioData;->access$7300(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;

    move-result-object v20

    .line 3687
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mExternalUsbInfo:Landroid/media/AudioService$UsbAudioData;
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/media/AudioService$UsbAudioData;

    move-result-object v4

    #getter for: Landroid/media/AudioService$UsbAudioData;->deviceNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AudioService$UsbAudioData;->access$7400(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 3688
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mExternalUsbInfo:Landroid/media/AudioService$UsbAudioData;
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/media/AudioService$UsbAudioData;

    move-result-object v4

    #getter for: Landroid/media/AudioService$UsbAudioData;->deviceNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AudioService$UsbAudioData;->access$7400(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;

    move-result-object v29

    .line 3696
    :cond_36
    :goto_15
    if-nez v46, :cond_3b

    if-eqz v34, :cond_3b

    .line 3697
    const/16 v4, 0x1000

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3701
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v6, 0x1000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3711
    :cond_37
    :goto_16
    monitor-exit v5

    goto/16 :goto_1

    .end local v34           #isConnected:Z
    :catchall_7
    move-exception v4

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v4

    .line 3676
    .restart local v34       #isConnected:Z
    :cond_38
    :try_start_11
    const-string v4, "AudioService"

    const-string v6, "EXTERNAL_USB_HEADSET_PLUG, get USB Info channels fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    new-instance v23, Ljava/lang/String;

    const-string v4, "2"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v22           #channels:Ljava/lang/String;
    .local v23, channels:Ljava/lang/String;
    move-object/from16 v22, v23

    .end local v23           #channels:Ljava/lang/String;
    .restart local v22       #channels:Ljava/lang/String;
    goto :goto_13

    .line 3683
    :cond_39
    const-string v4, "AudioService"

    const-string v6, "EXTERNAL_USB_HEADSET_PLUG, get USB Info cardNumber fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    new-instance v21, Ljava/lang/String;

    const-string v4, "1"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v20           #cardnumber:Ljava/lang/String;
    .local v21, cardnumber:Ljava/lang/String;
    move-object/from16 v20, v21

    .end local v21           #cardnumber:Ljava/lang/String;
    .restart local v20       #cardnumber:Ljava/lang/String;
    goto :goto_14

    .line 3690
    :cond_3a
    const-string v4, "AudioService"

    const-string v6, "EXTERNAL_USB_HEADSET_PLUG, get USB Info deviceNumber fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    new-instance v30, Ljava/lang/String;

    const-string v4, "1"

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v29           #devicenumber:Ljava/lang/String;
    .local v30, devicenumber:Ljava/lang/String;
    move-object/from16 v29, v30

    .end local v30           #devicenumber:Ljava/lang/String;
    .restart local v29       #devicenumber:Ljava/lang/String;
    goto :goto_15

    .line 3702
    :cond_3b
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_37

    if-nez v34, :cond_37

    .line 3703
    const/16 v4, 0x1000

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3707
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1000

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto/16 :goto_16

    .line 3728
    .end local v20           #cardnumber:Ljava/lang/String;
    .end local v22           #channels:Ljava/lang/String;
    .end local v29           #devicenumber:Ljava/lang/String;
    .end local v34           #isConnected:Z
    .end local v44           #smartdock:Z
    .end local v46           #state:I
    :cond_3c
    const-string v4, "android.intent.action.EXTERNAL_USB_HEADSET_INFO"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3729
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 3730
    .restart local v46       #state:I
    const-string v4, "channels"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3731
    .restart local v22       #channels:Ljava/lang/String;
    const-string v4, "cardnumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 3732
    .restart local v20       #cardnumber:Ljava/lang/String;
    const-string v4, "devicenumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 3733
    .restart local v29       #devicenumber:Ljava/lang/String;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTERNAL_USB_HEADSET_INFO, channels = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cardnumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", devicenumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mExternalUsbInfo:Landroid/media/AudioService$UsbAudioData;
    invoke-static {v4}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Landroid/media/AudioService$UsbAudioData;

    move-result-object v4

    move/from16 v0, v46

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v29

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/media/AudioService$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3737
    .end local v20           #cardnumber:Ljava/lang/String;
    .end local v22           #channels:Ljava/lang/String;
    .end local v29           #devicenumber:Ljava/lang/String;
    .end local v46           #state:I
    :cond_3d
    const-string v4, "android.intent.action.EXTERNAL_CAR_CONNECTED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3739
    const-string v4, "android.intent.action.EXTERNAL_CAR_DISCONNECTED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3744
    const-string v4, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 3745
    const-string v4, "audioParam;factoryteststate=1"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3746
    :cond_3e
    const-string v4, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3747
    const-string v4, "audioParam;factoryteststate=0"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3756
    .restart local v32       #hphIndex:I
    .restart local v35       #isMusicHPH:Ljava/lang/String;
    .restart local v45       #spkIndex:I
    .restart local v47       #streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    .restart local v48       #streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    :cond_3f
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v48 .. v48}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v45

    goto/16 :goto_2

    .line 3757
    :cond_40
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v47 .. v47}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v32

    goto/16 :goto_3

    .line 3767
    .restart local v46       #state:I
    :cond_41
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plug SPEAKER  mMediaSilentMode EAR volume"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v6}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v6}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioService;->setStreamVolumeForce(III)V

    goto/16 :goto_4

    .line 3781
    .end local v46           #state:I
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    const/16 v6, 0x40

    move/from16 v0, v32

    move/from16 v1, v45

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v4, v5, v0, v1, v6}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;IIII)V

    .line 3782
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0x9

    const/16 v6, 0x40

    move/from16 v0, v32

    move/from16 v1, v45

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v4, v5, v0, v1, v6}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;IIII)V

    goto/16 :goto_5

    .line 3787
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0xa

    const/16 v6, 0x40

    move/from16 v0, v45

    move/from16 v1, v32

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v4, v5, v0, v1, v6}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;IIII)V

    goto/16 :goto_6

    .line 3241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3279
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 3451
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch

    .line 3564
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
