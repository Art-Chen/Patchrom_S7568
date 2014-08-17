.class public Lcom/android/server/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# static fields
.field private static final BACK_KEY_TIMER:J = 0x668a0L

.field private static final DATA_ACTIVITY_CHECK_INTERVAL:J = 0xdbba0L

.field private static final DATA_ACTIVITY_CHECK_START_DELAY:J = 0xdbba0L

.field private static DBG:Z = false

.field private static final DBG_ERR:Z = true

.field private static final DIALOG_TIMER_MAX:J = 0x240c8400L

.field private static final MAX_SHOW_DIALOG_CNT:I = 0x3

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "persist.offload.datausage.limit"

.field static final PROPERTY_DONT_USE_WIFI_TIME:Ljava/lang/String; = "persist.offload.dontuse.time"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field public static USER_PRESSED_BACK_KEY:I

.field public static USER_PRESSED_NEVER_TURN_ON_WIFI:I

.field public static USER_PRESSED_OK:I

.field public static USER_PRESSED_TURN_OFF_WIFI:I

.field static dataUsageObj:Ljava/lang/Object;

.field public static dialogCreatedObj:Ljava/lang/Object;

.field static isRunning:Z

.field private static mTempPopupBlocked:Z

.field private static mWifiOffloadTempCnt:I

.field private static mWifiOffloadTempStationId:I

.field static obj:Ljava/lang/Object;


# instance fields
.field private ACTION_DELETE_REQUEST:Ljava/lang/String;

.field public DATA_USAGE_THRESHOLD:I

.field private final DONT_USE_WIFI_PRESS_TIMER:I

.field private EXTRA_SSID:Ljava/lang/String;

.field WiFiDataReceiver:Landroid/content/BroadcastReceiver;

.field private am:Landroid/app/ActivityManager;

.field public appRunOverWiFiResult:I

.field applistDB:Landroid/database/sqlite/SQLiteDatabase;

.field private baseStation:I

.field private bootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

.field private cellLocation:Landroid/telephony/CellLocation;

.field private checkBackKeyTimer:Ljava/util/Timer;

.field private checkDataActivityTimer:Ljava/util/Timer;

.field public currentIntelScanMode:Z

.field private data_usage:J

.field dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

.field private deleteRequestReceiver:Landroid/content/BroadcastReceiver;

.field private dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private doOffload:Z

.field public dontUsePressTime:J

.field dont_use_counter:I

.field private funcCallTimer:I

.field private gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private isBootCompleted:Z

.field private isDontUsewifiPressed:Z

.field private isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isUserPressedNeverTurnOnWifi:Z

.field public isWiFiConnected:Z

.field private isdontUseWifiTimerRuning:Z

.field private lastWifiScanTime:J

.field private launch_count:J

.field private mContext:Landroid/content/Context;

.field private mNewSupplicantState:Landroid/net/wifi/SupplicantState;

.field public mPackageName:Ljava/lang/String;

.field private mSeamlessConnectWhileConnecting:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mWaitForScanResults:Z

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private messageHandler:Landroid/os/Handler;

.field private noKnownNetwork:Z

.field public offloadObj:Ljava/lang/Object;

.field private pm:Landroid/content/pm/PackageManager;

.field private prevStationID:I

.field private prevWiFiState:Z

.field public previousBaseStation:I

.field private processName:Ljava/lang/String;

.field private scanCallTimer:I

.field private scanResultAvailable:Landroid/content/BroadcastReceiver;

.field private scanResults:Landroid/content/BroadcastReceiver;

.field private stationID:I

.field private testStationID:I

.field timer_delay:J

.field private tm:Landroid/telephony/TelephonyManager;

.field private user_id:I

.field private wifiAuth:Ljava/lang/String;

.field private wifiBSSID:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiSSID:Ljava/lang/String;

.field wifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 137
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 138
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 140
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 178
    sput v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    .line 179
    const/4 v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    .line 180
    const/4 v0, 0x2

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_NEVER_TURN_ON_WIFI:I

    .line 181
    const/4 v0, 0x3

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    .line 930
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    .line 931
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 135
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 142
    const-string v0, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    .line 143
    const-string v0, "delete_ssid"

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->EXTRA_SSID:Ljava/lang/String;

    .line 151
    iput v3, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 156
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 157
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 160
    iput v2, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 161
    iput v2, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 163
    iput v3, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 166
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 169
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/WifiOffloadService;->DONT_USE_WIFI_PRESS_TIMER:I

    .line 172
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 177
    iput v3, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 183
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    .line 186
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->am:Landroid/app/ActivityManager;

    .line 190
    iput v3, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 195
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 196
    iput v2, p0, Lcom/android/server/WifiOffloadService;->user_id:I

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->processName:Ljava/lang/String;

    .line 198
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->data_usage:J

    .line 199
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->launch_count:J

    .line 200
    iput v7, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 210
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    .line 215
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    .line 224
    iput v3, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    .line 505
    new-instance v0, Lcom/android/server/WifiOffloadService$1;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$1;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    .line 556
    new-instance v0, Lcom/android/server/WifiOffloadService$2;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$2;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 579
    new-instance v0, Lcom/android/server/WifiOffloadService$3;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$3;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 673
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    .line 674
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 675
    iput v7, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 1127
    new-instance v0, Lcom/android/server/WifiOffloadService$7;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$7;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    .line 1142
    new-instance v0, Lcom/android/server/WifiOffloadService$8;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$8;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    .line 1261
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1326
    new-instance v0, Lcom/android/server/WifiOffloadService$9;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$9;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1357
    new-instance v0, Lcom/android/server/WifiOffloadService$10;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$10;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    .line 2109
    iput v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 235
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    .line 237
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "WifiOffloadService is started . . ."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->createWiFiOffloadDB()V

    .line 241
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 250
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 251
    const-string v0, "WifiOffloadService"

    const-string v1, "WifiManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 257
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->am:Landroid/app/ActivityManager;

    .line 259
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 262
    const-string v0, "persist.offload.dontuse.time"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "persist.offload.datausage.limit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->hasNetworkInRange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    sput-boolean p0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    return p0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    return p0
