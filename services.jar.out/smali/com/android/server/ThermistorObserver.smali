.class Lcom/android/server/ThermistorObserver;
.super Landroid/os/UEventObserver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThermistorObserver$SIOPLevel;,
        Lcom/android/server/ThermistorObserver$TmuState;
    }
.end annotation


# static fields
.field public static final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.MAX_BRIGHTNESS_CHANGED"

.field public static final ACTION_SIOP_CONDITION_SET_BY_TESTAPP:Ljava/lang/String; = "android.intent.action.SIOP_CONDITION_SET_BY_TESTAPP"

.field private static final BATT_CHARGING_HYSTERESYS_LOWER:I = 0x14

.field private static final BATT_CHARGING_HYSTERESYS_UPPER:I = 0x19

.field private static final BATT_MAX_CHARGING_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_activated"

.field private static final BRIGHTNESS_LIMIT_VALUE:I = 0xe6

.field private static final BRIGHTNESS_NORMAL_VALUE:I = -0x1

.field private static final CPU_MAX_CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

.field public static final EXTRA_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_CHARGING_CURRENT:Ljava/lang/String; = "charging_current"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_CPU_MAX_CORE:Ljava/lang/String; = "cpu_max_core"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_LCD_FPS:Ljava/lang/String; = "lcd_fps"

.field private static final NA:I = -0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final THERMISTOR_UEVENT_KEY:Ljava/lang/String; = "SIOP_LEVEL"

.field private static final THERMISTOR_UEVENT_MATCH:Ljava/lang/String; = "SIOP_LEVEL"

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/platform/s5p-tmu"

.field private static final mConfigurableControlCondition:Z = true

.field private static final mDebugLog:Z = true

.field private static final mDebugLogTestApp:Z


# instance fields
.field private mBatteryBR:Landroid/content/BroadcastReceiver;

.field private mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

.field private mBoolAMOLED:Z

.field private mBoolControlBrightness:Z

.field private mBoolControlCPUCore:Z

.field private mBoolControlChargingCurrent:Z

.field private mBoolControlFrequency:Z

.field private mBoolControlLcdFPS:Z

.field private mBoolCurrentLimitBrightnessForAMOLED:Z

.field private mBoolSupportSIOP:Z

.field private final mContext:Landroid/content/Context;

.field private mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

.field private mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field private mIsChargingCurrentLimited:Z

.field private mIsLaunchedLimitCharging:Z

.field private mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

.field private mLatestBatteryLevel:I

.field private mLatestMaxBrightness:I

.field private mPM:Landroid/os/PowerManager;

.field private mPMS:Lcom/android/server/PowerManagerService;

.field private mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

.field mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/server/ThermistorObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 11
    .parameter "context"
    .parameter "pms"

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/ThermistorObserver$SIOPLevel;

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    .line 447
    new-instance v0, Lcom/android/server/ThermistorObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/ThermistorObserver$1;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    .line 493
    new-instance v0, Lcom/android/server/ThermistorObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/ThermistorObserver$2;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

    .line 517
    new-instance v0, Lcom/android/server/ThermistorObserver$3;

    invoke-direct {v0, p0}, Lcom/android/server/ThermistorObserver$3;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

    .line 155
    iput-object p1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/android/server/ThermistorObserver;->mPMS:Lcom/android/server/PowerManagerService;

    .line 158
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 187
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    if-eqz v0, :cond_2

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 177
    iget-object v9, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v10, 0x0

    new-instance v0, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v2, "ReleasedSIOP"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x3c

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIZII)V

    aput-object v0, v9, v10

    .line 178
    iget-object v9, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v10, 0x1

    new-instance v0, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v2, "Level1"

    const/4 v3, -0x1

    const v4, 0xc3500

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x28

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIZII)V

    aput-object v0, v9, v10

    .line 179
    iget-object v9, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v10, 0x2

    new-instance v0, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v2, "Level2"

    const/4 v3, -0x1

    const v4, 0xc3500

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0xe6

    const/16 v8, 0x28

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIZII)V

    aput-object v0, v9, v10

    .line 180
    iget-object v9, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v10, 0x3

    new-instance v0, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v2, "Level3"

    const/4 v3, -0x1

    const v4, 0x7a120

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0xe6

    const/16 v8, 0x28

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIZII)V

    aput-object v0, v9, v10

    .line 181
    iget-object v9, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v10, 0x4

    new-instance v0, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v2, "Level4"

    const/4 v3, -0x1

    const v4, 0x7a120

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0xe6

    const/16 v8, 0x28

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIZII)V

    aput-object v0, v9, v10

    .line 182
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    goto/16 :goto_0

    .line 185
    :cond_2
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "DO NOT Support Thermistor Observer."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private final LaunchLimitChargingCurrent(Z)V
    .locals 5
    .parameter "bLimit"

    .prologue
    const/4 v4, -0x1

    .line 362
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    if-nez v1, :cond_0

    .line 363
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "LaunchLimitChargingCurrent : NOT SUPPORTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 367
    :cond_0
    monitor-enter p0

    .line 368
    :try_start_0
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchLimitChargingCurrent : prev : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  current : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    if-eq v1, p1, :cond_2

    .line 371
    if-eqz p1, :cond_3

    .line 372
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 373
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    iget v1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 377
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V

    .line 386
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    .line 388
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 381
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    .line 383
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ThermistorObserver;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ThermistorObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/ThermistorObserver;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ThermistorObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/ThermistorObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/ThermistorObserver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/ThermistorObserver;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$SIOPLevel;)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/ThermistorObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/ThermistorObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    return p1
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 414
    const/4 v2, 0x0

    .line 416
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 427
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 436
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 428
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 429
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 431
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 432
    :catch_2
    move-exception v1

    .line 433
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private final limitBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 345
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    if-nez v1, :cond_0

    .line 346
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "limitBrightness : NOT SUPPORTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 350
    :cond_0
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mPMS:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/PowerManagerService;->setMasterBrightnessLimit(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private final limitCPUCore(I)V
    .locals 3
    .parameter "activeCore"

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    if-nez v0, :cond_0

    .line 322
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitCPUCore : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUCore : activeCore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

    invoke-static {v0, p1}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final limitChargingCurrent(Z)V
    .locals 4
    .parameter "bLimit"

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 399
    .local v0, siopActivated:I
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    .line 400
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitChargingCurrent : mIsChargingCurrentLimited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " siop activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v1, "/sys/class/power_supply/battery/siop_activated"

    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    .line 402
    return-void

    .line 397
    .end local v0           #siopActivated:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #siopActivated:I
    goto :goto_0
.end method

.method private final limitFrequency(Landroid/os/PowerManager$DVFSLock;Landroid/os/PowerManager$DVFSLock;)V
    .locals 2
    .parameter "currDVFSLock"
    .parameter "lastDVFSLock"

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    if-nez v0, :cond_1

    .line 295
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz p1, :cond_3

    .line 302
    invoke-virtual {p1}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    invoke-virtual {p1}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    .line 310
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 311
    invoke-virtual {p2}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p2}, Landroid/os/PowerManager$DVFSLock;->release()V

    goto :goto_0

    .line 307
    :cond_3
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : currDVFSLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 316
    :cond_4
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : lastDVFSLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final notifyLimitBrightness(IZ)V
    .locals 4
    .parameter "brightness"
    .parameter "bForce"

    .prologue
    .line 332
    iget v1, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    .line 333
    :cond_0
    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    .line 335
    :try_start_0
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v2, "max_brightness"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "notifyLimitBrightness : intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final systemShutdown()V
    .locals 3

    .prologue
    .line 439
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "systemShutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 445
    return-void
