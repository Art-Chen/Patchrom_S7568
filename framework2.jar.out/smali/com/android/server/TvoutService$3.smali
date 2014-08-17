.class Lcom/android/server/TvoutService$3;
.super Landroid/content/BroadcastReceiver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 305
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, action:Ljava/lang/String;
    const-string v6, "TvoutService_Java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TvoutService Action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v6, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 312
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 315
    .local v4, bStatus:Z
    const-string v6, "TvoutService_Java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TvoutService HDMI : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 319
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 320
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 321
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 323
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6}, Lcom/android/server/TvoutService;->TvoutTeminateWFD()Z

    .line 324
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 325
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 326
    .local v5, msg:Landroid/os/Message;
    const-string v6, "HDMI connected. AllShare Cast turned off"

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 487
    .end local v4           #bStatus:Z
    .end local v5           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    const-string v6, "TvoutService_Java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMART_DOCK_CONNECT  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  HDMI_CONNECT = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    .line 490
    const-string v6, "TvoutService_Java"

    const-string v7, "Creating Smart Dock Surface !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    .line 500
    :cond_1
    :goto_1
    const-string v6, "persist.sys.camera.connect"

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void

    .line 331
    .restart local v4       #bStatus:Z
    :cond_2
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6, v4}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 332
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6, v4}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 333
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v6, v4}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 334
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 335
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    .line 336
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 337
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 339
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-string v7, "/sys/power/mali_lock"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 375
    :cond_3
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6}, Lcom/android/server/TvoutService;->TvoutGetCableStatus()Z

    move-result v2

    .line 376
    .local v2, bCableStatus:Z
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6, v4}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 377
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6, v4}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 378
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v6, v4}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 379
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 381
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-string v7, "/sys/power/mali_lock"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 383
    const-string v6, "persist.sys.camera.transform"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v6, "persist.sys.camera.connect"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 386
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 387
    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    .line 388
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    goto/16 :goto_0

    .line 391
    .end local v2           #bCableStatus:Z
    .end local v4           #bStatus:Z
    :cond_4
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 394
    const-string v6, "TvoutService_Java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Locale changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    goto/16 :goto_0

    .line 398
    :cond_5
    const-string v6, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 400
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v6

    if-eqz v6, :cond_8

    .line 401
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v7

    add-int/lit16 v7, v7, 0xb4

    rem-int/lit16 v7, v7, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$902(Lcom/android/server/TvoutService;I)I

    .line 402
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 403
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 404
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v7, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6, v7, v8}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 407
    :cond_6
    :goto_2
    const-string v6, "persist.sys.camera.transform"

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_3
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 413
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v7, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v6, v7, v8}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;J)J

    .line 414
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 415
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 405
    :cond_7
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 406
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v7, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6, v7, v8}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_2

    .line 410
    :cond_8
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_3

    .line 418
    :cond_9
    const-string v6, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 420
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    .line 421
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v7

    add-int/lit16 v7, v7, 0xb4

    rem-int/lit16 v7, v7, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$902(Lcom/android/server/TvoutService;I)I

    .line 422
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    .line 423
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 424
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v7, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6, v7, v8}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 427
    :cond_a
    :goto_4
    const-string v6, "persist.sys.camera.transform"

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_5
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 433
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 434
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 435
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v7, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v6, v7, v8}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 425
    :cond_b
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    .line 426
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v7, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6, v7, v8}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_4

    .line 430
    :cond_c
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto :goto_5

    .line 437
    :cond_d
    const-string v6, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 439
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 440
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 441
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 442
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v7, 0x0

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v6, v7, v8}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 444
    :cond_e
    const-string v6, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 446
    const-string v6, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 448
    .local v1, bAllShareCastConnectedFlag:Z
    if-eqz v1, :cond_f

    .line 449
    const-string v6, "TvoutService_Java"

    const-string v7, "AllShare Cast Connected !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 451
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 452
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 455
    :cond_f
    const-string v6, "TvoutService_Java"

    const-string v7, "AllShare Cast NOT Connected !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 457
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 458
    const-string v6, "persist.sys.camera.transform"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v6, "persist.sys.camera.connect"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 463
    .end local v1           #bAllShareCastConnectedFlag:Z
    :cond_10
    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 465
    const-string v6, "android.intent.extra.DOCK_STATE"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 466
    .local v3, bMouseDockedFlag:I
    const-string v6, "TvoutService_Java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v6, 0xc

    if-ne v6, v3, :cond_11

    .line 469
    const-string v6, "TvoutService_Java"

    const-string v7, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 473
    :cond_11
    const/16 v6, 0xd

    if-ne v6, v3, :cond_0

    .line 474
    const-string v6, "TvoutService_Java"

    const-string v7, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;Z)Z

    .line 476
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_0

    .line 479
    .end local v3           #bMouseDockedFlag:I
    :cond_12
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 480
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 482
    :cond_13
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 483
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_14

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 484
    :cond_14
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v6, v7}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 494
    :cond_15
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 496
    const-string v6, "TvoutService_Java"

    const-string v7, "Mouse Connected to Smart dock But HDMI is disconnected !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v6}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_1
.end method
