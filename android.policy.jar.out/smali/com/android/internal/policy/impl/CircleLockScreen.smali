.class public Lcom/android/internal/policy/impl/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
    }
.end annotation


# static fields
.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MSG_GO_TO_UNLOCK_SCREEN:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL:I

.field private TAG:Ljava/lang/String;

.field private helpOverlayTip:I

.field private isHelpOverlayUSA:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

.field private mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDefaultHelpOverlay:Z

.field private mDefaultHelpText:Ljava/lang/String;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsCameraShortCut:Z

.field private mIsHelpTextEnabled:Z

.field private mIsMotionLockscreen:Z

.field private mIsMultipleWakeUpOn:Z

.field private mIsWaterRipple:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLockIcon:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedEventWidget:Landroid/view/View;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

.field private mTalkbackEnabled:Z

.field private mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnreadMsgList:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

.field private mVoiceHelpText:Landroid/widget/TextView;

.field private mVoiceIcon:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 27
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 403
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v3, "CircleLockScreen"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 77
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    .line 107
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 113
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 114
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 115
    const/16 v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 121
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 125
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    .line 382
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 384
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->MSG_SET_VOICE_RECOGNITION_FAIL:I

    .line 385
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->MSG_GO_TO_UNLOCK_SCREEN:I

    .line 398
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 399
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    .line 405
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 406
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 407
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 408
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 409
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 417
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWindowManager:Landroid/view/IWindowManager;

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, accesibilityService:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 423
    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    .line 424
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-eqz v3, :cond_11

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v3, :cond_1

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 433
    .local v12, drivingMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 435
    .local v26, unlockDrivingMode:I
    const/4 v3, 0x1

    if-ne v12, v3, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_12

    .line 436
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v12           #drivingMode:I
    .end local v26           #unlockDrivingMode:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTalkbackEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/16 v25, 0x0

    .line 448
    .local v25, statementString:Ljava/lang/String;
    :try_start_0
    new-instance v14, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 449
    .local v14, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v25

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentLockScreenString() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const v3, 0x1020385

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 453
    .local v24, statement:Landroid/widget/TextView;
    if-eqz v24, :cond_2

    .line 454
    if-eqz v25, :cond_13

    .line 455
    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v14           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v24           #statement:Landroid/widget/TextView;
    :cond_2
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusable(Z)V

    .line 469
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 470
    const/high16 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setDescendantFocusability(I)V

    .line 472
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 473
    .local v16, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    .line 475
    const v3, 0x1090058

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 485
    :goto_3
    const v3, 0x10202f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsCameraShortCut:Z

    .line 490
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsCameraShortCut:Z

    if-eqz v3, :cond_4

    .line 491
    :cond_3
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    .line 494
    :cond_4
    const v3, 0x10202f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 497
    const v3, 0x10202f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    const v3, 0x10202f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    .line 501
    const v3, 0x10202f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    .line 503
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 509
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v3, :cond_6

    .line 511
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    .line 512
    .local v17, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v17

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_6

    .line 513
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    .end local v17           #info:Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 523
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 527
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    if-eqz v3, :cond_1a

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getDpi(Landroid/content/Context;)I

    move-result v11

    .line 534
    .local v11, deviceDpi:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_1b

    const/16 v3, 0x140

    if-ge v11, v3, :cond_1b

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    const/16 v18, 0x0

    .line 538
    .local v18, isLiveWallpaper:Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    .line 539
    .local v22, isWaterRippleConfig:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    const/16 v20, 0x1

    .line 540
    .local v20, isRippleEffect:Z
    :goto_c
    if-nez v18, :cond_1e

    if-eqz v22, :cond_1e

    if-eqz v20, :cond_1e

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->createUnlockWidget()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 543
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    .line 614
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 625
    new-instance v3, Lcom/android/internal/policy/impl/ClockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 628
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 629
    new-instance v3, Lcom/android/internal/policy/impl/UsimWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/UsimWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    .line 634
    :goto_e
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v19

    .line 635
    .local v19, isNewMissedWidgetIsUsed:Z
    if-eqz v19, :cond_20

    .line 636
    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v3, v0, v6}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    .line 642
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    const/16 v21, 0x1

    .line 643
    .local v21, isTickerOn:Z
    :goto_10
    if-eqz v21, :cond_23

    .line 644
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_22

    .line 645
    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v7, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    .line 655
    :goto_11
    new-instance v3, Lcom/android/internal/policy/impl/CircleShortcutWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    .line 662
    const v3, 0x10202f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 666
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 669
    const v3, 0x10202f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 672
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-nez v3, :cond_7

    .line 673
    const v3, 0x10202f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 680
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v3, :cond_8

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 684
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_24

    .line 685
    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 687
    .local v23, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 693
    .end local v23           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 694
    if-eqz v19, :cond_25

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getMissedCallList()Lcom/android/internal/policy/impl/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 699
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getUnreadMsgList()Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 715
    :cond_a
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    .line 716
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    .line 718
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_e

    .line 719
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v3, :cond_e

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 724
    .local v8, mChecked:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 725
    const/16 v3, 0x65

    if-ge v8, v3, :cond_27

    const/4 v15, 0x1

    .line 730
    .local v15, flag:Z
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_c

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpHubInstalled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->needToShowHelpPage()I

    move-result v8

    .line 733
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_d

    const/16 v3, 0xb

    if-ge v8, v3, :cond_2b

    const/4 v15, 0x1

    .line 736
    :cond_d
    :goto_15
    if-eqz v15, :cond_e

    .line 738
    new-instance v7, Lcom/android/internal/policy/impl/CircleLockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    .line 754
    .local v7, helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_2c

    .line 755
    new-instance v3, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    .line 761
    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 765
    .end local v7           #helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    .end local v8           #mChecked:I
    .end local v15           #flag:Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v3, :cond_f

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 769
    :cond_f
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v3, :cond_10

    .line 770
    const v3, 0x10202f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 773
    :cond_10
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 774
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;)V

    .line 784
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 786
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    return-void

    .line 427
    .end local v11           #deviceDpi:I
    .end local v16           #inflater:Landroid/view/LayoutInflater;
    .end local v18           #isLiveWallpaper:Z
    .end local v19           #isNewMissedWidgetIsUsed:Z
    .end local v20           #isRippleEffect:Z
    .end local v21           #isTickerOn:Z
    .end local v22           #isWaterRippleConfig:Z
    .end local v25           #statementString:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 439
    .restart local v12       #drivingMode:I
    .restart local v26       #unlockDrivingMode:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 460
    .end local v12           #drivingMode:I
    .end local v26           #unlockDrivingMode:I
    .restart local v14       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v24       #statement:Landroid/widget/TextView;
    .restart local v25       #statementString:Ljava/lang/String;
    :cond_13
    const/16 v3, 0x8

    :try_start_2
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 463
    .end local v14           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v24           #statement:Landroid/widget/TextView;
    :catch_0
    move-exception v13

    .line 464
    .local v13, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM Exception Statement :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 478
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v16       #inflater:Landroid/view/LayoutInflater;
    :cond_14
    const v3, 0x1090059

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_3

    .line 488
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 489
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 508
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 516
    :catch_1
    move-exception v13

    .line 517
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 525
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    const/4 v3, 0x1

    :goto_17
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    goto/16 :goto_8

    :cond_19
    const/4 v3, 0x0

    goto :goto_17

    .line 530
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 534
    .restart local v11       #deviceDpi:I
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 537
    :cond_1c
    const/16 v18, 0x1

    goto/16 :goto_b

    .line 539
    .restart local v18       #isLiveWallpaper:Z
    .restart local v22       #isWaterRippleConfig:Z
    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_c

    .line 540
    .restart local v20       #isRippleEffect:Z
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_d

    .line 631
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    goto/16 :goto_e

    .line 638
    .restart local v19       #isNewMissedWidgetIsUsed:Z
    :cond_20
    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v3, v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_f

    .line 642
    :cond_21
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 647
    .restart local v21       #isTickerOn:Z
    :cond_22
    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    goto/16 :goto_11

    .line 651
    :cond_23
    const v3, 0x10202f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_11

    .line 689
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_12

    .line 704
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getMissedCallList()Lcom/android/internal/policy/impl/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_26

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 708
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getUnreadMsgList()Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_13

    .line 725
    .restart local v8       #mChecked:I
    :cond_27
    const/4 v15, 0x0

    goto/16 :goto_14

    .line 727
    :cond_28
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_29

    const/16 v3, 0xde

    :goto_18
    if-ge v8, v3, :cond_2a

    const/4 v15, 0x1

    .restart local v15       #flag:Z
    :goto_19
    goto/16 :goto_14

    .end local v15           #flag:Z
    :cond_29
    const/16 v3, 0x6f

    goto :goto_18

    :cond_2a
    const/4 v15, 0x0

    goto :goto_19

    .line 735
    .restart local v15       #flag:Z
    :cond_2b
    const/4 v15, 0x0

    goto/16 :goto_15

    .line 758
    .restart local v7       #helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    :cond_2c
    new-instance v3, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    goto/16 :goto_16
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isSecure()Z

    move-result v0

    return v0