.end method

.method static synthetic access$1702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/WifiOffloadService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->insertDataUsage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiOffloadService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->EXTRA_SSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiOffloadService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiOffloadService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/WifiOffloadService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide p1
.end method

.method private checkInExceptionalAppList(Ljava/lang/String;)Z
    .locals 5
    .parameter "appName"

    .prologue
    const/4 v1, 0x0

    .line 1827
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1836
    :cond_0
    :goto_0
    return v1

    .line 1829
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1830
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_2
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1832
    const/4 v1, 0x1

    goto :goto_0

    .line 1829
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkInWifiOnlyAppList(Ljava/lang/String;)Z
    .locals 5
    .parameter "appName"

    .prologue
    const/4 v1, 0x0

    .line 1854
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return v1

    .line 1856
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1857
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_2
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1859
    const/4 v1, 0x1

    goto :goto_0

    .line 1856
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkInternetPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2080
    const/4 v0, -0x1

    .line 2083
    .local v0, perm:I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2086
    :goto_0
    if-nez v0, :cond_0

    .line 2087
    const/4 v1, 0x1

    .line 2089
    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2084
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private checkSignalStrength(Ljava/lang/String;)Z
    .locals 7
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 487
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 488
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 489
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 490
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 492
    .local v1, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 493
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_2

    .line 501
    .end local v0           #iterator:Ljava/util/Iterator;
    .end local v1           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return v4

    .line 497
    .restart local v0       #iterator:Ljava/util/Iterator;
    .restart local v1       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 1551
    if-nez p0, :cond_1

    .line 1552
    const-string p0, ""

    .line 1563
    .end local p0
    .local v0, lastPos:I
    :cond_0
    :goto_0
    return-object p0

    .line 1554
    .end local v0           #lastPos:I
    .restart local p0
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1555
    const-string p0, ""

    goto :goto_0

    .line 1558
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1559
    .restart local v0       #lastPos:I
    if-ltz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1560
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 2053
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2055
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 2056
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2058
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataUsageforUID(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1908
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "getDataUsageforApp ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$12;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2025
    return-void
.end method

.method private getDialogShown()Z
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private getDialogStatusCount(I)I
    .locals 11
    .parameter "stationID"

    .prologue
    const/4 v10, 0x0

    .line 1675
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1676
    const-string v0, "WifiOffloadService"

    const-string v1, "getDialogStatusCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1680
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1681
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1683
    .local v7, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1693
    .end local v7           #count:I
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_0
    return v7

    .line 1686
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v7, v10

    .line 1693
    goto :goto_0

    .line 1689
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1690
    .local v9, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in getDialogStatusCount for Cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v7, v10

    .line 1691
    goto :goto_0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1471
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiState()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private hasNetworkInRange()V
    .locals 7

    .prologue
    .line 1165
    iget v5, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v4

    .line 1166
    .local v4, wifiLocationNetworks:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 1167
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 1168
    .local v3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v3, :cond_1

    .line 1183
    .end local v3           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :goto_0
    return-void

    .line 1170
    .restart local v3       #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1172
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 1173
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v5, v6, :cond_0

    .line 1175
    aget-object v5, v4, v0

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1176
    sget-boolean v5, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiOffloadService"

    const-string v6, "Wifi was OFF so if ssid is available in SCAN Results turning ON Wi-Fi will connect to AP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1172
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1181
    .end local v0           #i:I
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    goto :goto_0
.end method

.method private insertDataUsage(I)Z
    .locals 6
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    .line 2063
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertDataUsage for uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2066
    .local v0, cvalues:Landroid/content/ContentValues;
    const-string v3, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2067
    const-string v3, "pkgname"

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v3, "launchcount"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2069
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "data_usage"

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    .end local v0           #cvalues:Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 2071
    :catch_0
    move-exception v1

    .line 2072
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in insertDataUsage for dbHelper"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 777
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 779
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 783
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 779
    goto :goto_0

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadService"

    const-string v4, "Settings AIRPLANE_MODE_ON not found"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    .line 783
    goto :goto_0
.end method

.method private isAnyDataActivity()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 831
    const/4 v0, 0x0

    .line 833
    .local v0, counter:I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_3

    .line 834
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isMobileDataActive()I

    move-result v1

    .line 836
    .local v1, dataActivity:I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 849
    .end local v1           #dataActivity:I
    :cond_0
    :goto_1
    return v3

    .line 842
    .restart local v1       #dataActivity:I
    :cond_1
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    :catch_0
    move-exception v2

    .line 844
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "WifiOffloadService"

    const-string v5, "Unable to put worker thread to sleep"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 849
    .end local v1           #dataActivity:I
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCurrentProcessRunning(Ljava/lang/String;)V
    .locals 2
    .parameter "processName"

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 998
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$6;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private isForeGroundAppRunning()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1867
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    .line 1868
    const-string v3, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForeGroundAppRunning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1871
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1872
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1873
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForeGroundAppRunning  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 1881
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    return v3

    .line 1878
    :catch_0
    move-exception v1

    .line 1879
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "WifiOffloadService"

    const-string v4, "Exception in isForeGroundAppRunning check"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v5

    .line 1881
    goto :goto_0
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 792
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    .line 796
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v2, "No wifiManager."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 804
    :goto_0
    return v0

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    .line 800
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiOffloadService"

    const-string v2, "Hotspot is ON"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    .line 801
    goto :goto_0

    .line 803
    :cond_4
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "WifiOffloadService"

    const-string v1, "Hotspot is Off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 6

    .prologue
    .line 814
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 815
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 816
    .local v2, netInfo:Landroid/net/NetworkInfo;
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isP2pEnabled():: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 821
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 818
    :catch_0
    move-exception v1

    .line 819
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiOffloadService"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTempPopupBlocked(I)Z
    .locals 2
    .parameter "stationID"

    .prologue
    .line 1663
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_1

    .line 1664
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "back key logic we are on the same base station"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1668
    :goto_0
    return v0

    .line 1667
    :cond_1
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiOffloadService"

    const-string v1, "back key logic, looks like location changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isdontUseWifiTimerRuning(I)Z
    .locals 5
    .parameter "stationID"

    .prologue
    const/4 v0, 0x0

    .line 697
    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    if-eqz v1, :cond_3

    .line 698
    iget v1, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    if-ne v1, p1, :cond_2

    .line 699
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer is runing but location didn\'t change, TIMER_DELAY) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 701
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v2, ">>>>>>>>>>>>>>>>>>>timer didn\'t executed so resetting the flag in diff location!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 704
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 711
    :goto_0
    return v0

    .line 707
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    goto :goto_0

    .line 711
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    goto :goto_0
.end method

.method private notifyDataUsageObject()V
    .locals 2

    .prologue
    .line 2028
    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v1

    .line 2029
    :try_start_0
    sget-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2030
    monitor-exit v1

    .line 2031
    return-void

    .line 2030
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWaitForDialogShown()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1234
    return-void
.end method

.method private setWifiState(I)V
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 232
    return-void
.end method

.method private showAppRunningOverWifiDialog()V
    .locals 6

    .prologue
    .line 524
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiOffloadService"

    const-string v4, "showAppRunningOverWifiDialog ---------------->>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 530
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, counter:I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #counter:I
    .local v1, counter:I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 535
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 536
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    goto :goto_0

    .end local v0           #counter:I
    .restart local v1       #counter:I
    :cond_2
    move v0, v1

    .line 539
    .end local v1           #counter:I
    .restart local v0       #counter:I
    :cond_3
    return-void
.end method

.method public static waitTillDialogDisplayed(I)V
    .locals 5
    .parameter "n"

    .prologue
    .line 1213
    sget-object v2, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1215
    :try_start_0
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v3, "<<<<<<<<<<<<<<<< Waiting Till Dialog is created >>>>>>>>>>>"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1221
    return-void

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiOffloadService"

    const-string v3, "<<<<<<<<<<<<<<<< Waitinption while waiting >>>>>>>>>>>"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 1302
    packed-switch p0, :pswitch_data_0

    .line 1312
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 1304
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1306
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1308
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1310
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blockWifiPopup(IZ)Z
    .locals 4
    .parameter "mStationId"
    .parameter "isBlock"

    .prologue
    const/4 v3, 0x1

    .line 1625
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_3

    .line 1626
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1627
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "wifi offload : Okay, we can show pop up next time"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_0
    :goto_0
    return v3

    .line 1629
    :cond_1
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temporary pop up blocked is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_2
    sput-boolean p2, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1631
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V

    goto :goto_0

    .line 1635
    :cond_3
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiOffloadService"

    const-string v1, "wifi offload : different station id so reset value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1637
    sput v3, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 1638
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    goto :goto_0
.end method

.method public canAppOffload(Ljava/lang/String;)Z
    .locals 4
    .parameter "packagName"

    .prologue
    .line 2036
    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v1

    .line 2037
    :try_start_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v2, "Calling data usage in seperate thread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->getDataUsageforUID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    :try_start_1
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v2, "waiting here"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_1
    sget-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2045
    :goto_0
    :try_start_2
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning the offload value as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    monitor-exit v1

    return v0

    .line 2047
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2043
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 4
    .parameter "taskID"

    .prologue
    .line 1243
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "Move task to front..!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1246
    .local v1, manager:Landroid/app/IActivityManager;
    const/4 v2, 0x2

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->moveTaskToFront(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception move task to front"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    .line 964
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 965
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "test 1 passed for starting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    const/4 v1, -0x1

    .line 969
    .local v1, perm:I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 973
    :goto_0
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doing test 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 976
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    .line 988
    .end local v1           #perm:I
    :cond_2
    :goto_1
    return-void

    .line 970
    .restart local v1       #perm:I
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0

    .line 979
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 980
    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->canAppOffload(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 982
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "WifiOffloadService"

    const-string v3, "Now turning ON wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_4
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    .line 986
    :cond_5
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiOffloadService"

    const-string v3, "starting activity now"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkIsWifiConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1264
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1267
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    move v1, v2

    .line 1291
    :goto_0
    return v1

    .line 1270
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1272
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1273
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1274
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiOffloadService"

    const-string v3, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 1275
    goto :goto_0

    .line 1278
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1280
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1281
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_4

    move v1, v2

    .line 1282
    goto :goto_0

    .line 1284
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1285
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1286
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "WifiOffloadService"

    const-string v2, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v3

    .line 1287
    goto :goto_0

    .line 1289
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1290
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "WifiOffloadService"

    const-string v3, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v1, v2

    .line 1291
    goto :goto_0
.end method

.method public checkisScreenOn()Z
    .locals 4

    .prologue
    .line 1572
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "checkisScreenOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1575
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1578
    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_0
    return v2

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception when checking is screen on"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearAllAccessPoints()V
    .locals 6

    .prologue
    .line 2168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :goto_0
    return-void

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    const-string v2, "Exception in test api clearAllAccessPoints"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public collectWiFiDetails()V
    .locals 3

    .prologue
    .line 1451
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v2, "getWiFiDetails()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 1454
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1456
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_3

    .line 1465
    :cond_2
    :goto_0
    return-void

    .line 1459
    :cond_3
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1460
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_2

    .line 1461
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiBSSID(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiSSID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createWiFiOffloadDB()V
    .locals 4

    .prologue
    .line 1319
    :try_start_0
    new-instance v1, Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi_offload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 1320
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    invoke-virtual {v1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    :goto_0
    return-void

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in create WifiOffloadDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteNetwork(Ljava/lang/String;)I
    .locals 7
    .parameter "networkName"

    .prologue
    .line 1889
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    .line 1890
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_0
    const/4 v1, 0x0

    .line 1893
    .local v1, rows:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifissid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1897
    :cond_1
    :goto_0
    if-lez v1, :cond_2

    .line 1898
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_2
    return v1

    .line 1894
    :catch_0
    move-exception v0

    .line 1895
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in delete network"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "pkgName"
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    .line 934
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v2, "doOffloadStuff()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v0

    .line 937
    .local v0, wifiIntelligentMode:Z
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiIntelligentMode value for intelligent mode :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_1
    if-eqz v0, :cond_3

    .line 940
    if-eqz p1, :cond_5

    .line 941
    sget-object v2, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 942
    :try_start_0
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process pkName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    :try_start_1
    sget-object v1, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 948
    :goto_0
    :try_start_2
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    if-eqz v1, :cond_4

    .line 949
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    .line 950
    monitor-exit v2

    .line 959
    :cond_3
    :goto_1
    return v5

    .line 952
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 955
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->setDontuseWifiPressed(Z)V

    .line 956
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offload pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 952
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 946
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getActualState()I
    .locals 4

    .prologue
    const/4 v0, 0x4

    .line 1027
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE not granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_0
    :goto_0
    return v0

    .line 1031
    :cond_1
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE is granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->wifiStateToFiveState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAvailableSSIDNames()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2117
    const/4 v10, 0x0

    .line 2118
    .local v10, ssIDs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2120
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    const-string v3, "wifissid <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2126
    if-eqz v7, :cond_2

    .line 2127
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 2128
    const/4 v8, 0x0

    .line 2129
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2131
    :cond_0
    const-string v0, "wifissid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 2132
    add-int/lit8 v8, v8, 0x1

    .line 2133
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2135
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    .line 2138
    .end local v8           #count:I
    :goto_0
    return-object v0

    .line 2121
    :catch_0
    move-exception v9

    .line 2122
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in getAvailableSSIDNames for dbHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 2123
    goto :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    move-object v0, v11

    .line 2138
    goto :goto_0
.end method

.method public getCDMABaseStationID()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 1481
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiOffloadService"

    const-string v5, "getCDMABaseStationID()"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    const/4 v0, -0x1

    .line 1484
    .local v0, baseStation:I
    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    if-eq v3, v4, :cond_1

    .line 1485
    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 1546
    :goto_0
    return v3

    .line 1487
    :cond_1
    const/4 v2, -0x1

    .line 1489
    .local v2, phoneType:I
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    .line 1490
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    move v3, v4

    .line 1491
    goto :goto_0

    .line 1512
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 1513
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_3
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1517
    .local v1, cellLocation:Landroid/telephony/CellLocation;
    if-nez v1, :cond_5

    .line 1518
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "WifiOffloadService"

    const-string v5, "CellLocation is NULL, return -1"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v4

    .line 1519
    goto :goto_0

    .line 1522
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1523
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_8

    .line 1524
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1           #cellLocation:Landroid/telephony/CellLocation;
    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1525
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v3, :cond_7

    .line 1526
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "WifiOffloadService"

    const-string v5, "CDMA location is null"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v3, v4

    .line 1527
    goto :goto_0

    .line 1529
    :cond_7
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 1543
    :cond_8
    :goto_1
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseStation ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    move v3, v0

    .line 1546
    goto/16 :goto_0

    .line 1532
    .restart local v1       #cellLocation:Landroid/telephony/CellLocation;
    :cond_a
    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1533
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_8

    .line 1534
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1           #cellLocation:Landroid/telephony/CellLocation;
    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 1535
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    if-nez v3, :cond_c

    .line 1536
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "WifiOffloadService"

    const-string v5, "GSM location is null"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v3, v4

    .line 1537
    goto/16 :goto_0

    .line 1539
    :cond_c
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_1
.end method

.method public getIntelligentWifiEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 748
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 750
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_offload_monitoring"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 751
    const-string v1, "wifi_use_intelligent_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 750
    goto :goto_0

    :cond_1
    move v2, v3

    .line 751
    goto :goto_1
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWifiScannedTime()J
    .locals 4

    .prologue
    .line 1187
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning the last scanned time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_0
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method public getNeverTurnonWiFiValue()I
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1761
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    if-eqz v0, :cond_0

    .line 1779
    :goto_0
    return v7

    .line 1765
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1766
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1767
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1769
    .local v7, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1775
    .end local v7           #count:I
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1776
    .local v9, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in getNeverTurnonWiFiValue for Cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v7, v10

    .line 1777
    goto :goto_0

    .line 1772
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v7, v10

    .line 1779
    goto :goto_0
.end method

.method public getStationID()I
    .locals 1

    .prologue
    .line 2213
    iget v0, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return v0
.end method

.method public getWifiAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public intelScanMode(Z)Z
    .locals 5
    .parameter "intelMode"

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 903
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 904
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 919
    .end local v0           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return v1

    .line 908
    :cond_1
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ichecking if supplicant running ?? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->pingSupplicant()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 911
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplicant is running and setting new scan interval values to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    .line 913
    const/16 v2, 0x8

    invoke-static {v2, p1}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v2

    if-nez v2, :cond_0

    .line 914
    const/4 v1, 0x1

    goto :goto_0

    .line 918
    :cond_4
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "Supplicant is not running; not able to set scan interval values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1803
    if-nez p1, :cond_0

    .line 1804
    const/4 v0, 0x0

    .line 1805
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInExceptionalAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 1842
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1843
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1844
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1845
    const/4 v1, 0x1

    .line 1849
    .end local v0           #j:I
    :goto_1
    return v1

    .line 1843
    .restart local v0       #j:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1849
    .end local v0           #j:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isDontUseWifiPressed()Z
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return v0
.end method

.method public isIntelScanModeEnabled()Z
    .locals 3

    .prologue
    .line 925
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is intel scan mode enabled ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    return v0
.end method

.method public isMobileDataActive()I
    .locals 4

    .prologue
    .line 858
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 859
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 860
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "No Telephony manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    const/4 v0, 0x2

    .line 866
    :goto_0
    return v0

    .line 864
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    .line 866
    .local v0, activity:I
    goto :goto_0
.end method

.method public isNotifyMeChecked()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 761
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 763
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "wifi_offload_network_notify"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 767
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 763
    goto :goto_0

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadService"

    const-string v4, "exception happened while checking NotifyMe"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    .line 767
    goto :goto_0
.end method

.method public isUIDAvailable(I)Z
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v2, 0x0

    .line 2095
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "data_usage"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2096
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 2097
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2098
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2099
    const/4 v0, 0x0

    .line 2103
    :goto_0
    return v0

    .line 2102
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 1

    .prologue
    .line 1811
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    return v0
.end method

.method public isWifiOnlyApp(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 1815
    if-nez p1, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return v0

    .line 1818
    :cond_1
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 1821
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInWifiOnlyAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWifiSeamlessConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 895
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 896
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "wifi_connect_seamlessly"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public notifyDialogDisplayed(I)V
    .locals 3
    .parameter "dialogNum"

    .prologue
    .line 1224
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1225
    :try_start_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v2, "<<<<<<<<<<<<<<<< Wait Completed. Dialog created OR error returned >>>>>>>>>>>"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1227
    sget-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1228
    monitor-exit v1

    .line 1229
    return-void

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActualStateChange(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1254
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1257
    :cond_0
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1258
    .local v0, wifiState:I
    goto :goto_0
.end method

.method protected requestStateChange()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1100
    const/4 v0, 0x0

    .line 1101
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1104
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_2

    .line 1105
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    const-string v4, "No wifiManager."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v3

    .line 1121
    :goto_0
    return v2

    .line 1110
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v1

    .line 1111
    .local v1, wifi_state:I
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_3
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "WifiOffloadService"

    const-string v4, "Calling setWifiEnabledDialog() from requestStateChange"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    .line 1115
    goto :goto_0

    .line 1117
    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1118
    const-string v2, "WifiOffloadService"

    const-string v3, "Wifi state is enabled but not connected so calling our API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->showAPDialog()Z

    move-result v0

    :cond_6
    move v2, v0

    .line 1121
    goto :goto_0
.end method

.method protected requestStateChange(Ljava/lang/String;)Z
    .locals 11
    .parameter "networkName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1041
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    .line 1042
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1044
    :cond_0
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_2

    .line 1045
    sget-boolean v6, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "WifiOffloadService"

    const-string v8, "No wifiManager."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v6, v7

    .line 1080
    :goto_0
    return v6

    .line 1049
    :cond_2
    const/4 v4, 0x0

    .line 1053
    .local v4, nowWaitForConnection:I
    sget-boolean v6, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ok, wifi is not connected, try to enable network : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_3
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1055
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1057
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    sget-boolean v6, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configuration is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_5
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1059
    .local v5, ssid:Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SSID is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_6
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1062
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1063
    .local v3, netId:I
    const-string v6, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enable network for SSID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1065
    const-string v6, "WifiOffloadService"

    const-string v9, "enableNetwork passed"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1071
    const-string v6, "WifiOffloadService"

    const-string v7, "Connected "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1072
    goto/16 :goto_0

    .line 1067
    :cond_7
    const-string v6, "WifiOffloadService"

    const-string v8, "failed enableNetwork"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1068
    goto/16 :goto_0

    .line 1074
    :cond_8
    const-string v6, "WifiOffloadService"

    const-string v8, "failed to connect"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1075
    goto/16 :goto_0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #netId:I
    .end local v5           #ssid:Ljava/lang/String;
    :cond_9
    move v6, v7

    .line 1080
    goto/16 :goto_0
.end method

.method protected requestStateChange(Z)Z
    .locals 3
    .parameter "desiredState"

    .prologue
    .line 1085
    const/4 v0, 0x1

    .line 1087
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 1091
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiOffloadService"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_1
    const/4 v1, 0x0

    .line 1095
    :goto_0
    return v1

    .line 1094
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    move v1, v0

    .line 1095
    goto :goto_0
.end method

.method public requestWifiListForStationID(I)[Ljava/lang/String;
    .locals 11
    .parameter "stationID"

    .prologue
    .line 1590
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "requestWifiListForStationID()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning performed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_1
    iget v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 1594
    const/4 v7, 0x0

    .line 1595
    .local v7, availableWiFi:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1597
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1602
    :goto_0
    if-eqz v9, :cond_4

    .line 1603
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1604
    const/4 v8, 0x0

    .line 1605
    .local v8, count:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 1607
    :cond_2
    const-string v0, "wifissid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 1608
    add-int/lit8 v8, v8, 0x1

    .line 1609
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1611
    .end local v8           #count:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1613
    :cond_4
    return-object v7

    .line 1598
    :catch_0
    move-exception v10

    .line 1599
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetCurrentTestBaseStationID()V
    .locals 1

    .prologue
    .line 2150
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 2151
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 2152
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 2153
    return-void
.end method

.method public resetNeverTurnOnWifi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1785
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetNeverTurnOnWifi() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    if-eqz v0, :cond_1

    .line 1787
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 1788
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 1789
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Timer is reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1793
    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1794
    return-void
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .locals 2
    .parameter "value"
    .parameter "isDontShowChecked"

    .prologue
    .line 543
    iput p1, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 544
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "notification came"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 547
    monitor-exit v1

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentTestBaseStationID(I)V
    .locals 1
    .parameter "stationID"

    .prologue
    .line 2143
    iput p1, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 2144
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 2145
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 2147
    return-void
.end method

.method public setDontuseWifiPressed(Z)V
    .locals 0
    .parameter "isPressed"

    .prologue
    .line 886
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 887
    return-void
.end method

.method public setNeverTurnOnWifi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1797
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "setNeverTurnOnWifi()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1799
    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1800
    return-void
.end method

.method public setStationID(I)V
    .locals 0
    .parameter "stationID"

    .prologue
    .line 2207
    iput p1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 2208
    return-void
.end method

.method public setWifiAuth(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiAuth"

    .prologue
    .line 2198
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 2199
    return-void
.end method

.method public setWifiBSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiBSSID"

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 2191
    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiSSID"

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 2183
    return-void
.end method

.method public showAPDialog()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1193
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1194
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiOffloadService"

    const-string v4, "Going to show AP dialog now"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v2, startDialogIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1197
    const-string v3, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1199
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    .line 1200
    const/4 v0, 0x0

    .line 1201
    .local v0, counter:I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #counter:I
    .local v1, counter:I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 1202
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1203
    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    goto :goto_0

    .line 1207
    .end local v0           #counter:I
    .end local v2           #startDialogIntent:Landroid/content/Intent;
    :cond_1
    return v6
.end method

.method public startBackKeyTimer()V
    .locals 4

    .prologue
    .line 1646
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    .line 1648
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$11;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$11;-><init>(Lcom/android/server/WifiOffloadService;)V

    const-wide/32 v2, 0x668a0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1659
    return-void
.end method

.method public startDataActivityTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 598
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 603
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 604
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$4;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$4;-><init>(Lcom/android/server/WifiOffloadService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public startDataActivityTimerOnce(Ljava/lang/String;Z)V
    .locals 4
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    .line 643
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 646
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/WifiOffloadService$5;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 670
    return-void
.end method

.method public startDontUseWiFiPressedTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 677
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v2, "started Timer when user pressed Don\'t use WiFi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 680
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    .line 681
    .local v0, baseStation:I
    iput v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    .line 684
    const-string v1, "persist.offload.dontuse.time"

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 685
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer dealy -- >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    iget v3, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 687
    iget v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 688
    iput v5, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_1
    iget v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    goto :goto_0
.end method

.method public stopDataActivityTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 624
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside stopDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 630
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public storeWiFiDetails()V
    .locals 5

    .prologue
    .line 1432
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    .line 1433
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeWiFiDetails"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getWifiBSSID() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1436
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1437
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "stationid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1438
    const-string v2, "wifissid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v2, "wifibssid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const-string v2, "lastuseddate"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1441
    const-string v2, "dialogstatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1442
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "wifi_data"

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v1

    .line 1445
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in StoreWiFiDetais()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    const/4 v1, 0x1

    .line 725
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v0

    .line 730
    .local v0, state:I
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait for data activity is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    if-eqz p2, :cond_2

    .line 733
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 734
    const/4 v1, 0x0

    .line 739
    :cond_1
    :goto_0
    return v1

    .line 736
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateBaseStationIDs(Ljava/lang/String;I)V
    .locals 7
    .parameter "ssid"
    .parameter "stationID"

    .prologue
    .line 2156
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2157
    .local v2, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifissid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    :goto_0
    return-void

    .line 2160
    :catch_0
    move-exception v6

    .line 2161
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in test api updateBaseStationIDs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDialogStatus(I)V
    .locals 10
    .parameter "stationID"

    .prologue
    .line 1704
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogStatus "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_0
    iput p1, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 1707
    const/4 v8, 0x1

    .line 1709
    .local v8, resetDialogCount:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1710
    .local v2, cv:Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1711
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1715
    const/4 v9, 0x0

    .line 1717
    .local v9, rows:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1718
    if-lez v9, :cond_2

    .line 1719
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_1
    :goto_0
    return-void

    .line 1721
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1722
    .local v6, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1723
    const-string v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1726
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1727
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1729
    .end local v6           #cvalues:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1730
    .local v7, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in updateDialogStatus for dbHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNeverTurnOnWiFi(I)V
    .locals 9
    .parameter "value"

    .prologue
    .line 1736
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "updateNeverTurnOnWiFi to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1738
    .local v2, cv:Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1740
    const/4 v8, 0x0

    .line 1742
    .local v8, rows:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1743
    if-lez v8, :cond_2

    .line 1744
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_1
    :goto_0
    return-void

    .line 1746
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1747
    .local v6, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1748
    const-string v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string v0, "lastuseddate"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1751
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1752
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1754
    .end local v6           #cvalues:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1755
    .local v7, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in updateNeverTurnOnWiFi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasWiFiReallyOn()Z
    .locals 1

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return v0
.end method

.method public declared-synchronized wifiOffloadFlow(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Main function called "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 282
    iget v8, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 284
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v5

    .line 286
    .local v5, intel:Z
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    if-nez v5, :cond_3

    .line 289
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "WifiOffloadService"

    const-string v9, "Wi-Fi intelligent mode is not set to ON; return false"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_2
    const/4 v8, 0x0

    .line 480
    :goto_0
    monitor-exit p0

    return v8

    .line 294
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 295
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_4

    const-string v8, "WifiOffloadService"

    const-string v9, "WiFi is already connected; return false"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 298
    :cond_5
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAirplaneModeOn()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isHotspotOn()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isP2pEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 299
    :cond_6
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_7

    const-string v8, "WifiOffloadService"

    const-string v9, "Airplane plane OR hotspot OR Wi-Fi Direct is ON; return false"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    .line 305
    :cond_8
    const/4 v1, 0x0

    .line 306
    .local v1, data_counter:I
    if-eqz p2, :cond_d

    move v2, v1

    .line 307
    .end local v1           #data_counter:I
    .local v2, data_counter:I
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 310
    add-int/lit8 v1, v2, 0x1

    .end local v2           #data_counter:I
    .restart local v1       #data_counter:I
    const/16 v8, 0x32

    if-le v2, v8, :cond_a

    .line 311
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_9

    const-string v8, "WifiOffloadService"

    const-string v9, "returning since data activity is going on for more than 10 Secs"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :cond_9
    const/4 v8, 0x0

    goto :goto_0

    .line 316
    :cond_a
    const-wide/16 v8, 0xc8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v1

    .line 319
    .end local v1           #data_counter:I
    .restart local v2       #data_counter:I
    goto :goto_1

    .line 317
    .end local v2           #data_counter:I
    .restart local v1       #data_counter:I
    :catch_0
    move-exception v3

    .line 318
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_b

    const-string v8, "WifiOffloadService"

    const-string v9, "Unable to put worker thread to sleep"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    move v2, v1

    .line 319
    .end local v1           #data_counter:I
    .restart local v2       #data_counter:I
    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :cond_c
    move v1, v2

    .line 323
    .end local v2           #data_counter:I
    .restart local v1       #data_counter:I
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v8

    iput v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    .line 326
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    invoke-direct {p0, v8}, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 327
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_e

    const-string v8, "WifiOffloadService"

    const-string v9, "isdontUseWifiTimerRuning is true dont offload"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 331
    :cond_f
    const/4 v7, 0x0

    .line 332
    .local v7, nowWaitForConnection:Z
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    if-nez v8, :cond_13

    .line 333
    :cond_10
    const-string v8, "WifiOffloadService"

    const-string v9, "No Offloading since Base station ID returned -1 or 0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v8

    if-eqz v8, :cond_12

    if-nez p2, :cond_12

    .line 336
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_11

    const-string v8, "WifiOffloadService"

    const-string v9, "Base Station is -1 but wifi is ON show the dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->showAPDialog()Z

    .line 339
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 341
    :cond_13
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, networkList:[Ljava/lang/String;
    if-eqz v6, :cond_14

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    array-length v8, v6

    const/4 v9, 0x1

    if-gt v8, v9, :cond_1e

    .line 344
    :cond_14
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 346
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-nez v8, :cond_16

    .line 347
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_15

    const-string v8, "WifiOffloadService"

    const-string v9, "No networks and wifi is off so don\'t offload"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 352
    :cond_16
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_17

    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    if-nez v8, :cond_19

    .line 361
    :cond_17
    :goto_2
    if-eqz p2, :cond_1c

    .line 362
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_18

    const-string v8, "WifiOffloadService"

    const-string v9, "if there is no network in wifi offload DB dont turn on wifi just return false"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 355
    :cond_19
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_1a

    const-string v8, "WifiOffloadService"

    const-string v9, "Setting intel mode scan interval to TRUE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1a
    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1b

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->intelScanMode(Z)Z

    .line 359
    :cond_1b
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_17

    const-string v8, "WifiOffloadService"

    const-string v9, "Setting intel mode scan done "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 280
    .end local v1           #data_counter:I
    .end local v5           #intel:Z
    .end local v6           #networkList:[Ljava/lang/String;
    .end local v7           #nowWaitForConnection:Z
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 366
    .restart local v1       #data_counter:I
    .restart local v5       #intel:Z
    .restart local v6       #networkList:[Ljava/lang/String;
    .restart local v7       #nowWaitForConnection:Z
    :cond_1c
    :try_start_4
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_1d

    const-string v8, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNotifyMeChecked :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v8

    if-nez v8, :cond_24

    .line 369
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 372
    :cond_1e
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 374
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    array-length v8, v6

    if-ge v4, v8, :cond_24

    .line 375
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_1f

    const-string v8, "WifiOffloadService"

    const-string v9, "requestStateChange : status true"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1f
    if-eqz p2, :cond_20

    .line 378
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 381
    :cond_20
    aget-object v8, v6, v4

    invoke-direct {p0, v8}, Lcom/android/server/WifiOffloadService;->checkSignalStrength(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 382
    aget-object v8, v6, v4

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->requestStateChange(Ljava/lang/String;)Z

    move-result v7

    .line 374
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 385
    :cond_21
    const/4 v7, 0x0

    goto :goto_4

    .line 390
    .end local v4           #i:I
    :cond_22
    if-eqz p2, :cond_23

    .line 393
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 396
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 397
    const-string v8, "WifiOffloadService"

    const-string v9, "Connect WiFi seamlessly"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 399
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 400
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z

    move-result v7

    .line 438
    :cond_24
    :goto_5
    const/4 v0, 0x0

    .line 439
    .local v0, counter:I
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_25

    const-string v8, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestStateChange returned nowWaitForConnection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_25
    :goto_6
    if-eqz v7, :cond_31

    const/16 v8, 0x64

    if-ge v0, v8, :cond_31

    .line 442
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v9, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v8, v9, :cond_30

    .line 443
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_26

    const-string v8, "WifiOffloadService"

    const-string v9, "Association completed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_26
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 402
    .end local v0           #counter:I
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v8

    if-nez v8, :cond_29

    .line 403
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_28

    const-string v8, "WifiOffloadService"

    const-string v9, "Notify Me is unchecked, don\'t offload"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_28
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 406
    :cond_29
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 407
    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/WifiOffloadService;->setAppRunOverWiFiResult(IZ)V

    .line 408
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->showAppRunningOverWifiDialog()V

    .line 410
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 412
    :try_start_5
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_2a

    const-string v8, "WifiOffloadService"

    const-string v10, "Waiting for user response"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2a
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    const-wide/32 v10, 0x927c0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 417
    :goto_7
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 418
    :try_start_7
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_2b

    const-string v8, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appRunOverWiFiResult: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_2b
    iget v8, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v9, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    if-ne v8, v9, :cond_2c

    .line 420
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 421
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v7

    goto/16 :goto_5

    .line 414
    :catch_1
    move-exception v3

    .line 415
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v8, "WifiOffloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 417
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v8

    .line 422
    :cond_2c
    iget v8, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v9, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    if-ne v8, v9, :cond_2d

    .line 423
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startDontUseWiFiPressedTimer()V

    .line 424
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 425
    :cond_2d
    iget v8, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v9, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    if-ne v8, v9, :cond_2e

    .line 426
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 428
    :cond_2e
    iget v8, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_24

    .line 429
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_2f

    const-string v8, "WifiOffloadService"

    const-string v9, " wifiOffloadFlow ---- TIMEOUT!!!:"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_2f
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 446
    .restart local v0       #counter:I
    :cond_30
    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    if-eqz v8, :cond_35

    .line 447
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    .line 448
    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-nez v8, :cond_25

    .line 449
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_31

    const-string v8, "WifiOffloadService"

    const-string v9, "Unable to connect to known network since not in range, show AP list dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_31
    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-eqz v8, :cond_37

    .line 464
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_32

    const-string v8, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoConnect: mSeamlessConnectWhileConnecting  is true "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_32
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_34

    .line 466
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_33

    const-string v8, "WifiOffloadService"

    const-string v9, "AutoConnect unable to CONNNECT : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_33
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 470
    :cond_34
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 455
    :cond_35
    const-wide/16 v8, 0xc8

    :try_start_a
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 459
    :cond_36
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 456
    :catch_2
    move-exception v3

    .line 457
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_b
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_36

    const-string v8, "WifiOffloadService"

    const-string v9, "Unable to put worker thread to sleep"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 473
    .end local v3           #e:Ljava/lang/Exception;
    :cond_37
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_38

    const-string v8, "WifiOffloadService"

    const-string v9, "enableNetwork API failed based on location, try to call standard API"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_38
    if-nez p2, :cond_3a

    .line 476
    sget-boolean v8, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v8, :cond_39

    const-string v8, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWaitrequired "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_39
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    invoke-direct {p0, v8}, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning(I)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 478
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->requestStateChange()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 480
    :cond_3a
    const/4 v8, 0x1

    goto/16 :goto_0
.end method
