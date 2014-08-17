.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;,
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BIG_BINARY_SIZE_DONE:I = 0x13

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0xd

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0xb

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x10

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x11

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0xf

.field private static final EVENT_READ_ADN_DONE:I = 0xc

.field protected static final EVENT_READ_BIG_BINARY_DONE:I = 0x14

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0xe

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x12

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final MAX_SEC_SIM_DATA_STRING:I = 0xfd

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected mIsDisposed:Z

.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mIsDisposed:Z

    .line 215
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 216
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 481
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mIsDisposed:Z

    .line 222
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 441
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 445
    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 10
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 462
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 465
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 467
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 1099
    sparse-switch p1, :sswitch_data_0

    .line 1130
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1108
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1112
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 1114
    :sswitch_2
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1121
    :sswitch_3
    const-string v0, "3F00"

    goto :goto_0

    .line 1128
    :sswitch_4
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1099
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2f41 -> :sswitch_3
        0x2f42 -> :sswitch_3
        0x2f43 -> :sswitch_3
        0x2f50 -> :sswitch_3
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_2
        0x6f02 -> :sswitch_4
        0x6f03 -> :sswitch_4
        0x6f04 -> :sswitch_4
        0x6f09 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 295
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 298
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 300
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .parameter "onLoaded"

    .prologue
    .line 454
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    .line 458
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 53
    .parameter "msg"

    .prologue
    .line 493
    const/16 v45, 0x0

    .line 514
    .local v45, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 516
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 517
    .local v33, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 518
    .local v41, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 519
    .local v46, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 521
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 522
    .local v40, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_0

    .line 523
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1079
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v36

    .line 1080
    .local v36, exc:Ljava/lang/Exception;
    if-eqz v45, :cond_37

    .line 1081
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 528
    .end local v36           #exc:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 529
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v45, v0

    .line 530
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 532
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 533
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_0

    .line 534
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 539
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 540
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 541
    .restart local v41       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 542
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 544
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 545
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 549
    :cond_1
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 550
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_2

    .line 551
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 555
    :cond_2
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v35, v0

    .line 557
    .local v35, data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v35, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_4

    .line 559
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 562
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v44, v0

    .line 563
    .local v44, recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v35, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v44, v3

    .line 564
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v35, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v35, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v44, v3

    .line 566
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v44, v4

    const/4 v6, 0x0

    aget v6, v44, v6

    div-int/2addr v4, v6

    aput v4, v44, v3

    .line 568
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 572
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v35           #data:[B
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v44           #recordSize:[I
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 573
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 574
    .restart local v41       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 575
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 577
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 578
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 582
    :cond_5
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 584
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_6

    .line 585
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 589
    :cond_6
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v35, v0

    .line 590
    .restart local v35       #data:[B
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 591
    .local v5, fileid:I
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v43, v0

    .line 593
    .local v43, recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_7

    .line 594
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 597
    :cond_7
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_8

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_8

    .line 598
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 601
    :cond_8
    const/16 v3, 0xe

    aget-byte v3, v35, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 603
    const/4 v3, 0x2

    aget-byte v3, v35, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v35, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 606
    .local v9, size:I
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 608
    move-object/from16 v0, v41

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_9

    .line 609
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v41

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 612
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v5           #fileid:I
    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v41

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v41

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v9           #size:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 620
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v35           #data:[B
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v43           #recordNum:I
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 621
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v45, v0

    .line 622
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 624
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 625
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 629
    :cond_a
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 631
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_b

    .line 632
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 636
    :cond_b
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v35, v0

    .line 638
    .restart local v35       #data:[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 640
    .restart local v5       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_c

    .line 641
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 644
    :cond_c
    const/16 v3, 0xd

    aget-byte v3, v35, v3

    if-eqz v3, :cond_d

    .line 645
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 648
    :cond_d
    const/4 v3, 0x2

    aget-byte v3, v35, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v35, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 651
    .restart local v9       #size:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v12, v5, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 661
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v35           #data:[B
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 662
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;

    .line 663
    .local v49, tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 664
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 666
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    .line 667
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 671
    :cond_e
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 673
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_f

    .line 674
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 678
    :cond_f
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v35, v0

    .line 679
    .restart local v35       #data:[B
    move-object/from16 v0, v49

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    .line 681
    .restart local v5       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_10

    .line 682
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 685
    :cond_10
    const/16 v3, 0xd

    aget-byte v3, v35, v3

    if-eqz v3, :cond_11

    .line 686
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 690
    :cond_11
    const/4 v3, 0x2

    aget-byte v3, v35, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v35, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 695
    .restart local v9       #size:I
    const/4 v3, 0x0

    move-object/from16 v0, v49

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 696
    move-object/from16 v0, v49

    iput v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    .line 697
    div-int/lit16 v3, v9, 0xfd

    move-object/from16 v0, v49

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    .line 698
    const/16 v3, 0xfd

    if-le v9, v3, :cond_12

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v49

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 699
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v49

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v49

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v3, 0xfd

    if-le v9, v3, :cond_13

    const/16 v16, 0xfd

    :goto_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v3, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move v12, v5

    invoke-interface/range {v10 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 698
    :cond_12
    const/4 v3, 0x0

    goto :goto_1

    :cond_13
    move/from16 v16, v9

    .line 700
    goto :goto_2

    .line 711
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v35           #data:[B
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local v49           #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 712
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;

    .line 713
    .restart local v49       #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 714
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 716
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_14

    .line 717
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 721
    :cond_14
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 723
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_15

    .line 724
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 728
    :cond_15
    move-object/from16 v0, v49

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    if-nez v3, :cond_16

    .line 729
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 731
    :cond_16
    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v49

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 736
    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move-object/from16 v0, v49

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    if-le v3, v4, :cond_18

    .line 737
    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    new-array v0, v3, [B

    move-object/from16 v47, v0

    .line 738
    .local v47, resultData:[B
    const/16 v39, 0x0

    .local v39, i:I
    :goto_3
    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move/from16 v0, v39

    if-ge v0, v3, :cond_17

    .line 739
    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v50, v0

    .line 740
    .local v50, tempData:[B
    const/4 v3, 0x0

    move/from16 v0, v39

    mul-int/lit16 v4, v0, 0xfd

    move-object/from16 v0, v50

    array-length v6, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-static {v0, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    add-int/lit8 v39, v39, 0x1

    goto :goto_3

    .line 743
    .end local v50           #tempData:[B
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 745
    .end local v39           #i:I
    .end local v47           #resultData:[B
    :cond_18
    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    shr-int/lit8 v14, v3, 0x8

    .line 746
    .local v14, iccIoP1:I
    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    and-int/lit16 v15, v3, 0xff

    .line 748
    .local v15, IccIoP2:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb0

    move-object/from16 v0, v49

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move-object/from16 v0, v49

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    if-ge v3, v4, :cond_19

    const/16 v16, 0xfd

    :goto_4
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v3, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v10 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    move-object/from16 v0, v49

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v4, v4, 0xfd

    sub-int v16, v3, v4

    goto :goto_4

    .line 762
    .end local v14           #iccIoP1:I
    .end local v15           #IccIoP2:I
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local v49           #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 763
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 764
    .restart local v41       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 765
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 767
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1a

    .line 768
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 772
    :cond_1a
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 774
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_1b

    .line 775
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 779
    :cond_1b
    move-object/from16 v0, v41

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_1c

    .line 780
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 782
    :cond_1c
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 786
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v41

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_1d

    .line 787
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 789
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 800
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 801
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 802
    .restart local v41       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 803
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 805
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    .line 806
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 810
    :cond_1e
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 812
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_1f

    .line 813
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 817
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_READ_IMG_RECORD_DONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 824
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 825
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v45, v0

    .line 826
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 828
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_20

    .line 829
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 833
    :cond_20
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 835
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_21

    .line 836
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 840
    :cond_21
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 847
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_a
    const/16 v51, 0x0

    .line 848
    .local v51, total:I
    const/16 v52, 0x0

    .line 849
    .local v52, used:I
    const/16 v38, 0x0

    .line 851
    .local v38, firstIndex:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 854
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_22

    .line 865
    :goto_5
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .line 866
    .local v42, pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 869
    move/from16 v0, v52

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    .line 870
    move/from16 v0, v38

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 872
    const/4 v3, 0x0

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 874
    if-nez v52, :cond_23

    .line 880
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v42

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 881
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 857
    .end local v42           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_22
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v51, v3, v4

    .line 858
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x1

    aget v52, v3, v4

    .line 859
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x2

    aget v38, v3, v4

    goto :goto_5

    .line 885
    .restart local v42       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_23
    move-object/from16 v0, v42

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-eqz v3, :cond_24

    .line 887
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v42

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 890
    :cond_24
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v16 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 898
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v38           #firstIndex:I
    .end local v42           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v51           #total:I
    .end local v52           #used:I
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 899
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .line 901
    .restart local v42       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/SimPBEntryResult;

    .line 902
    .local v48, resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 907
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_25

    .line 908
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 911
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pblc EFID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "record number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "total record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Used Record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, v42

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-nez v3, :cond_26

    .line 914
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 915
    .local v21, emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v21, v3

    .line 918
    new-instance v16, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v17, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v19, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v20, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v22, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v23, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v24, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v25, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    invoke-direct/range {v16 .. v26}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .local v16, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 921
    .end local v16           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v21           #emails:[Ljava/lang/String;
    :cond_26
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 922
    .restart local v21       #emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v21, v3

    .line 925
    new-instance v16, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v17, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v19, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v20, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v22, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v23, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v24, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v25, v3, v4

    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    invoke-direct/range {v16 .. v26}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    .restart local v16       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 929
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    if-eq v3, v4, :cond_27

    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_28

    .line 930
    :cond_27
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 932
    :cond_28
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0xb2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v24, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    invoke-interface/range {v22 .. v27}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 942
    .end local v16           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v21           #emails:[Ljava/lang/String;
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v42           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v48           #resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 943
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 944
    .restart local v41       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 945
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 947
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_29

    .line 948
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 952
    :cond_29
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 954
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_2a

    .line 955
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 959
    :cond_2a
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v35, v0

    .line 960
    .restart local v35       #data:[B
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 961
    .restart local v5       #fileid:I
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v43, v0

    .line 963
    .restart local v43       #recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_2b

    .line 964
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 967
    :cond_2b
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_2c

    .line 968
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 971
    :cond_2c
    const/16 v3, 0xe

    aget-byte v3, v35, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 973
    const/4 v3, 0x2

    aget-byte v3, v35, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v35, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 976
    .restart local v9       #size:I
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 978
    move-object/from16 v0, v41

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_2d

    .line 979
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v41

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 982
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0xb2

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v24, v0

    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v3, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v22 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 990
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v35           #data:[B
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v43           #recordNum:I
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 991
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v45, v0

    .line 993
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 994
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 998
    :cond_2e
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v34, v0

    .line 999
    .local v34, capaResult:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1004
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v34           #capaResult:[I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 1005
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v45, v0

    .line 1006
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v37, v0

    .line 1007
    .local v37, fileStatus:[I
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2f

    .line 1008
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1012
    :cond_2f
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 1014
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1015
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1019
    :cond_30
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 1021
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_31

    .line 1022
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1026
    :cond_31
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v35, v0

    .line 1028
    .restart local v35       #data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_32

    .line 1029
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1032
    :cond_32
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_33

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v35, v4

    if-eq v3, v4, :cond_33

    .line 1033
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1035
    :cond_33
    const/4 v3, 0x0

    const/16 v4, 0xb

    aget-byte v4, v35, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v37, v3

    .line 1036
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1041
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v35           #data:[B
    .end local v37           #fileStatus:[I
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 1042
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v45, v0

    .line 1044
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 1045
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1049
    :cond_34
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v32, v0

    .line 1050
    .local v32, RecordInfo:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1056
    .end local v32           #RecordInfo:[I
    .end local v33           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 1057
    .restart local v33       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 1058
    .restart local v41       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/IccIoResult;

    .line 1059
    .restart local v46       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v45, v0

    .line 1061
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_35

    .line 1062
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1066
    :cond_35
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v40

    .line 1068
    .restart local v40       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v40, :cond_36

    .line 1069
    const-string v3, "getException not null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 1071
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1075
    :cond_36
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1083
    .end local v33           #ar:Landroid/os/AsyncResult;
    .end local v40           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v46           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v36       #exc:Ljava/lang/Exception;
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 10
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 255
    const/16 v0, 0x9

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 260
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 263
    return-void
.end method

.method public loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 10
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 275
    const/16 v0, 0xd

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 280
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 283
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    .line 357
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p5}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 360
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    const-string v3, "img"

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 362
    return-void
.end method

.method public loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 376
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p5}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 378
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 381
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 237
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 241
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 243
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 312
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 315
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 317
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 337
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 340
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 343
    return-void
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 425
    const/16 v1, 0xb

    new-instance v2, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 428
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 429
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 394
    const/16 v0, 0x12

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p5}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 397
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    move v2, p1

    move v4, p2

    move-object v8, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 400
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v2, p1

    move v5, v4

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 411
    return-void
.end method
