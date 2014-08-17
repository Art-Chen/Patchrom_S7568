.class public Lcom/android/server/enterprise/DeviceInfo;
.super Landroid/app/enterprise/IDeviceInfo$Stub;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_SYSSCOPE_SERVICE:Ljava/lang/String; = "android.app.enterprise.SYSSCOPE"

.field private static final DATA_USAGE_MILISECS_HIGH:I = 0x3c

.field private static final DATA_USAGE_MILISECS_LOW:I = 0x1

.field private static final DATA_USAGE_TO_STORAGE_COUNTER:I = 0xa

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final SYSSCOPE_BIND_TIMER:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static mSignalStrength:Ljava/lang/String;


# instance fields
.field private connSysScope:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDataCallConnected:Z

.field private mDataCallLogLastNetType:Ljava/lang/String;

.field private mDataCallLogLastStatus:Ljava/lang/String;

.field private mDataCallLogLastTime:J

.field private mDataCallLogLastValue:J

.field private mDataLogEnabled:Z

.field mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataStatisticsUpdateRun:Ljava/lang/Runnable;

.field private mDataStatsCounter:I

.field private mDataStatsEnabled:Z

.field private mDataUsageEventsHandler:Landroid/os/Handler;

.field private mDataUsageTimer:I

.field private mDataUsageTimerActivated:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateMobileRx:J

.field private mLastUpdateMobileTx:J

.field private mLastUpdateWifiRx:J

.field private mLastUpdateWifiTx:J

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mStorageMobileRx:J

.field private mStorageMobileTx:J

.field private mStorageWifiRx:J

.field private mStorageWifiTx:J

.field private mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;

.field private mSysScopeServiceBind:Ljava/lang/Runnable;

.field private mSysScopeServiceHandler:Landroid/os/Handler;

.field mTelMgr:Landroid/telephony/TelephonyManager;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStatsEnabled:Z

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    iput-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    iput v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$2;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$3;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$4;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$5;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$6;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$6;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->connSysScope:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/DeviceInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/enterprise/DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/enterprise/DeviceInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/server/enterprise/DeviceInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/DeviceInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->updateDataStatisticsUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/DeviceInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/enterprise/DeviceInfo;Landroid/app/enterprise/IEnterpriseSysScopeInterface;)Landroid/app/enterprise/IEnterpriseSysScopeInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/DeviceInfo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/DeviceInfo;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->connSysScope:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/DeviceInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->registerCarrierNetworkListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesInit()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->deregisterCarrierNetworkListener()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/DeviceInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/DeviceInfo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dataUsageValuesInit()V
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesUpdate()V

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v3

    .local v3, i:I
    if-eqz v3, :cond_1

    .end local v3           #i:I
    :goto_0
    mul-int/lit16 v6, v3, 0x3e8

    iput v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "deviceWifiSent"

    aput-object v6, v0, v8

    const/4 v6, 0x1

    const-string v7, "deviceWifiReceived"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "deviceNetworkSent"

    aput-object v7, v0, v6

    const-string v6, "deviceNetworkReceived"

    aput-object v6, v0, v5

    .local v0, columns:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "DEVICE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    :try_start_0
    const-string v5, "deviceWifiSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    const-string v5, "deviceWifiReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    const-string v5, "deviceNetworkSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    const-string v5, "deviceNetworkReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .end local v0           #columns:[Ljava/lang/String;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v3       #i:I
    :cond_1
    move v3, v5

    goto :goto_0

    .end local v3           #i:I
    .restart local v0       #columns:[Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    const-string v5, "DeviceInfo"

    const-string v6, "initializeStorageValues - Error reading from Device Storage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->resetDataUsage()V

    goto :goto_1
.end method

.method private dataUsageValuesUpdate()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    return-void
.end method

.method private deregisterCarrierNetworkListener()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private enforceDeviceInventoryPermission()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforcePhone()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforcePhoneAppOrAdmin()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getCallsCount(Ljava/lang/String;)I
    .locals 5
    .parameter "callType"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    .local v0, count:I
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 4
    .parameter "property"

    .prologue
    const/4 v1, -0x1

    .local v1, value:I
    const/4 v2, -0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStrictDataUsageTimer()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "miscDataStatisticTimer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, value:I
    if-eqz v1, :cond_1

    if-ge v2, v1, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .end local v2           #value:I
    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x3

    :cond_3
    return v1
.end method

