.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private PushOriginalAddress:Ljava/lang/String;

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    return-void
.end method

.method private dispatchWapPdu_CON013([BIILjava/lang/String;IIZ)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "isVaildHeader"

    .prologue
    const/4 v5, 0x0

    add-int v1, p5, p6

    .local v1, dataIndex:I
    array-length v3, p1

    sub-int/2addr v3, v1

    new-array v0, v3, [B

    .local v0, data:[B
    array-length v3, v0

    invoke-static {p1, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "transactionId"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "pduType"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-nez p7, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchWapPdu_DSNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED_MYPHONEBOOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "application/vnd.syncml.ds.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "WAP PUSH"

    const-string v2, "ds noti intent is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I
    .locals 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    const/4 v6, 0x1

    .local v6, ret:I
    new-array v4, p5, [B

    .local v4, header:[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p1, p4, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p4, p5

    .local v3, dataIndex:I
    array-length v7, p1

    sub-int/2addr v7, v3

    new-array v2, v7, [B

    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {p1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, intent:Landroid/content/Intent;
    const-string v7, "transactionId"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "pduType"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "header"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v7, "data"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v7, "applicationId"

    move-wide/from16 v0, p8

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive EMN : mimeType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " binaryContentType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " applicationId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p7, :sswitch_data_0

    :goto_0
    return v6

    :sswitch_0
    const-string v7, "application/vnd.docomo.pf"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v7, 0x9056

    cmp-long v7, p8, v7

    if-nez v7, :cond_1

    const-string v7, "com.nttdocomo.email.service"

    const-string v8, "com.nttdocomo.email.service.ImodeMailService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v6, -0x1

    :cond_0
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : i-mode.net"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const-string v7, "application/vnd.syncml.notification"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v7, 0x7

    cmp-long v7, p8, v7

    if-nez v7, :cond_3

    const-string v7, "jp.co.nttdocomo.fota"

    const-string v8, "jp.co.nttdocomo.fota.SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v6, -0x1

    :cond_2
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : fota"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    const-string v7, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v7, 0x905c

    cmp-long v7, p8, v7

    if-nez v7, :cond_5

    const-string v7, "jp.co.nttdocomo.carriermail"

    const-string v8, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v6, -0x1

    :cond_4
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : Carrier Mail"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-wide/16 v7, 0x9

    cmp-long v7, p8, v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v8, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v6, -0x1

    :cond_6
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : mopera U"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x30a -> :sswitch_2
        0x310 -> :sswitch_0
    .end sparse-switch
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .locals 7
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .local v2, edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v2, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v3, p5, [B

    .local v3, header:[B
    array-length v5, v3

    invoke-static {p1, p4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p4, p5

    .local v1, dataIndex:I
    array-length v5, p1

    sub-int/2addr v5, v1

    new-array v0, v5, [B

    .local v0, data:[B
    array-length v5, v0

    invoke-static {p1, v1, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v5, "application/vnd.wap.mms-message"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "transactionId"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "pduType"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "header"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "data"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    new-array v0, p5, [B

    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Message_DisplayPushSenderAddress"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "origaddr"

    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .locals 4
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_DisplayPushSenderAddress"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "origaddr"

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchWapPdu_SLC([BIIIILjava/lang/String;IJ)I
    .locals 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    const/4 v6, 0x1

    .local v6, ret:I
    new-array v4, p5, [B

    .local v4, header:[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p1, p4, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p4, p5

    .local v3, dataIndex:I
    array-length v7, p1

    sub-int/2addr v7, v3

    new-array v2, v7, [B

    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {p1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, intent:Landroid/content/Intent;
    const-string v7, "transactionId"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "pduType"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "header"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v7, "data"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v7, "applicationId"

    move-wide/from16 v0, p8

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive SLC : mimeType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " binaryContentType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " applicationId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "application/vnd.syncml+wbxml"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v7, 0x905f

    cmp-long v7, p8, v7

    if-nez v7, :cond_1

    const-string v7, "com.nttdocomo.android.syncmlapp"

    const-string v8, "com.nttdocomo.android.syncmlapp.SyncML_SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v6, -0x1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 53
    .parameter "pdu"

    .prologue
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rx: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    .local v37, index:I
    add-int/lit8 v38, v37, 0x1

    .end local v37           #index:I
    .local v38, index:I
    aget-byte v4, p1, v37

    and-int/lit16 v6, v4, 0xff

    .local v6, transactionId:I
    add-int/lit8 v37, v38, 0x1

    .end local v38           #index:I
    .restart local v37       #index:I
    aget-byte v4, p1, v38

    and-int/lit16 v7, v4, 0xff

    .local v7, pduType:I
    const/4 v9, 0x0

    .local v9, headerLength:I
    const/4 v4, 0x6

    if-eq v7, v4, :cond_0

    const/4 v4, 0x7

    if-eq v7, v4, :cond_0

    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    const-string v22, "address"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Length error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/lit8 v37, v4, 0x2

    move/from16 v8, v37

    .local v8, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Content-Type error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v10

    .local v10, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    .local v27, binaryContentType:J
    move/from16 v39, v37

    .local v39, index_con013:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v11, v4

    .local v11, iBinaryContentType:I
    if-nez v10, :cond_5

    sparse-switch v11, :sswitch_data_0

    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received PDU. Unsupported Content-Type = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_0
    const-string v10, "application/vnd.oma.drm.rights+xml"

    :goto_1
    const/16 v44, 0x0

    .local v44, isValidContentType:Z
    const/16 v43, 0x0

    .local v43, isValidApplicationID:Z
    const/16 v42, 0x0

    .local v42, isSULPINITMessage:Z
    const/16 v23, 0x0

    .local v23, Delta_Index:I
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v42, 0x1

    aget-byte v4, p1, v39

    const/16 v5, 0x61

    if-ge v4, v5, :cond_13

    aget-byte v4, p1, v39

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v39, 0x1

    aget-byte v4, p1, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v39, 0x2

    aget-byte v4, p1, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v39, 0x3

    aget-byte v4, p1, v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    const/16 v44, 0x1

    const/16 v23, 0x4

    :cond_3
    :goto_2
    if-eqz v44, :cond_4

    add-int v4, v39, v23

    aget-byte v4, p1, v4

    const/16 v5, -0x51

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v39, -0x1

    aget-byte v4, p1, v4

    sub-int v30, v4, v23

    .local v30, d_Length:I
    add-int/lit8 v4, v39, -0x1

    aget-byte v34, p1, v4

    .local v34, h_Length:I
    const/16 v24, 0x19

    .local v24, Delta_index2:I
    const/4 v4, 0x3

    move/from16 v0, v30

    if-le v0, v4, :cond_14

    add-int v4, v39, v23

    add-int/lit8 v50, v4, 0x1

    .local v50, startIndex:I
    new-instance v25, Ljava/lang/String;

    const-string v4, "x-oma-application:ulp.ua"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v25, appID:Ljava/lang/String;
    new-instance v46, Ljava/lang/String;

    const/16 v4, 0x18

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .local v46, pdu_app:Ljava/lang/String;
    if-eqz v46, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v43, 0x1

    .end local v24           #Delta_index2:I
    .end local v25           #appID:Ljava/lang/String;
    .end local v30           #d_Length:I
    .end local v34           #h_Length:I
    .end local v46           #pdu_app:Ljava/lang/String;
    .end local v50           #startIndex:I
    :cond_4
    :goto_3
    const/16 v32, 0x0

    .local v32, dispatchedByApplication:Z
    sparse-switch v11, :sswitch_data_1

    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_17

    const/4 v4, -0x1

    goto/16 :goto_0

    .end local v23           #Delta_Index:I
    .end local v32           #dispatchedByApplication:Z
    .end local v42           #isSULPINITMessage:Z
    .end local v43           #isValidApplicationID:Z
    .end local v44           #isValidContentType:Z
    :sswitch_1
    const-string v10, "application/vnd.oma.drm.rights+wbxml"

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "application/vnd.wap.sic"

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "application/vnd.wap.slc"

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "application/vnd.wap.coc"

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "application/vnd.wap.mms-message"

    goto/16 :goto_1

    :sswitch_6
    const-string v10, "application/vnd.omaloc-supl-init"

    goto/16 :goto_1

    :sswitch_7
    const-string v10, "application/vnd.docomo.pf"

    goto/16 :goto_1

    :sswitch_8
    const-string v10, "application/vnd.syncml.notification"

    goto/16 :goto_1

    :sswitch_9
    const-string v10, "application/vnd.syncml.ds.notification"

    goto/16 :goto_1

    :sswitch_a
    const-string v10, "application/vnd.wap.connectivity-wbxml"

    goto/16 :goto_1

    :sswitch_b
    const-string v10, "application/vnd.syncml.dm+wbxml"

    goto/16 :goto_1

    :sswitch_c
    const-string v10, "application/vnd.syncml.dm+xml"

    goto/16 :goto_1

    :sswitch_d
    const-string v10, "application/vnd.wap.emn+wbxml"

    goto/16 :goto_1

    :sswitch_e
    const-string v10, "application/vnd.syncml+wbxml"

    goto/16 :goto_1

    :cond_5
    const-string v4, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v11, 0x4a

    goto/16 :goto_1

    :cond_6
    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v11, 0x4b

    goto/16 :goto_1

    :cond_7
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v11, 0x2e

    goto/16 :goto_1

    :cond_8
    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v11, 0x30

    goto/16 :goto_1

    :cond_9
    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v11, 0x32

    goto/16 :goto_1

    :cond_a
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v11, 0x3e

    goto/16 :goto_1

    :cond_b
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v11, 0x312

    goto/16 :goto_1

    :cond_c
    const-string v4, "application/vnd.docomo.pf"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v11, 0x310

    goto/16 :goto_1

    :cond_d
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v11, 0x44

    goto/16 :goto_1

    :cond_e
    const-string v4, "application/vnd.syncml.ds.notification"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v11, 0x4e

    goto/16 :goto_1

    :cond_f
    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v11, 0x36

    goto/16 :goto_1

    :cond_10
    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v11, 0x42

    goto/16 :goto_1

    :cond_11
    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v11, 0x43

    goto/16 :goto_1

    :cond_12
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received PDU. Unknown Content-Type = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v23       #Delta_Index:I
    .restart local v42       #isSULPINITMessage:Z
    .restart local v43       #isValidApplicationID:Z
    .restart local v44       #isValidContentType:Z
    :cond_13
    const/16 v23, 0x21

    new-instance v22, Ljava/lang/String;

    const-string v4, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v22, CType:Ljava/lang/String;
    new-instance v45, Ljava/lang/String;

    const/16 v4, 0x20

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .local v45, pdu_CType:Ljava/lang/String;
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content Type : pdu = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v14, p1, v39

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v14, v39, 0x1

    aget-byte v14, p1, v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v14, v39, 0x2

    aget-byte v14, p1, v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v45, :cond_3

    move-object/from16 v0, v45

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v44, 0x1

    goto/16 :goto_2

    .end local v22           #CType:Ljava/lang/String;
    .end local v45           #pdu_CType:Ljava/lang/String;
    .restart local v24       #Delta_index2:I
    .restart local v30       #d_Length:I
    .restart local v34       #h_Length:I
    :cond_14
    add-int v4, v39, v23

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    const/16 v5, -0x70

    if-ne v4, v5, :cond_4

    const/16 v43, 0x1

    goto/16 :goto_3

    .end local v24           #Delta_index2:I
    .end local v30           #d_Length:I
    .end local v34           #h_Length:I
    .restart local v32       #dispatchedByApplication:Z
    :sswitch_f
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    const/16 v32, 0x1

    goto/16 :goto_4

    :sswitch_10
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    const/16 v32, 0x1

    goto/16 :goto_4

    :sswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BI)V

    const/16 v32, 0x1

    goto/16 :goto_4

    :sswitch_12
    const/16 v32, 0x0

    goto/16 :goto_4

    :sswitch_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DSNoti([BI)V

    const/16 v32, 0x1

    goto/16 :goto_4

    :cond_15
    const/16 v32, 0x1

    goto/16 :goto_4

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v37

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v36

    .local v36, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .local v26, applicationIdObj:Ljava/lang/Object;
    const-wide/16 v12, 0x0

    .local v12, applicationId:J
    move-object/from16 v0, v26

    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_16

    check-cast v26, Ljava/lang/Long;

    .end local v26           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_16
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I

    move-result v4

    goto/16 :goto_0

    .end local v12           #applicationId:J
    .end local v36           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_17
    if-nez v32, :cond_19

    if-eqz v42, :cond_19

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_DisplayPushSenderAddress"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    if-eqz v43, :cond_18

    if-nez v44, :cond_19

    :cond_18
    const/16 v21, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v10

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v21}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_CON013([BIILjava/lang/String;IIZ)V

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v37, v37, v4

    new-array v0, v9, [B

    move-object/from16 v35, v0

    .local v35, header:[B
    const/4 v4, 0x0

    move-object/from16 v0, v35

    array-length v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v8, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v10, :cond_1c

    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v41, p1

    .local v41, intentData:[B
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    add-int v5, v37, v9

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v37

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v51

    .local v51, wapAppId:Ljava/lang/String;
    if-nez v51, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v51

    :cond_1a
    if-nez v10, :cond_1d

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    .local v29, contentType:Ljava/lang/String;
    :goto_6
    const/16 v49, 0x1

    .local v49, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v52

    .local v52, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v52, :cond_1e

    :cond_1b
    :goto_7
    if-nez v49, :cond_1f

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v29           #contentType:Ljava/lang/String;
    .end local v41           #intentData:[B
    .end local v49           #processFurther:Z
    .end local v51           #wapAppId:Ljava/lang/String;
    .end local v52           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_1c
    add-int v31, v8, v9

    .local v31, dataIndex:I
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v31

    new-array v0, v4, [B

    move-object/from16 v41, v0

    .restart local v41       #intentData:[B
    const/4 v4, 0x0

    move-object/from16 v0, v41

    array-length v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .end local v31           #dataIndex:I
    .restart local v51       #wapAppId:Ljava/lang/String;
    :cond_1d
    move-object/from16 v29, v10

    goto :goto_6

    .restart local v29       #contentType:Ljava/lang/String;
    .restart local v49       #processFurther:Z
    .restart local v52       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_1e
    :try_start_1
    new-instance v40, Landroid/content/Intent;

    invoke-direct/range {v40 .. v40}, Landroid/content/Intent;-><init>()V

    .local v40, intent:Landroid/content/Intent;
    const-string v4, "transactionId"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "pduType"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "header"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "data"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    move-object/from16 v2, v29

    move-object/from16 v3, v40

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v48

    .local v48, procRet:I
    and-int/lit8 v4, v48, 0x1

    if-lez v4, :cond_1b

    const v4, 0x8000

    and-int v4, v4, v48

    if-nez v4, :cond_1b

    const/16 v49, 0x0

    goto :goto_7

    .end local v40           #intent:Landroid/content/Intent;
    .end local v48           #procRet:I
    .end local v52           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v4

    .end local v29           #contentType:Ljava/lang/String;
    .end local v49           #processFurther:Z
    .end local v51           #wapAppId:Ljava/lang/String;
    :cond_1f
    if-nez v10, :cond_20

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_20
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v33

    .local v33, edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v33, :cond_22

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual/range {v33 .. v33}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v4

    if-nez v4, :cond_22

    :cond_21
    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_22
    const-string v47, "android.permission.RECEIVE_MMS"

    .end local v33           #edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .local v47, permission:Ljava/lang/String;
    :goto_8
    new-instance v40, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v40       #intent:Landroid/content/Intent;
    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "transactionId"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "pduType"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "header"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "data"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_DisplayPushSenderAddress"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    if-eqz v4, :cond_23

    const-string v4, "origaddr"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto/16 :goto_0

    .end local v40           #intent:Landroid/content/Intent;
    .end local v47           #permission:Ljava/lang/String;
    :cond_24
    const-string v47, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v47       #permission:Ljava/lang/String;
    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_a
        0x3e -> :sswitch_5
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_8
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x4e -> :sswitch_9
        0xb0 -> :sswitch_e
        0xce -> :sswitch_9
        0x30a -> :sswitch_d
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_12
        0x32 -> :sswitch_f
        0x36 -> :sswitch_12
        0x3e -> :sswitch_10
        0x42 -> :sswitch_12
        0x43 -> :sswitch_12
        0x44 -> :sswitch_11
        0x4e -> :sswitch_13
        0xce -> :sswitch_13
        0x30a -> :sswitch_14
        0x310 -> :sswitch_14
    .end sparse-switch
.end method

.method public dispatchWapPushAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "OriginalAddress"

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    goto :goto_0
.end method
