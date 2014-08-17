.class public Lcom/android/internal/telephony/gsm/GsmDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "GsmDataConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field protected mActiveApnType:Ljava/lang/String;

.field protected mProfileId:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 1
    .parameter "phone"
    .parameter "name"
    .parameter "id"
    .parameter "rm"
    .parameter "dct"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    .line 43
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mActiveApnType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private fetchLgtApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "apn"

    .prologue
    .line 190
    move-object v0, p1

    .line 192
    .local v0, apnName:Ljava/lang/String;
    const-string v2, "internet.lguplus.co.kr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 203
    .end local v0           #apnName:Ljava/lang/String;
    .local v1, apnName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 194
    .end local v1           #apnName:Ljava/lang/String;
    .restart local v0       #apnName:Ljava/lang/String;
    :cond_0
    const-string v2, "3"

    const-string/jumbo v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "45006"

    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const-string/jumbo v0, "wroaming.lguplus.co.kr"

    .line 202
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchLgtApn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    move-object v1, v0

    .line 203
    .end local v0           #apnName:Ljava/lang/String;
    .restart local v1       #apnName:Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v1           #apnName:Ljava/lang/String;
    .restart local v0       #apnName:Ljava/lang/String;
    :cond_1
    const-string v0, "internet.lguplus.co.kr"

    goto :goto_1
.end method

.method private fetchSktApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apn"

    .prologue
    const/4 v0, 0x1

    .line 168
    move-object v1, p1

    .line 170
    .local v1, apnName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 176
    .local v0, DataNetworkEnable:Z
    :goto_0
    const-string/jumbo v3, "web.sktelecom.com"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v1

    .line 186
    .end local v1           #apnName:Ljava/lang/String;
    .local v2, apnName:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 170
    .end local v0           #DataNetworkEnable:Z
    .end local v2           #apnName:Ljava/lang/String;
    .restart local v1       #apnName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    .restart local v0       #DataNetworkEnable:Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 179
    const-string/jumbo v1, "mmsonly.sktelecom.com"

    .line 185
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchSktApn :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    move-object v2, v1

    .line 186
    .end local v1           #apnName:Ljava/lang/String;
    .restart local v2       #apnName:Ljava/lang/String;
    goto :goto_1

    .line 180
    .end local v2           #apnName:Ljava/lang/String;
    .restart local v1       #apnName:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    const-string/jumbo v1, "roaming.sktelecom.com"

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 183
    .end local v1           #apnName:Ljava/lang/String;
    .restart local v2       #apnName:Ljava/lang/String;
    goto :goto_1
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 213
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 6
    .parameter "phone"
    .parameter "id"
    .parameter "rm"
    .parameter "dct"

    .prologue
    .line 60
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_0
    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    .line 62
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 64
    .local v0, gsmDc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->start()V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    .line 66
    return-object v0

    .line 62
    .end local v0           #gsmDc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getProfileId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    return v0
.end method

.method protected isDnsOk([Ljava/lang/String;)Z
    .locals 5
    .parameter "domainNameServers"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    const-string v2, "0.0.0.0"

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "0.0.0.0"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string/jumbo v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    const-string v2, "isDnsOk: return false apn.types[0]=%s APN_TYPE_MMS=%s isIpAddress(%s)=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    const-string/jumbo v4, "mms"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    .line 163
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 209
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .locals 11
    .parameter "cp"

    .prologue
    const-wide/16 v1, -0x1

    .line 79
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/ApnSetting;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    .line 81
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 82
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 83
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 86
    const v0, 0x40001

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 87
    .local v8, msg:Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget v9, v0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .line 90
    .local v9, authType:I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x3

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 104
    .local v7, protocol:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, operator:Ljava/lang/String;
    const-string v0, "45005"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->fetchSktApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, fetchedApn:Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to carrier: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' APN: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' proxy: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' port: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getRadioTechnology(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 124
    return-void

    .line 92
    .end local v3           #fetchedApn:Ljava/lang/String;
    .end local v7           #protocol:Ljava/lang/String;
    .end local v10           #operator:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    .restart local v7       #protocol:Ljava/lang/String;
    goto/16 :goto_1

    .line 110
    .restart local v10       #operator:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .restart local v3       #fetchedApn:Ljava/lang/String;
    goto :goto_2
.end method

.method public setActiveApnType(Ljava/lang/String;)V
    .locals 0
    .parameter "apnType"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mActiveApnType:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setProfileId(I)V
    .locals 0
    .parameter "profileId"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