.method private getString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "fromVM"

    .prologue
    const/4 v1, 0x0

    .local v1, value:Ljava/lang/String;
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "unknown"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTrafficMobileRx()J
    .locals 4

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .local v0, mobileValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .end local v0           #mobileValue:J
    :cond_0
    return-wide v0
.end method

.method private getTrafficMobileTx()J
    .locals 4

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .local v0, mobileValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .end local v0           #mobileValue:J
    :cond_0
    return-wide v0
.end method

.method private getTrafficWifiRx()J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v7, -0x1

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .local v0, mobileValue:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .local v2, totalValue:J
    cmp-long v6, v7, v2

    if-nez v6, :cond_0

    move-wide v2, v4

    .end local v2           #totalValue:J
    :cond_0
    cmp-long v6, v7, v0

    if-nez v6, :cond_1

    move-wide v0, v4

    .end local v0           #mobileValue:J
    :cond_1
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private getTrafficWifiTx()J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v7, -0x1

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .local v0, mobileValue:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .local v2, totalValue:J
    cmp-long v6, v7, v2

    if-nez v6, :cond_0

    move-wide v2, v4

    .end local v2           #totalValue:J
    :cond_0
    cmp-long v6, v7, v0

    if-nez v6, :cond_1

    move-wide v0, v4

    .end local v0           #mobileValue:J
    :cond_1
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private isWifiStateEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .local v0, ret:Z
    :cond_2
    goto :goto_0
.end method

.method private logDataCall(J)Z
    .locals 8
    .parameter "bytes"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    if-nez v5, :cond_0

    const-string v5, "DeviceInfo"

    const-string v6, "Logging disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    if-nez v5, :cond_1

    const-string v5, "DeviceInfo"

    const-string v6, "Data Disconnected, don\'t log"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    cmp-long v5, p1, v6

    if-gtz v5, :cond_2

    const-string v5, "DeviceInfo"

    const-string v6, "No bytes to log"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_3

    const-string v5, "DeviceInfo"

    const-string v6, "failed logDataCall because mTelMgr is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "ROAMING"

    .local v3, status:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .local v2, netType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iput-wide v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    iput-wide v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    :cond_5
    iput-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    const-string v4, "UNKNOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iput-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    :cond_6
    iget-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    const/4 v1, 0x0

    .local v1, cvWhere:Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #cvWhere:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .restart local v1       #cvWhere:Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, cvUpdate:Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dataCallBytes"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "DATACALLLOG"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    goto/16 :goto_0

    .end local v0           #cvUpdate:Landroid/content/ContentValues;
    .end local v1           #cvWhere:Landroid/content/ContentValues;
    .end local v2           #netType:Ljava/lang/String;
    .end local v3           #status:Ljava/lang/String;
    :cond_7
    const-string v3, "NORMAL"

    .restart local v3       #status:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private registerCarrierNetworkListener()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private updateDataStatisticsUsage()J
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const-wide/16 v7, 0x0

    .local v7, wifiUsage:J
    const-wide/16 v3, 0x0

    .local v3, mobileUsage:J
    const-wide/16 v1, 0x0

    .local v1, delta:J
    const-wide/16 v5, 0x0

    .local v5, valueNow:J
    iget v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v5

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_0

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    sub-long v1, v5, v9

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->isWifiStateEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v9, :cond_0

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    :cond_0
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    add-long/2addr v7, v1

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v5

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_1

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    sub-long v1, v5, v9

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->isWifiStateEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v9, :cond_1

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    :cond_1
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    add-long/2addr v7, v1

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v5

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    cmp-long v9, v5, v9

    if-ltz v9, :cond_6

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    sub-long v1, v5, v9

    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v9, :cond_2

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    :cond_2
    :goto_0
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    add-long/2addr v3, v1

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v5

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    cmp-long v9, v5, v9

    if-ltz v9, :cond_7

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    sub-long v1, v5, v9

    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v9, :cond_3

    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    :cond_3
    :goto_1
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    add-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long v9, v3, v11

    if-lez v9, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/DeviceInfo;->logDataCall(J)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    iget v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    const/16 v10, 0xa

    if-lt v9, v10, :cond_5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, cv:Landroid/content/ContentValues;
    const-string v9, "deviceWifiSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "deviceWifiReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "deviceNetworkSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "deviceNetworkReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "DEVICE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_5
    add-long v9, v7, v3

    return-wide v9

    :cond_6
    iput-wide v11, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    iput-wide v11, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    goto :goto_0

    :cond_7
    iput-wide v11, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    iput-wide v11, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    goto :goto_1
