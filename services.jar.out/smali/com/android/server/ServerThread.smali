.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field public static mStartTime:J


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1074
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1075
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1077
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1079
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 113
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return-void
.end method

.method public run()V
    .locals 124

    .prologue
    .line 119
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 123
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 125
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 129
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 133
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .line 135
    .local v99, shutdownAction:Ljava/lang/String;
    if-eqz v99, :cond_0

    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 136
    const/4 v3, 0x0

    move-object/from16 v0, v99

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_12

    const/16 v96, 0x1

    .line 139
    .local v96, reboot:Z
    :goto_0
    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_13

    .line 140
    const/4 v3, 0x1

    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v99

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v95

    .line 145
    .local v95, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v96

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 149
    .end local v95           #reason:Ljava/lang/String;
    .end local v96           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 150
    .local v70, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v69, 0x0

    .line 153
    .local v69, factoryTest:I
    :goto_2
    const/16 v76, 0x0

    .line 154
    .local v76, lights:Lcom/android/server/LightsService;
    const/16 v93, 0x0

    .line 155
    .local v93, power:Lcom/android/server/PowerManagerService;
    const/16 v45, 0x0

    .line 156
    .local v45, battery:Lcom/android/server/BatteryService;
    const/16 v39, 0x0

    .line 157
    .local v39, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 158
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 159
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v84, 0x0

    .line 160
    .local v84, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v52, 0x0

    .line 161
    .local v52, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v121, 0x0

    .line 162
    .local v121, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v119, 0x0

    .line 163
    .local v119, wifi:Lcom/android/server/WifiService;
    const/16 v117, 0x0

    .line 164
    .local v117, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v92, 0x0

    .line 165
    .local v92, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 166
    .local v4, context:Landroid/content/Context;
    const/16 v123, 0x0

    .line 167
    .local v123, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v46, 0x0

    .line 168
    .local v46, bluetooth:Landroid/server/BluetoothService;
    const/16 v48, 0x0

    .line 169
    .local v48, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v43, 0x0

    .line 170
    .local v43, avrcp:Landroid/server/AvrcpStubService;
    const/16 v64, 0x0

    .line 171
    .local v64, dock:Lcom/android/server/DockObserver;
    const/16 v102, 0x0

    .line 172
    .local v102, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v112, 0x0

    .line 173
    .local v112, usb:Lcom/android/server/usb/UsbService;
    const/16 v110, 0x0

    .line 174
    .local v110, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v97, 0x0

    .line 175
    .local v97, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v104, 0x0

    .line 176
    .local v104, throttle:Lcom/android/server/ThrottleService;
    const/16 v86, 0x0

    .line 179
    .local v86, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v60, 0x0

    .line 182
    .local v60, dEncService:Lcom/android/server/DirEncryptService;
    const/16 v58, 0x0

    .line 186
    .local v58, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4d

    .line 191
    .end local v93           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 193
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static/range {v69 .. v69}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 196
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 205
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 207
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 210
    .local v57, cryptState:Ljava/lang/String;
    const/16 v90, 0x0

    .line 211
    .local v90, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 212
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v90, 0x1

    .line 219
    :cond_1
    :goto_3
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz v69, :cond_16

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v90

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v92

    .line 223
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    const/16 v71, 0x0

    .line 226
    .local v71, firstBoot:Z
    :try_start_2
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v71

    .line 230
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 232
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 236
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 244
    :goto_6
    :try_start_5
    const-string v3, ""

    const-string v9, "KT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    :cond_2
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v3, 0x1

    move/from16 v0, v69

    if-ne v0, v3, :cond_17

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 261
    new-instance v61, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 263
    .end local v60           #dEncService:Lcom/android/server/DirEncryptService;
    .local v61, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_6
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_3

    .line 264
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4e

    :cond_3
    move-object/from16 v60, v61

    .line 270
    .end local v61           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v60       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_8
    if-eqz v60, :cond_4

    .line 271
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 276
    :cond_4
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 279
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v77, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 282
    .end local v76           #lights:Lcom/android/server/LightsService;
    .local v77, lights:Lcom/android/server/LightsService;
    :try_start_8
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v77

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4f

    .line 284
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_9
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 286
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 291
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v77

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 293
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_50

    .line 295
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 297
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 301
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_18

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v71, :cond_19

    const/4 v3, 0x1

    :goto_a
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v123

    .line 305
    const-string v3, "window"

    move-object/from16 v0, v123

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 307
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v123

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 315
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111004b

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    move-result v3

    if-eqz v3, :cond_5

    .line 317
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Multi Window Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v3, "multiwindow"

    new-instance v9, Lcom/android/server/sec/MultiWindowManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v123

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4

    .line 332
    :cond_5
    :goto_b
    :try_start_c
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 333
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    :goto_c
    move-object/from16 v76, v77

    .line 367
    .end local v57           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v90           #onlyCore:Z
    .restart local v76       #lights:Lcom/android/server/LightsService;
    :goto_d
    const/16 v62, 0x0

    .line 369
    .local v62, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v67, 0x0

    .line 371
    .local v67, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v100, 0x0

    .line 372
    .local v100, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v73, 0x0

    .line 373
    .local v73, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v40, 0x0

    .line 374
    .local v40, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v88, 0x0

    .line 375
    .local v88, notification:Lcom/android/server/NotificationManagerService;
    const/16 v115, 0x0

    .line 376
    .local v115, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v78, 0x0

    .line 377
    .local v78, location:Lcom/android/server/LocationManagerService;
    const/16 v55, 0x0

    .line 378
    .local v55, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v106, 0x0

    .line 381
    .local v106, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_6

    .line 383
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v74, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 385
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .local v74, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_e
    const-string v3, "input_method"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4c

    move-object/from16 v73, v74

    .line 391
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_e
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 402
    :cond_6
    :goto_f
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v59, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 404
    .end local v58           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v59, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_11
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v59

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4b

    move-object/from16 v58, v59

    .line 410
    .end local v59           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v58       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_10
    :try_start_12
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 416
    :goto_11
    :try_start_13
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 422
    :goto_12
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404a4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4a

    .line 429
    :goto_13
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_1e

    .line 431
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v63, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 433
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v63, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_16
    const-string v3, "device_policy"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_49

    move-object/from16 v62, v63

    .line 439
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_14
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v68, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v92

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v68

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 441
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v68, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_18
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 442
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_48

    move-object/from16 v67, v68

    .line 448
    .end local v68           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_15
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v101, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v101

    move-object/from16 v1, v123

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    .line 450
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v101, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1a
    const-string v3, "statusbar"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_47

    move-object/from16 v100, v101

    .line 456
    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_16
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d

    .line 468
    :goto_17
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 476
    :goto_18
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 478
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 484
    :goto_19
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v107, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 486
    .end local v106           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v107, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1f
    const-string v3, "textservices"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_46

    move-object/from16 v106, v107

    .line 492
    .end local v107           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v106       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1a
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v85, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 494
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v85, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_21
    const-string v3, "netstats"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_45

    move-object/from16 v12, v85

    .line 500
    .end local v85           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1b
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V    
	:try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 504
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_23
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_44

    .line 510
    :goto_1c
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v122, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v122

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 512
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v122, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_25
    const-string v3, "wifip2p"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_43

    move-object/from16 v121, v122

    .line 518
    .end local v122           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1d
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v120, Lcom/android/server/WifiService;

    move-object/from16 v0, v120

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 520
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .local v120, wifi:Lcom/android/server/WifiService;
    :try_start_27
    const-string v3, "wifi"

    move-object/from16 v0, v120

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_42

    move-object/from16 v119, v120

    .line 527
    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    :goto_1e
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v118, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_15

    .line 529
    .end local v117           #wfd:Lcom/samsung/wfd/WfdService;
    .local v118, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_29
    const-string v3, "wfd"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_41

    move-object/from16 v117, v118

    .line 535
    .end local v118           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v117       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_1f
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v53, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_16

    .line 538
    .end local v52           #connectivity:Lcom/android/server/ConnectivityService;
    .local v53, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2b
    const-string v3, "connectivity"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 539
    move-object/from16 v0, v53

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 540
    move-object/from16 v0, v53

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 541
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 542
    invoke-virtual/range {v121 .. v121}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_40

    move-object/from16 v52, v53

    .line 548
    .end local v53           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v52       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_20
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v105, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17

    .line 550
    .end local v104           #throttle:Lcom/android/server/ThrottleService;
    .local v105, throttle:Lcom/android/server/ThrottleService;
    :try_start_2d
    const-string v3, "throttle"

    move-object/from16 v0, v105

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_3f

    move-object/from16 v104, v105

    .line 561
    .end local v105           #throttle:Lcom/android/server/ThrottleService;
    .restart local v104       #throttle:Lcom/android/server/ThrottleService;
    :goto_21
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_18

    .line 568
    :goto_22
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v89, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v89

    move-object/from16 v1, v100

    move-object/from16 v2, v76

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    .line 570
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .local v89, notification:Lcom/android/server/NotificationManagerService;
    :try_start_30
    const-string v3, "notification"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 571
    move-object/from16 v0, v89

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_3e

    move-object/from16 v88, v89

    .line 577
    .end local v89           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    :goto_23
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .line 585
    :goto_24
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v79, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1b

    .line 587
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .local v79, location:Lcom/android/server/LocationManagerService;
    :try_start_33
    const-string v3, "location"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_3d

    move-object/from16 v78, v79

    .line 593
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v56, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 595
    .end local v55           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v56, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_35
    const-string v3, "country_detector"

    move-object/from16 v0, v56

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_3c

    move-object/from16 v55, v56

    .line 601
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_26
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .line 609
    :goto_27
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 617
    :goto_28
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v116, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 619
    .end local v115           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v116, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_39
    const-string v3, "wallpaper"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_3b

    move-object/from16 v115, v116

    .line 625
    .end local v116           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v115       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_29
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_20

    .line 632
    :goto_2a
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v65, Lcom/android/server/DockObserver;

    move-object/from16 v0, v65

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_21

    .end local v64           #dock:Lcom/android/server/DockObserver;
    .local v65, dock:Lcom/android/server/DockObserver;
    move-object/from16 v64, v65

    .line 640
    .end local v65           #dock:Lcom/android/server/DockObserver;
    .restart local v64       #dock:Lcom/android/server/DockObserver;
    :goto_2b
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .line 648
    :goto_2c
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v103, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v103

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .end local v102           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v103, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v102, v103

    .line 656
    .end local v103           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v102       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_2d
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v113, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 659
    .end local v112           #usb:Lcom/android/server/usb/UsbService;
    .local v113, usb:Lcom/android/server/usb/UsbService;
    :try_start_3f
    const-string v3, "usb"

    move-object/from16 v0, v113

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_3a

    move-object/from16 v112, v113

    .line 665
    .end local v113           #usb:Lcom/android/server/usb/UsbService;
    .restart local v112       #usb:Lcom/android/server/usb/UsbService;
    :goto_2e
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v111, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_25

    .end local v110           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v111, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v110, v111

    .line 673
    .end local v111           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v110       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2f
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_26

    .line 681
    :goto_30
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v41, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_27

    .line 683
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .local v41, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_43
    const-string v3, "appwidget"

    move-object/from16 v0, v41

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_39

    move-object/from16 v40, v41

    .line 689
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_31
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v98, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_28

    .end local v97           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v98, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v97, v98

    .line 696
    .end local v98           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v97       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_32
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_29

    .line 707
    :goto_33
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2a

    .line 715
    :goto_34
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v87, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2b

    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v87, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v86, v87

    .line 722
    .end local v87           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_35
    const-string v3, "ro.tvout.enable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    .line 723
    .local v108, tvoutEnable:Ljava/lang/String;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v108

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v3, "false"

    move-object/from16 v0, v108

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 727
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/16 v109, 0x0

    .line 729
    .local v109, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v109

    .line 730
    if-nez v109, :cond_1c

    .line 731
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2c

    .line 749
    .end local v109           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    :goto_36
    const-string v3, "ro.product.name"

    const-string v9, " "

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 750
    .local v94, product_name:Ljava/lang/String;
    invoke-virtual/range {v94 .. v94}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x6

    if-le v3, v9, :cond_8

    .line 752
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IRDA Service ro.product.nam = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v94

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v3, "p4note"

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object/from16 v0, v94

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 755
    :try_start_49
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IRDA Service!! ro.product.name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-object/from16 v0, v94

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". So enable the IRDA service!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v75, Landroid/app/IrdaService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 757
    .local v75, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2d

    .line 764
    .end local v75           #irda:Landroid/app/IrdaService;
    :cond_8
    :goto_37
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v91

    .line 765
    .local v91, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v91

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 767
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v81, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 770
    .local v81, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v83, "/data/dalvik-cache/minimode.dex"

    .line 772
    .local v83, minimodeGenDexPath:Ljava/lang/String;
    new-instance v72, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v72 .. v72}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 773
    .local v72, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v81

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 774
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v81

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v83

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 776
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v81

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v82, Ljava/io/File;

    invoke-direct/range {v82 .. v83}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 778
    .local v82, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v72

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v82

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 779
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v83

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v72

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v82           #minimodeGenDexFile:Ljava/io/File;
    :cond_9
    new-instance v50, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v50

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 787
    .local v50, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v37

    .line 788
    .local v37, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v38

    .line 790
    .local v38, MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2e

    .line 799
    .end local v37           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v38           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v50           #cl:Ljava/lang/ClassLoader;
    .end local v72           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v81           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v83           #minimodeGenDexPath:Ljava/lang/String;
    :cond_a
    :goto_38
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2f

    .line 805
    :goto_39
    const-string v3, "android.hardware.sensor.hub"

    move-object/from16 v0, v91

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 807
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "SSP Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v3, "ssp"

    new-instance v9, Landroid/hardware/ssp/SSPService;

    invoke-direct {v9, v4}, Landroid/hardware/ssp/SSPService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_30

    .line 814
    :cond_b
    :goto_3a
    const-string v3, "android.hardware.sensor.hub"

    move-object/from16 v0, v91

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 816
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v3, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_31

    .line 825
    :cond_c
    :goto_3b
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_32

    .line 847
    :goto_3c
    :try_start_4f
    const-string v3, "samsung.facedetection_service"

    new-instance v9, Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {v9, v4}, Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_33

    .line 870
    .end local v91           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v94           #product_name:Ljava/lang/String;
    .end local v108           #tvoutEnable:Ljava/lang/String;
    :goto_3d
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 871
    .local v28, safeMode:Z
    if-eqz v28, :cond_1d

    .line 872
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 874
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 876
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 884
    :goto_3e
    if-eqz v62, :cond_d

    .line 886
    :try_start_50
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_34

    .line 892
    :cond_d
    :goto_3f
    if-eqz v67, :cond_e

    .line 893
    invoke-virtual/range {v67 .. v67}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 894
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_e
    if-eqz v88, :cond_f

    .line 900
    :try_start_51
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_35

    .line 907
    :cond_f
    :goto_40
    :try_start_52
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_36

    .line 912
    :goto_41
    if-eqz v28, :cond_10

    .line 913
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 919
    :cond_10
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v51

    .line 920
    .local v51, config:Landroid/content/res/Configuration;
    new-instance v80, Landroid/util/DisplayMetrics;

    invoke-direct/range {v80 .. v80}, Landroid/util/DisplayMetrics;-><init>()V

    .line 921
    .local v80, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/view/WindowManager;

    .line 922
    .local v114, w:Landroid/view/WindowManager;
    invoke-interface/range {v114 .. v114}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v80

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 923
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v51

    move-object/from16 v1, v80

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 925
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 927
    :try_start_53
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_37

    .line 933
    :goto_42
    move-object/from16 v16, v4

    .line 934
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 935
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 936
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 937
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 938
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v52

    .line 939
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v64

    .line 940
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v102

    .line 941
    .local v23, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v24, v112

    .line 942
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v104

    .line 943
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v110

    .line 944
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v40

    .line 945
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v115

    .line 946
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v73

    .line 947
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v97

    .line 948
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v78

    .line 949
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v55

    .line 950
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v86

    .line 951
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v106

    .line 952
    .local v36, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v100

    .line 959
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v36}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1064
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1065
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_11
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1070
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void

    .line 136
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #thermistorF:Lcom/android/server/ThermistorObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v51           #config:Landroid/content/res/Configuration;
    .end local v52           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v55           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v58           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .end local v60           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #dock:Lcom/android/server/DockObserver;
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v69           #factoryTest:I
    .end local v70           #factoryTestStr:Ljava/lang/String;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v92           #pm:Landroid/content/pm/IPackageManager;
    .end local v97           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v102           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v104           #throttle:Lcom/android/server/ThrottleService;
    .end local v106           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v110           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v112           #usb:Lcom/android/server/usb/UsbService;
    .end local v114           #w:Landroid/view/WindowManager;
    .end local v115           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v117           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v123           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_12
    const/16 v96, 0x0

    goto/16 :goto_0

    .line 142
    .restart local v96       #reboot:Z
    :cond_13
    const/16 v95, 0x0

    .restart local v95       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 150
    .end local v95           #reason:Ljava/lang/String;
    .end local v96           #reboot:Z
    .restart local v70       #factoryTestStr:Ljava/lang/String;
    :cond_14
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    goto/16 :goto_2

    .line 214
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #cryptState:Ljava/lang/String;
    .restart local v58       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v60       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v64       #dock:Lcom/android/server/DockObserver;
    .restart local v69       #factoryTest:I
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90       #onlyCore:Z
    .restart local v92       #pm:Landroid/content/pm/IPackageManager;
    .restart local v97       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v102       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v104       #throttle:Lcom/android/server/ThrottleService;
    .restart local v110       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v112       #usb:Lcom/android/server/usb/UsbService;
    .restart local v117       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v123       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_15
    :try_start_54
    const-string v3, "1"

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/16 v90, 0x1

    goto/16 :goto_3

    .line 220
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 239
    .restart local v71       #firstBoot:Z
    :catch_0
    move-exception v66

    .line 240
    .local v66, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_54} :catch_1

    goto/16 :goto_6

    .line 362
    .end local v57           #cryptState:Ljava/lang/String;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v71           #firstBoot:Z
    .end local v90           #onlyCore:Z
    :catch_1
    move-exception v66

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .line 363
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v66, e:Ljava/lang/RuntimeException;
    :goto_43
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 255
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #e:Ljava/lang/RuntimeException;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v57       #cryptState:Ljava/lang/String;
    .restart local v71       #firstBoot:Z
    .restart local v90       #onlyCore:Z
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 266
    .end local v60           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v61       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_2
    move-exception v66

    .line 267
    .local v66, e:Ljava/lang/Throwable;
    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_4e

    .line 268
    const/16 v60, 0x0

    .end local v61           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v60       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_8

    .line 302
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :cond_18
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 323
    :catch_3
    move-exception v66

    .line 324
    .restart local v66       #e:Ljava/lang/Throwable;
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Multi Window Service."

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 362
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v66

    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto :goto_43

    .line 334
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :cond_1a
    const/4 v3, 0x1

    move/from16 v0, v69

    if-ne v0, v3, :cond_1b

    .line 335
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 337
    :cond_1b
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v47, Landroid/server/BluetoothService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_56} :catch_4

    .line 339
    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .local v47, bluetooth:Landroid/server/BluetoothService;
    :try_start_57
    const-string v3, "bluetooth"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 340
    invoke-virtual/range {v47 .. v47}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 341
    new-instance v49, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_51

    .line 342
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v49, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_58
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 344
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v44, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_52

    .line 346
    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .local v44, avrcp:Landroid/server/AvrcpStubService;
    :try_start_59
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 347
    invoke-virtual/range {v47 .. v47}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_53

    move-object/from16 v43, v44

    .end local v44           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v48, v49

    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_c

    .line 386
    .end local v57           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v90           #onlyCore:Z
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v55       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v106       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v115       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_5
    move-exception v66

    .line 387
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 394
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v66

    .line 395
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 405
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v66

    .line 406
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 411
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v66

    .line 412
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 417
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v66

    .line 418
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 434
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v66

    .line 435
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 443
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v66

    .line 444
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 451
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v66

    .line 452
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 459
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v66

    .line 460
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 471
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v66

    .line 472
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 479
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v66

    .line 480
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 487
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v66

    .line 488
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 495
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v66

    .line 496
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 505
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v66

    move-object/from16 v8, v84

    .line 506
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 513
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v66

    .line 514
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 521
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v66

    .line 522
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 530
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v66

    .line 531
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 543
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v66

    .line 544
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 552
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v66

    .line 553
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 563
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v66

    .line 564
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 572
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v66

    .line 573
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 580
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v66

    .line 581
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 588
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v66

    .line 589
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 596
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v66

    .line 597
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 604
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v66

    .line 605
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 612
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v66

    .line 613
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 620
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v66

    .line 621
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 627
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v66

    .line 628
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 635
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v66

    .line 636
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 643
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v66

    .line 644
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 651
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v66

    .line 652
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 660
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v66

    .line 661
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 668
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v66

    .line 669
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 676
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v66

    .line 677
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 684
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v66

    .line 685
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 691
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v66

    .line 692
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 698
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v66

    .line 699
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 710
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v66

    .line 711
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 717
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v66

    .line 718
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 735
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v108       #tvoutEnable:Ljava/lang/String;
    .restart local v109       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1c
    :try_start_5a
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v42, v0

    .line 737
    .local v42, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v42, v3

    .line 739
    move-object/from16 v0, v109

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    .line 740
    .local v54, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_2c

    goto/16 :goto_36

    .line 742
    .end local v42           #arg:[Ljava/lang/Class;
    .end local v54           #constructor:Ljava/lang/reflect/Constructor;
    .end local v109           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_2c
    move-exception v66

    .line 743
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 758
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v94       #product_name:Ljava/lang/String;
    :catch_2d
    move-exception v66

    .line 759
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 793
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v91       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_2e
    move-exception v66

    .line 794
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 801
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v66

    .line 802
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 809
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v66

    .line 810
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SSP Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    .line 818
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v66

    .line 819
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SContext Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 827
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v66

    .line 828
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 848
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v66

    .line 849
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "Fail to start face detection service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 879
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v91           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v94           #product_name:Ljava/lang/String;
    .end local v108           #tvoutEnable:Ljava/lang/String;
    .restart local v28       #safeMode:Z
    :cond_1d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3e

    .line 887
    :catch_34
    move-exception v66

    .line 888
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 901
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v66

    .line 902
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 908
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v66

    .line 909
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 928
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v51       #config:Landroid/content/res/Configuration;
    .restart local v80       #metrics:Landroid/util/DisplayMetrics;
    .restart local v114       #w:Landroid/view/WindowManager;
    :catch_37
    move-exception v66

    .line 929
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 227
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v51           #config:Landroid/content/res/Configuration;
    .end local v55           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v106           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v114           #w:Landroid/view/WindowManager;
    .end local v115           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v57       #cryptState:Ljava/lang/String;
    .restart local v71       #firstBoot:Z
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90       #onlyCore:Z
    :catch_38
    move-exception v3

    goto/16 :goto_5

    .line 684
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .end local v57           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v90           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v55       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v106       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v115       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_39
    move-exception v66

    move-object/from16 v40, v41

    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_56

    .line 660
    .end local v112           #usb:Lcom/android/server/usb/UsbService;
    .restart local v113       #usb:Lcom/android/server/usb/UsbService;
    :catch_3a
    move-exception v66

    move-object/from16 v112, v113

    .end local v113           #usb:Lcom/android/server/usb/UsbService;
    .restart local v112       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_55

    .line 620
    .end local v115           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v116       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3b
    move-exception v66

    move-object/from16 v115, v116

    .end local v116           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v115       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_54

    .line 596
    .end local v55           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_3c
    move-exception v66

    move-object/from16 v55, v56

    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_53

    .line 588
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    :catch_3d
    move-exception v66

    move-object/from16 v78, v79

    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_52

    .line 572
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v89       #notification:Lcom/android/server/NotificationManagerService;
    :catch_3e
    move-exception v66

    move-object/from16 v88, v89

    .end local v89           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_51

    .line 552
    .end local v104           #throttle:Lcom/android/server/ThrottleService;
    .restart local v105       #throttle:Lcom/android/server/ThrottleService;
    :catch_3f
    move-exception v66

    move-object/from16 v104, v105

    .end local v105           #throttle:Lcom/android/server/ThrottleService;
    .restart local v104       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_50

    .line 543
    .end local v52           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v53       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_40
    move-exception v66

    move-object/from16 v52, v53

    .end local v53           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v52       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_4f

    .line 530
    .end local v117           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v118       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_41
    move-exception v66

    move-object/from16 v117, v118

    .end local v118           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v117       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_4e

    .line 521
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .restart local v120       #wifi:Lcom/android/server/WifiService;
    :catch_42
    move-exception v66

    move-object/from16 v119, v120

    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_4d

    .line 513
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v122       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_43
    move-exception v66

    move-object/from16 v121, v122

    .end local v122           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4c

    .line 505
    :catch_44
    move-exception v66

    goto/16 :goto_4b

    .line 495
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_45
    move-exception v66

    move-object/from16 v12, v85

    .end local v85           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4a

    .line 487
    .end local v106           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v107       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_46
    move-exception v66

    move-object/from16 v106, v107

    .end local v107           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v106       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_49

    .line 451
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_47
    move-exception v66

    move-object/from16 v100, v101

    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_48

    .line 443
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v68       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_48
    move-exception v66

    move-object/from16 v67, v68

    .end local v68           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_47

    .line 434
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_49
    move-exception v66

    move-object/from16 v62, v63

    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_46

    .line 426
    :catch_4a
    move-exception v3

    goto/16 :goto_13

    .line 405
    .end local v58           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v59       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_4b
    move-exception v66

    move-object/from16 v58, v59

    .end local v59           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v58       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_45

    .line 386
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4c
    move-exception v66

    move-object/from16 v73, v74

    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_44

    .line 362
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v55           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v106           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v115           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #power:Lcom/android/server/PowerManagerService;
    :catch_4d
    move-exception v66

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v93

    .end local v93           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_43

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v60           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v57       #cryptState:Ljava/lang/String;
    .restart local v61       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #firstBoot:Z
    .restart local v90       #onlyCore:Z
    :catch_4e
    move-exception v66

    move-object/from16 v60, v61

    .end local v61           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v60       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_43

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_4f
    move-exception v66

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_50
    move-exception v66

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_51
    move-exception v66

    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_52
    move-exception v66

    move-object/from16 v48, v49

    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v44       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_53
    move-exception v66

    move-object/from16 v43, v44

    .end local v44           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v48, v49

    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v57           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v90           #onlyCore:Z
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v55       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v106       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v115       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1e
    move-object/from16 v8, v84

    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3d
.end method