.end method


# virtual methods
.method changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V
    .locals 3
    .parameter "currLevel"
    .parameter "lastLevel"

    .prologue
    .line 279
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 280
    :cond_0
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : currLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lastLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void

    .line 284
    :cond_1
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$300(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$300(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v0

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static {p2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ThermistorObserver;->limitFrequency(Landroid/os/PowerManager$DVFSLock;Landroid/os/PowerManager$DVFSLock;)V

    .line 287
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitCPUCore(I)V

    .line 288
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:Z
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$700(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->LaunchLimitChargingCurrent(Z)V

    .line 289
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$400(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    .line 290
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$800(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ThermistorObserver;->limitLcdFPS(I)V

    goto :goto_0
.end method

.method decisionLevel(I)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .locals 4
    .parameter "temperature"

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 240
    :cond_0
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decisionLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v3, v3, v0

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$300(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v1, v1, v0

    return-object v1

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->temperatureThreshold:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$200(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final limitLcdFPS(I)V
    .locals 3
    .parameter "FPS"

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitLcdFPS : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitLcdFPS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, -0x1

    .line 192
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thermistor UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-enter p0

    .line 196
    const/4 v2, 0x0

    .line 198
    .local v2, currentSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIOP_LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eq v4, v7, :cond_1

    .line 200
    const/4 v1, -0x1

    .line 201
    .local v1, currentLevelfromDriver:I
    :try_start_1
    const-string v4, "SIOP_LEVEL"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 202
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v2, v4, v1

    .line 204
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    if-eq v2, v4, :cond_0

    .line 205
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 206
    iput-object v2, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    .end local v1           #currentLevelfromDriver:I
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 226
    return-void

    .line 208
    .restart local v1       #currentLevelfromDriver:I
    :catch_0
    move-exception v3

    .line 209
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse SIOP_LEVEL from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .end local v1           #currentLevelfromDriver:I
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 212
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/platform/s5p-tmu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eq v4, v7, :cond_2

    .line 214
    :try_start_4
    const-string v4, "TMUSTATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, TMU_STATE:I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->systemShutdown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 218
    .end local v0           #TMU_STATE:I
    :catch_1
    move-exception v3

    .line 219
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    :try_start_5
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse TMUSTATE from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_2
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v5, "Thermistor : onUEvent : ERROR : SHOULD NOT BE HERE!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 247
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "systemReady()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    .line 250
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    if-eqz v1, :cond_1

    .line 251
    const/4 v1, -0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver for mBatteryBRForAMOLED."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIOP_CONDITION_SET_BY_TESTAPP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    return-void

    .line 258
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$400(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    .line 263
    :cond_2
    const-string v1, "SIOP_LEVEL"

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->startObserving(Ljava/lang/String;)V

    .line 264
    const-string v1, "DEVPATH=/devices/platform/s5p-tmu"

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->startObserving(Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "Start Observing for SIOP."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
