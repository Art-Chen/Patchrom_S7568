.class Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WFDSourceService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WFDSourceService;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, action:Ljava/lang/String;
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "intent recieved "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v18, "android.intent.action.WIFI_DISPLAY_REQ"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 335
    const-string v18, "Control"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 336
    .local v14, strSessionControl:Ljava/lang/String;
    if-eqz v14, :cond_1

    const-string/jumbo v18, "terminate"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 459
    .end local v14           #strSessionControl:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 340
    .restart local v14       #strSessionControl:Ljava/lang/String;
    :cond_1
    const-string/jumbo v18, "res"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 341
    .local v10, resolution:I
    const-string v18, "3D"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, str3d:Ljava/lang/String;
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Recvd resolution from app:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " 3d:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v6, 0x0

    .line 344
    .local v6, dim_mode:I
    if-eqz v13, :cond_2

    const-string v18, "Yes"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 345
    const/4 v6, 0x1

    .line 352
    :goto_1
    const/16 v17, 0x0

    .line 353
    .local v17, width:I
    const/4 v8, 0x0

    .line 355
    .local v8, height:I
    and-int/lit8 v18, v10, 0x1

    if-eqz v18, :cond_3

    .line 356
    const/16 v17, 0x280

    .line 357
    const/16 v8, 0x1e0

    .line 379
    :goto_2
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Choosing the width:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " height:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v8, v6}, Lcom/samsung/wfd/WFDNative;->changeParams(IIII)Z

    goto/16 :goto_0

    .line 347
    .end local v8           #height:I
    .end local v17           #width:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 358
    .restart local v8       #height:I
    .restart local v17       #width:I
    :cond_3
    and-int/lit8 v18, v10, 0x2

    if-eqz v18, :cond_4

    .line 359
    const/16 v17, 0x2d0

    .line 360
    const/16 v8, 0x1e0

    goto :goto_2

    .line 361
    :cond_4
    and-int/lit8 v18, v10, 0x4

    if-eqz v18, :cond_5

    .line 362
    const/16 v17, 0x2d0

    .line 363
    const/16 v8, 0x240

    goto :goto_2

    .line 364
    :cond_5
    and-int/lit8 v18, v10, 0x8

    if-eqz v18, :cond_6

    .line 365
    const/16 v17, 0x500

    .line 366
    const/16 v8, 0x2d0

    goto :goto_2

    .line 367
    :cond_6
    and-int/lit8 v18, v10, 0x10

    if-eqz v18, :cond_7

    .line 368
    const/16 v17, 0x780

    .line 369
    const/16 v8, 0x438

    goto :goto_2

    .line 370
    :cond_7
    and-int/lit8 v18, v10, 0x20

    if-eqz v18, :cond_8

    .line 371
    const/16 v17, 0x320

    .line 372
    const/16 v8, 0x258

    goto :goto_2

    .line 375
    :cond_8
    const/16 v17, 0x500

    .line 376
    const/16 v8, 0x2d0

    goto :goto_2

    .line 382
    .end local v6           #dim_mode:I
    .end local v8           #height:I
    .end local v10           #resolution:I
    .end local v13           #str3d:Ljava/lang/String;
    .end local v14           #strSessionControl:Ljava/lang/String;
    .end local v17           #width:I
    :cond_9
    const-string v18, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 383
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/samsung/wfd/WFDNative;->sendUpdateUserInput(I)Z

    goto/16 :goto_0

    .line 385
    :cond_a
    const-string v18, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 386
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/samsung/wfd/WFDNative;->sendUpdateUserInput(I)Z

    goto/16 :goto_0

    .line 388
    :cond_b
    const-string v18, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 389
    const-string v18, "WFDSourceService"

    const-string v19, "On Receive << ACTION_WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v15, 0x1

    .line 391
    .local v15, transportType:I
    const/16 v5, 0x12c

    .line 392
    .local v5, bufferLengthMs:I
    const/16 v9, 0x4a3a

    .line 393
    .local v9, port:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/wfd/WFDSourceService;->access$102(Lcom/samsung/wfd/WFDSourceService;I)I

    .line 395
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Calculted type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", bufferLengthMs: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", port: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(III)Z
    invoke-static {v0, v15, v5, v9}, Lcom/samsung/wfd/WFDSourceService;->access$200(Lcom/samsung/wfd/WFDSourceService;III)Z

    move-result v11

    .line 397
    .local v11, ret:Z
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setRtpTransport returned: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 398
    .end local v5           #bufferLengthMs:I
    .end local v9           #port:I
    .end local v11           #ret:Z
    .end local v15           #transportType:I
    :cond_c
    const-string v18, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 399
    const-string v18, "WFDSourceService"

    const-string v19, "On Receive << ACTION_WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v15, 0x0

    .line 401
    .restart local v15       #transportType:I
    const/4 v5, 0x0

    .line 402
    .restart local v5       #bufferLengthMs:I
    const/16 v9, 0x4a38

    .line 403
    .restart local v9       #port:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/wfd/WFDSourceService;->access$102(Lcom/samsung/wfd/WFDSourceService;I)I

    .line 404
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Calculted type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", bufferLengthMs: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", port: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(III)Z
    invoke-static {v0, v15, v5, v9}, Lcom/samsung/wfd/WFDSourceService;->access$200(Lcom/samsung/wfd/WFDSourceService;III)Z

    move-result v11

    .line 406
    .restart local v11       #ret:Z
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setRtpTransport returned: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 407
    .end local v5           #bufferLengthMs:I
    .end local v9           #port:I
    .end local v11           #ret:Z
    .end local v15           #transportType:I
    :cond_d
    const-string v18, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 409
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 410
    .local v4, audio_type:I
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 412
    .local v16, volume_value:I
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "audio_type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " volume_value:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v4, v0, :cond_0

    .line 415
    invoke-static/range {v16 .. v16}, Lcom/samsung/wfd/WFDNative;->sendStreamMusicVolume(I)Z

    goto/16 :goto_0

    .line 417
    .end local v4           #audio_type:I
    .end local v16           #volume_value:I
    :cond_e
    const-string v18, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 418
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "action << WIFIDISPLAY_HEADSET_PLUG, MODE : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v20, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/wfd/WFDSourceService;->access$100(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string/jumbo v18, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 420
    const-string/jumbo v18, "state"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_f

    .line 421
    const-string v18, "WFDSourceService"

    const-string v19, "headset out"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 423
    :cond_f
    const-string/jumbo v18, "state"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->access$100(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 424
    const-string v18, "WFDSourceService"

    const-string v19, "headset in"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->teardownForAudioOut()V

    goto/16 :goto_0

    .line 428
    :cond_10
    const-string v18, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 429
    const-string v18, "android.bluetooth.profile.extra.STATE"

    const/16 v19, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 430
    .local v12, state:I
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "action << WIFIDISPLAY_BLUETOOTH_HEADSET_ACTION, state : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "MODE : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v20, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/wfd/WFDSourceService;->access$100(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v12, v0, :cond_0

    .line 433
    :try_start_0
    const-string v18, "WFDSourceService"

    const-string v19, "Thead on"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-wide/16 v18, 0x7d0

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 435
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mAudioManager.isBluetoothA2dpOn() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v20, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v20 .. v20}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->access$100(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 437
    const-string v18, "WFDSourceService"

    const-string v19, "isBluetoothA2dpOn()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->teardownForAudioOut()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 440
    :catch_0
    move-exception v7

    .line 441
    .local v7, e:Ljava/lang/InterruptedException;
    const-string v18, "WFDSourceService"

    const-string v19, "Thread exception!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    .end local v7           #e:Ljava/lang/InterruptedException;
    .end local v12           #state:I
    :cond_11
    const-string v18, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    const-string v19, "CONNECTION_MODE"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    #setter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/wfd/WFDSourceService;->access$102(Lcom/samsung/wfd/WFDSourceService;I)I

    .line 446
    const-string v18, "WFDSourceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WIFIDISPLAY_NOTI_CONNECTION_MODE, mode : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v20, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/wfd/WFDSourceService;->access$100(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "isWiredHeadsetOn() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v20, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v20 .. v20}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "isBluetoothA2dpOn() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v20, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v20 .. v20}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->access$100(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v18

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 448
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/wfd/WFDSourceService;->teardownForAudioOut()V

    goto/16 :goto_0
.end method