.end method

.method private bedimBackground(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    .line 903
    :goto_0
    return-void

    .line 898
    :cond_0
    if-eqz p1, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private createUnlockWidget()Landroid/view/View;
    .locals 3

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, unlockWidget:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v1, :cond_0

    .line 872
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 876
    .restart local v0       #unlockWidget:Landroid/view/View;
    :goto_0
    return-object v0

    .line 874
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockView;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #unlockWidget:Landroid/view/View;
    goto :goto_0
.end method

.method private isActiveStreamExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 855
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_0
    return v0

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    .line 1208
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1209
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1212
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1213
    const/4 v3, 0x1

    .line 1214
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKioskModeEnabled()Z
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1218
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1225
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v2, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v1

    .line 1227
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1228
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private needToShowHelpPage()I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1181
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/net/Uri;

    .line 1182
    .local v9, uri:[Landroid/net/Uri;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v1

    .line 1183
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v2

    .line 1185
    const/4 v8, 0x0

    .line 1187
    .local v8, result:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_3

    .line 1188
    const/4 v6, 0x0

    .line 1191
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, v9, v7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1195
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getInt(0) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x4024

    int-to-double v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 1200
    :cond_0
    if-eqz v6, :cond_1

    .line 1201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1187
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1204
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    return v8
.end method

.method private refreshDefaultHelpText(Z)V
    .locals 3
    .parameter "isVoiceUnlockFailed"

    .prologue
    const v2, 0x1040652

    const v1, 0x1040650

    .line 793
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_3

    .line 794
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_2

    .line 795
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    .line 814
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040653

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 804
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_6

    .line 805
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 806
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 808
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040651

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 811
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method private startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 847
    new-instance v0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->start()V

    .line 852
    :goto_0
    return-void

    .line 850
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1040
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    .line 1043
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->cleanUp()V

    .line 1045
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->cleanUp()V

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 1053
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->cleanUp()V

    .line 1056
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_4

    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->cleanUp()V

    .line 1058
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->cleanUp()V

    .line 1059
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_5

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->cleanUp()V

    .line 1061
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_6

    .line 1062
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->cleanUp()V

    .line 1064
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1065
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpDestroy()V

    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V

    .line 1070
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1073
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1074
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 1075
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 944
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 949
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 956
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 881
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 883
    const/4 v1, 0x0

    .line 890
    :goto_0
    return v1

    .line 886
    :cond_0
    const-string v0, ""

    .line 887
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->getTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1151
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1155
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    .line 1012
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1013
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay removeView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->onPause()V

    .line 1016
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->onPause()V

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 1024
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_3

    .line 1025
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->onPause()V

    .line 1027
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_4

    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->onPause()V

    .line 1029
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onPause()V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_5

    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->onPause()V

    .line 1032
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_6

    .line 1033
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->onPause()V

    .line 1034
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 1036
    :cond_7
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1147
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 1107
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1112
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/UsimWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1114
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 1125
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 1158
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1162
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1163
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1164
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1165
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1166
    const/4 v1, 0x1

    .line 1168
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->onResume()V

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 967
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->onResume()V

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onResume()V

    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_3

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->onResume()V

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_4

    .line 974
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->onResume()V

    .line 978
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isShowingAndNotHidden()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 980
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 985
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-nez v0, :cond_6

    .line 986
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 988
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    .line 989
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->onResume()V

    .line 991
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_8

    .line 992
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_8

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->onResume()V

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 996
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 998
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1000
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    :cond_8
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1139
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1119
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UsimWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1121
    :cond_0
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 1129
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1143
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 910
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    :cond_0
    :goto_0
    return v0

    .line 913
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 934
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v1, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 936
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 915
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_3

    .line 916
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->registerListener()V

    .line 917
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->resetMotionEngine()V

    .line 918
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 921
    :cond_3
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    .line 922
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 926
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    .line 927
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->resetMotionEngine()V

    .line 928
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 929
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    .line 930
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "focused"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    if-eqz p1, :cond_3

    .line 1083
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1088
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->setWhichHelpInfo()V

    .line 1090
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 1091
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1095
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    :cond_1
    return-void

    .line 1079
    :cond_2
    const-string v0, "unfocused"

    goto :goto_0

    .line 1085
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    goto :goto_1
.end method

.method public setVoiceRecognitionFailed()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    :cond_0
    return-void
.end method
