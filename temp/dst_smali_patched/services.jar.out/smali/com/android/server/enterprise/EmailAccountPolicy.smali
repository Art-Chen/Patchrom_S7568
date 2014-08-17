.class public Lcom/android/server/enterprise/EmailAccountPolicy;
.super Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EmailAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field public static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceEmailAccountPermission()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private fillInEmailAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, -0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .local v0, acc:Landroid/app/enterprise/Account;
    iget v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    iput v1, v0, Landroid/app/enterprise/Account;->mId:I

    iget-object v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    iget v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    iput v1, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    iput-wide v3, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    iput-wide v3, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    iget v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    iput v1, v0, Landroid/app/enterprise/Account;->mFlags:I

    iget-boolean v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    iput-boolean v1, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    iput-object v2, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v5, v1, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v3, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v5, v1, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v3, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J
    .locals 8
    .parameter "accountMData"
    .parameter "accountId"
    .parameter "doReCreate"
    .parameter "updateField"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "EmailAccountPolicy"

    const-string v7, ">>>>>>>>>>>>>>>>>\t\tupdateAccount for normal Email"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p4, v4, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v6}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccount(JLandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v4, "EmailAccountPolicy"

    const-string v5, "updateAccount : Error :: Failed during update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iput-boolean v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    if-eqz p4, :cond_1

    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v4, v5}, Lcom/android/server/enterprise/SettingsUtils;->addorUpdateAccount(Lcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v0

    .local v0, id:J
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #id:J
    :cond_1
    move v4, v5

    goto :goto_1
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 20
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "Send from SamsungMobile"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/EmailAccountPolicy;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .locals 12
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"
    .parameter "sendSSL"
    .parameter "sendTLS"
    .parameter "sendAllCert"
    .parameter "recvSSL"
    .parameter "recvTLS"
    .parameter "recvAllCert"
    .parameter "signature"
    .parameter "isNotify"

    .prologue
    const-string v1, "EmailAccountPolicy"

    const-string v2, ">>>>>>>>>>>>>>>>>\t\taddAccount for normal Email : Broadcasting "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p8, :cond_0

    if-eqz p2, :cond_0

    if-eqz p7, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p4

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p9

    if-gt v1, v0, :cond_0

    if-eqz p10, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const-string v1, "EmailAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const-string v1, "EmailAccountPolicy"

    const-string v2, "addNewAccount : Error :: Account already exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_2
    const-string v9, "none"

    .local v9, sendSecurityStr:Ljava/lang/String;
    const-string v8, "none"

    .local v8, recvSecurityStr:Ljava/lang/String;
    if-eqz p12, :cond_3

    if-nez p13, :cond_3

    if-nez p14, :cond_3

    const-string v9, "ssl"

    :cond_3
    if-nez p12, :cond_4

    if-eqz p13, :cond_4

    if-nez p14, :cond_4

    const-string v9, "tls"

    :cond_4
    if-eqz p12, :cond_5

    if-nez p13, :cond_5

    if-eqz p14, :cond_5

    const-string v9, "ssl+trustallcerts"

    :cond_5
    if-nez p12, :cond_6

    if-eqz p13, :cond_6

    if-eqz p14, :cond_6

    const-string v9, "tls+trustallcerts"

    :cond_6
    if-eqz p15, :cond_7

    if-nez p16, :cond_7

    if-nez p17, :cond_7

    const-string v8, "ssl"

    :cond_7
    if-nez p15, :cond_8

    if-eqz p16, :cond_8

    if-nez p17, :cond_8

    const-string v8, "tls"

    :cond_8
    if-eqz p15, :cond_9

    if-nez p16, :cond_9

    if-eqz p17, :cond_9

    const-string v8, "ssl+trustallcerts"

    :cond_9
    if-nez p15, :cond_a

    if-eqz p16, :cond_a

    if-eqz p17, :cond_a

    const-string v8, "tls+trustallcerts"

    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, token:J
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_ACCOUNT_FROM_MDM"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, intent:Landroid/content/Intent;
    const-string v1, "user_id"

    invoke-virtual {v7, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_passwd"

    move-object/from16 v0, p6

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service"

    invoke-virtual {v7, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receive_host"

    invoke-virtual {v7, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receive_security"

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receive_port"

    move/from16 v0, p4

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "send_host"

    move-object/from16 v0, p8

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "send_security"

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "send_port"

    move/from16 v0, p9

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sender_name"

    move-object/from16 v0, p5

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "signature"

    move-object/from16 v0, p18

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notify"

    move/from16 v0, p19

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v1, "EmailAccountPolicy"

    const-string v2, "<<<<<<<<<<<<<<<<<\t\taddAccount for normal Email : Broadcasting "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    goto/16 :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 5
    .parameter "accId"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    const/4 v2, 0x0

    .local v2, ret:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAccount() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v3}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v3}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccount(JLandroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.email.ACCOUNT_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "accountid"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return v2
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3
    .parameter "accId"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountDetails() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EmailAccountPolicy;->fillInEmailAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "emailId"
    .parameter "serverAddress"
    .parameter "protocol"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEmailAccounts()[Landroid/app/enterprise/Account;
    .locals 14

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    const-string v11, "getAllEmailAccounts()"

    invoke-static {v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .local v9, token:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIds(Landroid/content/Context;)[J

    move-result-object v6

    .local v6, ids:[J
    if-eqz v6, :cond_1

    move-object v1, v6

    .local v1, arr$:[J
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_1

    aget-wide v4, v1, v3

    .local v4, id:J
    iget-object v11, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v11}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v11, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-nez v11, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EmailAccountPolicy;->fillInEmailAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #acc:Lcom/android/server/enterprise/AccountMetaData;
    .end local v1           #arr$:[J
    .end local v3           #i$:I
    .end local v4           #id:J
    .end local v6           #ids:[J
    .end local v7           #len$:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v11, "EmailAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAllEmailAccounts() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/app/enterprise/Account;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/app/enterprise/Account;

    check-cast v11, [Landroid/app/enterprise/Account;

    :goto_1
    return-object v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 8
    .parameter "accountName"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const-string v5, "account_name"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 9
    .parameter "enable"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz p1, :cond_2

    iput-boolean v6, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    :goto_1
    const-wide/16 v7, -0x1

    const-string v5, "vibrate"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_0

    move v4, v6

    goto :goto_0

    :cond_2
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_1
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsDefaultAccount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setEmailAddress(Ljava/lang/String;J)J
    .locals 6
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "EmailAccountPolicy"

    const-string v4, "setEmailAddress : Error :: Invalid input parameter."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-wide v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_1

    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "user_id"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .locals 8
    .parameter "protocol"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v2, "setInComingProtocol : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const-string v5, "service"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .locals 8
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    const-wide/16 v6, -0x1

    const-string v5, "send_security"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .locals 6
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v4, "setInComingServerAddress : Error :: Invalid input parameter."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "receive_host"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setInComingServerLogin(Ljava/lang/String;J)J
    .locals 5
    .parameter "loginId"
    .parameter "accId"

    .prologue
    const-wide/16 v3, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerLogin : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-wide v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .locals 8
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v2, "setInComingServerPassword : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const-string v5, "user_passwd"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setInComingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInComingServerPort(IJ)Z
    .locals 8
    .parameter "port"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    if-gez p1, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v2, "setInComingServerPort : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    const-wide/16 v6, -0x1

    const-string v5, "receive_port"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setInComingServerSSL(ZJ)Z
    .locals 8
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    const-wide/16 v6, -0x1

    const-string v5, "send_security"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setOutGoingProtocol(Ljava/lang/String;J)Z
    .locals 4
    .parameter "protocol"
    .parameter "accId"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingProtocol : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .locals 8
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    const-wide/16 v6, -0x1

    const-string v5, "send_security"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .locals 6
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v4, "setOutGoingServerAddress : Error :: Invalid input parameter."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "send_host"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setOutGoingServerLogin(Ljava/lang/String;J)J
    .locals 5
    .parameter "loginId"
    .parameter "accId"

    .prologue
    const-wide/16 v3, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerLogin : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-wide v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .locals 8
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerPassword : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const-string v5, "user_passwd"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerPort(IJ)Z
    .locals 8
    .parameter "port"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    if-gez p1, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerPort : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    const-wide/16 v6, -0x1

    const-string v5, "send_port"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .locals 8
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerSSL() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    const-wide/16 v6, -0x1

    const-string v5, "send_security"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 8
    .parameter "senderName"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const-string v5, "sender_name"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 8
    .parameter "signature"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const-string v5, "signature"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 9
    .parameter "enable"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz p1, :cond_2

    iput-boolean v6, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    :goto_1
    const-wide/16 v7, -0x1

    const-string v5, "vibrate_when_silent"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_0

    move v4, v6

    goto :goto_0

    :cond_2
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_1
.end method

.method public setSyncInterval(IJ)Z
    .locals 3
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