.end method

.method private final updateSignalStrength()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .local v2, signalDbm:I
    if-ne v4, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .local v1, signalAsu:I
    if-ne v4, v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dBm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/enterprise/DeviceInfo;->mSignalStrength:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "DeviceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSignalStrength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .locals 5
    .parameter "callType"

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, count:I
    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearCallingLog()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "CallingLog"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not clear call log "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearSMSLog()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeviceInfo"

    const-string v2, "could not write log edm database"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dataUsageTimerActivation()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .local v0, policiesActive:Z
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-nez v3, :cond_3

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesUpdate()V

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return-void

    .end local v0           #policiesActive:Z
    :cond_2
    move v0, v1

    goto :goto_0

    .restart local v0       #policiesActive:Z
    :cond_3
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public enableCallingCapture(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .local v0, uid:I
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "MISC"

    const-string v3, "CallingLogEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public enableSMSCapture(Z)Z
    .locals 5
    .parameter "status"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v1

    .local v1, uId:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "smsLogEnabled"

    invoke-virtual {v2, v1, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not enable sms capture"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAvailableCapacityExternal()J
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getAvailableCapacityInternal()J
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getAvailableRamMemory()J
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemFree:"

    aput-object v3, v1, v7

    const-string v3, "Cached:"

    aput-object v3, v1, v8

    .local v1, memInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .local v2, memInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v3, v2, v7

    aget-wide v5, v2, v8

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public getBytesReceivedNetwork()J
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    return-wide v0
.end method

.method public getBytesReceivedWiFi()J
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    return-wide v0
.end method

.method public getBytesSentNetwork()J
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    return-wide v0
.end method

.method public getBytesSentWiFi()J
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    return-wide v0
.end method

.method public getCellTowerCID()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    const/4 v1, -0x1

    .local v1, ret:I
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .local v0, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .end local v0           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerLAC()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    const/4 v1, -0x1

    .local v1, ret:I
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .local v0, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .end local v0           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerPSC()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    const/4 v1, -0x1

    .local v1, ret:I
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .local v0, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v1

    .end local v0           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerRSSI()Ljava/lang/String;
    .locals 8

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    const/16 v5, 0x63

    .local v5, ret:I
    iget-object v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->updateSignalStrength()V

    sget-object v6, Lcom/android/server/enterprise/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    :goto_0
    return-object v6

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .local v0, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .local v1, cid:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v3

    .local v3, nCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .local v4, nInfo:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    if-ne v6, v1, :cond_1

    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v5

    .end local v0           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v1           #cid:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #nCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v4           #nInfo:Landroid/telephony/NeighboringCellInfo;
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .restart local v0       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1       #cid:I
    .restart local v3       #nCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_3
    const-string v6, "DeviceInfo"

    const-string v7, "Could not retrieve NeighboringCellInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/enterprise/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "dataCallDate"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "dataCallStatus"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "dataCallNetType"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "dataCallBytes"

    aput-object v8, v0, v7

    .local v0, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, where:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #where:Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .restart local v6       #where:Landroid/content/ContentValues;
    const-string v7, "dataCallDate"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "DATACALLLOG"

    invoke-virtual {v7, v8, v0, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .local v5, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v5, :cond_2

    const/4 v4, 0x0

    :cond_1
    return-object v4

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .local v1, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataCallDate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallStatus"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallNetType"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallBytes"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDataCallLoggingEnabled()Z
    .locals 7

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableDataCallLogging"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v1, v2

    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getDataCallStatisticsEnabled()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableWifiDataCallDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v1, v2

    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getDataUsageTimer()I
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, callingUid:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "MISC"

    const-string v5, "miscDataStatisticTimer"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, i:I
    :goto_0
    return v2

    .end local v2           #i:I
    :catch_0
    move-exception v1

    .local v1, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v3, "DeviceInfo"

    const-string v4, "getDataUsageTimer could not read database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;->printStackTrace()V

    const/4 v2, -0x1

    .restart local v2       #i:I
    goto :goto_0
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.product.manufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.product.device"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "os.name"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "os.version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "ro.build.version.release"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorSpeed()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v3, ""

    .local v3, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v3

    .end local v3           #s:Ljava/lang/String;
    .local v4, s:Ljava/lang/String;
    :goto_1
    return-object v4

    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move-object v4, v3

    .end local v3           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_5
    throw v5

    :catch_1
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public getDeviceProcessorType()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v3

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    return-object v3

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_2
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3
    :goto_3
    const-string v3, ""

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_6
    throw v4

    :catch_2
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #s:Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public getDroppedCallsCount()I
    .locals 1

    .prologue
    const-string v0, "dropped"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInboundSMSCaptured()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smsType"

    aput-object v8, v5, v7

    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public getIncomingCallingCaptured()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getMissedCallsCount()I
    .locals 1

    .prologue
    const-string v0, "missed"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.product.name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.product.model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutboundSMSCaptured()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smsType"

    aput-object v8, v5, v7

    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public getOutgoingCallingCaptured()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not log edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getPlatformSDK()I
    .locals 1

    .prologue
    const-string v0, "ro.build.version.sdk"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "UNKNOWN"

    .local v0, platformName:Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    const-string v0, "GINGERBREAD"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-gt v1, v2, :cond_2

    const-string v0, "HONEYCOMB"

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const-string v0, "ICECREAM_SANDWICH"

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ril.serialnumber"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessCallsCount()I
    .locals 1

    .prologue
    const-string v0, "success"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalCapacityExternal()J
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTotalCapacityInternal()J
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTotalRamMemory()J
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemTotal:"

    aput-object v3, v1, v7

    .local v1, memInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .local v2, memInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v3, v2, v7

    return-wide v3
.end method

.method public getWifiStatisticEnabled()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "enableWifiDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v1, v2

    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isCallingCaptureEnabled()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhoneAppOrAdmin()V

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "MISC"

    const-string v7, "CallingLogEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, isEnabledList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, isEnabled:Z
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isEnabled:Z
    .end local v3           #isEnabledList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v6, "could not open edm database"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, isLocked:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .local v2, km:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2           #km:Landroid/app/KeyguardManager;
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized isDeviceRooted()Z
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    const/4 v1, 0x1

    .local v1, rooted:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    invoke-interface {v2}, Landroid/app/enterprise/IEnterpriseSysScopeInterface;->isDeviceRooted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "DeviceInfo"

    const-string v3, "isDeviceRooted(): error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "DeviceInfo"

    const-string v3, "isDeviceRooted(): not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1           #rooted:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isDeviceSecure()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    const/4 v1, 0x0

    .local v1, isSecure:Z
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v2, lu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2           #lu:Lcom/android/internal/widget/LockPatternUtils;
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 7

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhoneAppOrAdmin()V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "smsLogEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, policyStatusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .local v2, policyStatus:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #policyStatus:Ljava/lang/Boolean;
    .end local v3           #policyStatusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, "could not open edm database"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->updateDataUsageState()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public resetCallsCount()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .local v0, status:Z
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "success"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "missed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dropped"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public resetDataCallLogging(Ljava/lang/String;)Z
    .locals 3
    .parameter "time"

    .prologue
    const-wide/16 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    const/4 v0, 0x0

    .local v0, where:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #where:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .restart local v0       #where:Landroid/content/ContentValues;
    const-string v1, "dataCallDate"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "DATACALLLOG"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public resetDataUsage()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "deviceWifiSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "deviceWifiReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "deviceNetworkSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "deviceNetworkReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "DEVICE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    iget-boolean v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setDataCallLoggingEnabled(Z)Z
    .locals 5
    .parameter "status"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .local v0, callingUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableDataCallLogging"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    :cond_0
    return v1
.end method

.method public setDataCallStatisticsEnabled(Z)Z
    .locals 5
    .parameter "status"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .local v0, callingUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableWifiDataCallDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    :cond_0
    return v1
.end method

.method public setDataUsageTimer(I)Z
    .locals 6
    .parameter "seconds"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .local v1, ret:Z
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/16 v2, 0x3c

    if-le p1, v2, :cond_1

    :cond_0
    const/4 p1, 0x3

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "miscDataStatisticTimer"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return v1
.end method

.method public setWifiStatisticEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .local v0, callingUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "enableWifiDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    :cond_0
    return v1
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhone()V

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "callingType"

    if-eqz p5, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callingStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callingAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callingTimeStamp"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callingDuration"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "CallingLog"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhone()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "SMS"

    .local v2, sTableName:Ljava/lang/String;
    :try_start_0
    const-string v4, "smsType"

    if-eqz p4, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "smsAddress"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "smsTimeStamp"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "smsBody"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    :goto_1
    return-void

    :cond_0
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DeviceInfo"

    const-string v4, "could not write log edm database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method

.method public updateDataUsageState()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceSystemUser()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    return-void
.end method
