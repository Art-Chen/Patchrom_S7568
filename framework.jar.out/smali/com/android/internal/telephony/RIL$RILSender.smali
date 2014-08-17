.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 308
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 312
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 309
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 324
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/RILRequest;

    move-object v9, v11

    check-cast v9, Lcom/android/internal/telephony/RILRequest;

    .line 325
    .local v9, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v8, 0x0

    .line 327
    .local v8, req:Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 334
    :pswitch_0
    const/4 v1, 0x0

    .line 338
    .local v1, alreadySubtracted:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 340
    .local v10, s:Landroid/net/LocalSocket;
    if-nez v10, :cond_2

    .line 341
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 342
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v11, :cond_1

    .line 344
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    :cond_1
    const/4 v1, 0x1

    .line 410
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    goto :goto_0

    .line 349
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 352
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v11, :cond_3

    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 356
    :cond_3
    const/4 v1, 0x1

    .line 360
    iget-object v11, v9, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v11}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 361
    .local v3, data:[B
    iget-object v11, v9, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 362
    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 364
    array-length v11, v3

    const/16 v12, 0x2000

    if-le v11, v12, :cond_9

    .line 365
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parcel larger than max bytes allowed! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 379
    .end local v3           #data:[B
    .end local v10           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 380
    .local v4, ex:Ljava/io/IOException;
    :try_start_4
    const-string v11, "RILJ"

    const-string v12, "IOException"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 384
    if-nez v8, :cond_4

    if-nez v1, :cond_5

    .line 385
    :cond_4
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 386
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 388
    :cond_5
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Broken pipe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 389
    const-string v11, "RILJ"

    const-string v12, "Broken pipe, close broken socket"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 391
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    if-eqz v11, :cond_6

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 410
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .end local v4           #ex:Ljava/io/IOException;
    :goto_2
    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    .line 413
    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v11, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    goto/16 :goto_0

    .line 352
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catchall_0
    move-exception v11

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 397
    .end local v10           #s:Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 398
    .local v5, exc:Ljava/lang/RuntimeException;
    :try_start_8
    const-string v11, "RILJ"

    const-string v12, "Uncaught exception "

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 402
    if-nez v8, :cond_7

    if-nez v1, :cond_8

    .line 403
    :cond_7
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 404
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 410
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    goto :goto_2

    .line 371
    .end local v5           #exc:Ljava/lang/RuntimeException;
    .restart local v3       #data:[B
    .restart local v10       #s:Landroid/net/LocalSocket;
    :cond_9
    :try_start_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    aput-byte v15, v11, v12

    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v12, 0x2

    array-length v13, v3

    shr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 373
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v12, 0x3

    array-length v13, v3

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 377
    invoke-virtual {v10}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 378
    invoke-virtual {v10}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 410
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    goto :goto_2

    .line 393
    .end local v3           #data:[B
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v4       #ex:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 394
    .local v6, exe:Ljava/lang/Exception;
    :try_start_a
    const-string v11, "RILJ"

    const-string v12, "Exception"

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 410
    .end local v4           #ex:Ljava/io/IOException;
    .end local v6           #exe:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    throw v11

    .line 422
    .end local v1           #alreadySubtracted:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v11, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v12

    .line 423
    :try_start_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 433
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    if-eqz v11, :cond_b

    .line 434
    const-string v11, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTE: mReqWaiting is NOT 0 but"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v14, v14, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at TIMEOUT, reset!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " There still msg waitng for response"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 441
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 442
    :try_start_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 443
    .local v2, count:I
    const-string v11, "RILJ"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v2, :cond_a

    .line 447
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v9, v0

    .line 448
    const-string v11, "RILJ"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 451
    :cond_a
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 461
    .end local v2           #count:I
    .end local v7           #i:I
    :cond_b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-eqz v11, :cond_c

    .line 462
    const-string v11, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v14, v14, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at TIMEOUT, reset!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 467
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 469
    :cond_d
    monitor-exit v12

    goto/16 :goto_0

    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v11

    .line 451
    :catchall_3
    move-exception v11

    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method
