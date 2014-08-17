.class Lcom/android/server/PowerManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 581
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 582
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 583
    .local v0, fVal:Ljava/lang/Float;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 582
    .end local v0           #fVal:Ljava/lang/Float;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 575
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 576
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 577
    .local v0, iVal:Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 576
    .end local v0           #iVal:Ljava/lang/Integer;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 23
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v22

    monitor-enter v22

    .line 589
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "stay_on_while_plugged_in"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mStayOnConditions:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$1802(Lcom/android/server/PowerManagerService;I)I

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v16

    .line 595
    .local v16, prevScreenOffTimeoutSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x3a98

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$1902(Lcom/android/server/PowerManagerService;I)I

    .line 598
    const/4 v10, 0x0

    .line 599
    .local v10, bButtonSettingChanged:Z
    const-string v2, "button_key_light"

    const/16 v3, 0x5dc

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 600
    .local v11, newButtonOffTimeoutSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v2, v11, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I
    invoke-static {v2, v11}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;I)I

    .line 602
    const/4 v10, 0x1

    .line 605
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSupportFolderType:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 607
    const-string v2, "key_backlight_timeout"

    const/16 v3, 0xbb8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 608
    .local v13, newKeyLedOffTimeoutSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyLedOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v2, v13, :cond_1

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mKeyLedOffTimeoutSetting:I
    invoke-static {v2, v13}, Lcom/android/server/PowerManagerService;->access$2202(Lcom/android/server/PowerManagerService;I)I

    .line 610
    const/4 v10, 0x1

    .line 614
    :cond_1
    const-string v2, "key_night_mode"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 615
    .local v12, newKeyLedOffNightModeSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyLedOffNightModeSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v2, v12, :cond_2

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mKeyLedOffNightModeSetting:I
    invoke-static {v2, v12}, Lcom/android/server/PowerManagerService;->access$2302(Lcom/android/server/PowerManagerService;I)I

    .line 617
    const/4 v10, 0x1

    .line 630
    .end local v12           #newKeyLedOffNightModeSetting:I
    .end local v13           #newKeyLedOffTimeoutSetting:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v2

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$TimeoutTask;

    move-result-object v5

    iget v5, v5, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;JI)V

    .line 644
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v14

    .line 645
    .local v14, prevAutoPowerOffTimeoutSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_power_off"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$2802(Lcom/android/server/PowerManagerService;I)I

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v14, v2, :cond_4

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long v19, v2, v4

    .line 649
    .local v19, when:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 654
    .end local v19           #when:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)I

    move-result v15

    .line 655
    .local v15, prevDynamicAutoBrightnessRatioValueSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_brightness_detail"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$3302(Lcom/android/server/PowerManagerService;I)I

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v15, v2, :cond_5

    .line 657
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings DB update : mDynamicAutoBrightnessRatioValueSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)I

    move-result v3

    #calls: Lcom/android/server/PowerManagerService;->changeSlopeOfDynamicAutoBrightness(I)V
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$3502(Lcom/android/server/PowerManagerService;I)I

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$3602(Lcom/android/server/PowerManagerService;I)I

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 664
    .local v18, value:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v3, -0x4080

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$3702(Lcom/android/server/PowerManagerService;F)F

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    move/from16 v0, v18

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v2, v0}, Lcom/android/server/PowerManagerService;->access$3800(Lcom/android/server/PowerManagerService;I)V

    .line 669
    .end local v18           #value:I
    :cond_5
    const/4 v2, 0x1

    if-ne v10, v2, :cond_6

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 671
    const-string v2, "PowerManagerService"

    const-string v3, "SettingsObserver : update : userActivity()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    #calls: Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V
    invoke-static/range {v2 .. v9}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;JJZIZ)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    #calls: Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V
    invoke-static/range {v2 .. v9}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;JJZIZ)V

    .line 677
    :cond_6
    const-string v2, "window_animation_scale"

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v21

    .line 678
    .local v21, windowScale:F
    const-string v2, "transition_animation_scale"

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v17

    .line 679
    .local v17, transitionScale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$4002(Lcom/android/server/PowerManagerService;I)I

    .line 680
    const/high16 v2, 0x3f00

    cmpl-float v2, v21, v2

    if-lez v2, :cond_7

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$4076(Lcom/android/server/PowerManagerService;I)I

    .line 683
    :cond_7
    const/high16 v2, 0x3f00

    cmpl-float v2, v17, v2

    if-lez v2, :cond_8

    .line 687
    :cond_8
    monitor-exit v22

    .line 688
    return-void

    .line 687
    .end local v10           #bButtonSettingChanged:Z
    .end local v11           #newButtonOffTimeoutSetting:I
    .end local v14           #prevAutoPowerOffTimeoutSetting:I
    .end local v15           #prevDynamicAutoBrightnessRatioValueSetting:I
    .end local v16           #prevScreenOffTimeoutSetting:I
    .end local v17           #transitionScale:F
    .end local v21           #windowScale:F
    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
