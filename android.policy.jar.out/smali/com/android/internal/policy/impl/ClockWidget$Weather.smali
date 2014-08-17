.class Lcom/android/internal/policy/impl/ClockWidget$Weather;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weather"
.end annotation


# static fields
.field public static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field public static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsWeatherDateAvailable:Z

.field private mNoServiceText:Landroid/widget/TextView;

.field private mTemperatureUnit:Landroid/widget/ImageView;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDataBox:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLogo:Landroid/widget/ImageView;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 228
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 231
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 232
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 233
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 234
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 235
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 236
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 244
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->LOCK_SCREEN_SERVICE_CODE:I

    .line 247
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 248
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 251
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 252
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 254
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 271
    new-instance v0, Lcom/android/internal/policy/impl/ClockWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 282
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setFocusableInTouchMode(Z)V

    .line 283
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/ClockWidget$Weather;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setMarquee(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method private checkIsDayOrNight()Z
    .locals 5

    .prologue
    .line 651
    const/16 v0, 0x258

    .line 652
    .local v0, mnSunriseTime:I
    const/16 v1, 0x708

    .line 654
    .local v1, mnSunsetTime:I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    add-int v2, v3, v4

    .line 656
    .local v2, nCurTime:I
    const/16 v3, 0x23a

    if-lt v2, v3, :cond_0

    const/16 v3, 0x726

    if-gt v2, v3, :cond_0

    .line 657
    const/4 v3, 0x0

    .line 661
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findDrawableId(I)I
    .locals 7
    .parameter "weatherIconNum"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 468
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->checkIsDayOrNight()Z

    move-result v0

    .line 469
    .local v0, isNight:Z
    packed-switch p1, :pswitch_data_0

    .line 598
    .end local v0           #isNight:Z
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 471
    .restart local v0       #isNight:Z
    :pswitch_1
    if-eqz v0, :cond_0

    .line 472
    const/16 v1, 0x12

    goto :goto_0

    .line 478
    :pswitch_2
    if-eqz v0, :cond_1

    .line 479
    const/16 v1, 0x13

    goto :goto_0

    :cond_1
    move v1, v2

    .line 481
    goto :goto_0

    .line 484
    :pswitch_3
    if-eqz v0, :cond_2

    .line 485
    const/16 v1, 0x14

    goto :goto_0

    :cond_2
    move v1, v3

    .line 487
    goto :goto_0

    :pswitch_4
    move v1, v4

    .line 489
    goto :goto_0

    :pswitch_5
    move v1, v5

    .line 491
    goto :goto_0

    .line 494
    :pswitch_6
    const/4 v1, 0x5

    goto :goto_0

    .line 496
    :pswitch_7
    const/4 v1, 0x6

    goto :goto_0

    .line 505
    :pswitch_8
    const/16 v1, 0x8

    goto :goto_0

    .line 509
    :pswitch_9
    const/16 v1, 0x9

    goto :goto_0

    .line 513
    :pswitch_a
    const/16 v1, 0xa

    goto :goto_0

    .line 519
    :pswitch_b
    const/16 v1, 0xb

    goto :goto_0

    .line 525
    :pswitch_c
    const/16 v1, 0xd

    goto :goto_0

    .line 531
    :pswitch_d
    const/16 v1, 0xe

    goto :goto_0

    .line 536
    .end local v0           #isNight:Z
    :cond_3
    packed-switch p1, :pswitch_data_1

    :pswitch_e
    goto :goto_0

    :pswitch_f
    move v1, v2

    .line 543
    goto :goto_0

    :pswitch_10
    move v1, v3

    .line 547
    goto :goto_0

    :pswitch_11
    move v1, v4

    .line 549
    goto :goto_0

    :pswitch_12
    move v1, v5

    .line 554
    goto :goto_0

    .line 556
    :pswitch_13
    const/4 v1, 0x5

    goto :goto_0

    .line 560
    :pswitch_14
    const/4 v1, 0x6

    goto :goto_0

    .line 563
    :pswitch_15
    const/4 v1, 0x7

    goto :goto_0

    .line 565
    :pswitch_16
    const/16 v1, 0x8

    goto :goto_0

    .line 568
    :pswitch_17
    const/16 v1, 0x9

    goto :goto_0

    .line 571
    :pswitch_18
    const/16 v1, 0xa

    goto :goto_0

    .line 575
    :pswitch_19
    const/16 v1, 0xb

    goto :goto_0

    .line 579
    :pswitch_1a
    const/16 v1, 0xc

    goto :goto_0

    .line 581
    :pswitch_1b
    const/16 v1, 0xd

    goto :goto_0

    .line 583
    :pswitch_1c
    const/16 v1, 0xe

    goto :goto_0

    .line 585
    :pswitch_1d
    const/16 v1, 0xf

    goto :goto_0

    .line 587
    :pswitch_1e
    const/16 v1, 0x10

    goto :goto_0

    .line 589
    :pswitch_1f
    const/16 v1, 0x11

    goto :goto_0

    .line 594
    :pswitch_20
    const/16 v1, 0x12

    goto :goto_0

    .line 596
    :pswitch_21
    const/16 v1, 0x13

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch

    .line 536
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_e
        :pswitch_e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_14
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method private findDrawableIdForSina(I)I
    .locals 3
    .parameter "weatherIconNum"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 604
    packed-switch p1, :pswitch_data_0

    .line 645
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 608
    goto :goto_0

    .line 611
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 613
    goto :goto_0

    .line 617
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 619
    :pswitch_5
    const/16 v0, 0x11

    goto :goto_0

    .line 621
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 623
    goto :goto_0

    .line 625
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 628
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 630
    :pswitch_a
    const/16 v0, 0xe

    goto :goto_0

    .line 635
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 637
    :pswitch_c
    const/16 v0, 0x12

    goto :goto_0

    .line 639
    :pswitch_d
    const/16 v0, 0x13

    goto :goto_0

    .line 641
    :pswitch_e
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_f
    move v0, v2

    .line 643
    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private setMarquee(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 690
    if-eqz p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private setWeatherIcon(I)V
    .locals 4
    .parameter "iconNum"

    .prologue
    .line 450
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 457
    .local v1, unlock_weather_drawables:[I
    const/4 v0, 0x0

    .line 458
    .local v0, i:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findDrawableIdForSina(I)I

    move-result v0

    .line 463
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    return-void

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findDrawableId(I)I

    move-result v0

    goto :goto_0

    .line 450
    nop

    :array_0
    .array-data 0x4
        0xcdt 0x4t 0x8t 0x1t
        0xcet 0x4t 0x8t 0x1t
        0xcft 0x4t 0x8t 0x1t
        0xd0t 0x4t 0x8t 0x1t
        0xd1t 0x4t 0x8t 0x1t
        0xd2t 0x4t 0x8t 0x1t
        0xd3t 0x4t 0x8t 0x1t
        0xd4t 0x4t 0x8t 0x1t
        0xd5t 0x4t 0x8t 0x1t
        0xd6t 0x4t 0x8t 0x1t
        0xd7t 0x4t 0x8t 0x1t
        0xd8t 0x4t 0x8t 0x1t
        0xd8t 0x4t 0x8t 0x1t
        0xd9t 0x4t 0x8t 0x1t
        0xdat 0x4t 0x8t 0x1t
        0xdbt 0x4t 0x8t 0x1t
        0xdct 0x4t 0x8t 0x1t
        0xddt 0x4t 0x8t 0x1t
        0xdet 0x4t 0x8t 0x1t
        0xdft 0x4t 0x8t 0x1t
        0xe0t 0x4t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x1040635

    const/4 v5, 0x1

    .line 667
    const-string v0, ""

    .line 669
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    if-nez v6, :cond_0

    move-object v1, v0

    .line 686
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 672
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 673
    .local v5, isCelsius:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 674
    .local v4, currentTemp:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, TtsWeather:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 678
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040633

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, TtsDegreeText:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 686
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_0

    .line 672
    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #TtsDegreeText:Ljava/lang/String;
    .end local v3           #TtsWeather:Ljava/lang/String;
    .end local v4           #currentTemp:F
    .end local v5           #isCelsius:Z
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 680
    .restart local v3       #TtsWeather:Ljava/lang/String;
    .restart local v4       #currentTemp:F
    .restart local v5       #isCelsius:Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040634

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #TtsDegreeText:Ljava/lang/String;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 290
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 292
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->updateWeatherInfo()V

    .line 322
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 337
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 338
    const v0, 0x10202d8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v1, 0x1040628

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    const v0, 0x10202d9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    .line 341
    const v0, 0x10202dd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 342
    const v0, 0x10202da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 343
    const v0, 0x10202dc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 344
    const v0, 0x10202db

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    .line 346
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080447

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 699
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 702
    return-void
.end method

.method public updateWeatherInfo()V
    .locals 12

    .prologue
    .line 359
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 360
    .local v6, mAppServiceStatus:I
    and-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v4, 0x1

    .line 362
    .local v4, isServiceEnable:Z
    :goto_0
    const-string v0, ""

    .line 363
    .local v0, cityId:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 364
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_1
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isServiceEnable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 376
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, And data is ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 378
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 400
    const/4 v5, 0x0

    .line 401
    .local v5, lowTemp:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 402
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_high_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .line 403
    .local v2, currentTemp:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_low_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v5, v9

    .line 408
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_temp_scale"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 409
    .local v7, tempScale:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_icon_num"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 410
    .local v3, iconNum:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, cityName:Ljava/lang/String;
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Weather Data : currentTemp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempScale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iconNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 422
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 423
    .local v8, text_currentTemp:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 424
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 431
    :goto_3
    const/4 v9, 0x1

    if-ne v7, v9, :cond_8

    .line 432
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x1080437

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    :cond_0
    :goto_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setWeatherIcon(I)V

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 442
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #currentTemp:I
    .end local v3           #iconNum:I
    .end local v5           #lowTemp:I
    .end local v7           #tempScale:I
    .end local v8           #text_currentTemp:Ljava/lang/String;
    :goto_5
    return-void

    .line 360
    .end local v0           #cityId:Ljava/lang/String;
    .end local v4           #isServiceEnable:Z
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 366
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v4       #isServiceEnable:Z
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_loc_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 381
    :cond_3
    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 383
    :cond_4
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, But data is not ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 385
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_5

    .line 391
    :cond_5
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is not running, Set visibility to GONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 393
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_5

    .line 406
    .restart local v5       #lowTemp:I
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_current_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .restart local v2       #currentTemp:I
    goto/16 :goto_2

    .line 427
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v3       #iconNum:I
    .restart local v7       #tempScale:I
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #text_currentTemp:Ljava/lang/String;
    goto :goto_3

    .line 433
    :cond_8
    if-nez v7, :cond_0

    .line 434
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x108043c

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method
