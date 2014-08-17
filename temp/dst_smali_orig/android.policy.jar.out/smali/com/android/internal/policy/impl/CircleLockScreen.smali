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
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "CircleLockScreen"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/16 v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->FADE_IN_OUT_ANIMATION_DURATION:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->MSG_SET_VOICE_RECOGNITION_FAIL:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->MSG_GO_TO_UNLOCK_SCREEN:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, accesibilityService:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .local v12, drivingMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .local v26, unlockDrivingMode:I
    const/4 v3, 0x1

    if-ne v12, v3, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_12

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const/16 v25, 0x0

    .local v25, statementString:Ljava/lang/String;
    :try_start_0
    new-instance v14, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .local v14, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v25

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

    const v3, 0x1020385

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .local v24, statement:Landroid/widget/TextView;
    if-eqz v24, :cond_2

    if-eqz v25, :cond_13

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v24           #statement:Landroid/widget/TextView;
    :cond_2
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusable(Z)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusableInTouchMode(Z)V

    const/high16 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setDescendantFocusability(I)V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .local v16, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    const v3, 0x1090058

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_3
    const v3, 0x10202f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

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

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsCameraShortCut:Z

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    :cond_4
    const v3, 0x10202f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const v3, 0x10202f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x10202f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const v3, 0x10202f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

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

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v3, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    .local v17, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v17

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

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

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getDpi(Landroid/content/Context;)I

    move-result v11

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

    .local v18, isLiveWallpaper:Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

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

    .local v20, isRippleEffect:Z
    :goto_c
    if-nez v18, :cond_1e

    if-eqz v22, :cond_1e

    if-eqz v20, :cond_1e

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->createUnlockWidget()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    new-instance v3, Lcom/android/internal/policy/impl/ClockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v3

    if-eqz v3, :cond_1f

    new-instance v3, Lcom/android/internal/policy/impl/UsimWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/UsimWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    :goto_e
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v19

    .local v19, isNewMissedWidgetIsUsed:Z
    if-eqz v19, :cond_20

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

    .local v21, isTickerOn:Z
    :goto_10
    if-eqz v21, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_22

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

    const v3, 0x10202f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    const v3, 0x10202f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-nez v3, :cond_7

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

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_24

    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v23, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

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

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getMissedCallList()Lcom/android/internal/policy/impl/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getUnreadMsgList()Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

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

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_e

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .local v8, mChecked:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x65

    if-ge v8, v3, :cond_27

    const/4 v15, 0x1

    .local v15, flag:Z
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpHubInstalled()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->needToShowHelpPage()I

    move-result v8

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

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_d

    const/16 v3, 0xb

    if-ge v8, v3, :cond_2b

    const/4 v15, 0x1

    :cond_d
    :goto_15
    if-eqz v15, :cond_e

    new-instance v7, Lcom/android/internal/policy/impl/CircleLockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    .local v7, helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_2c

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

    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .end local v7           #helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    .end local v8           #mChecked:I
    .end local v15           #flag:Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    :cond_f
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v3, :cond_10

    const v3, 0x10202f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_10
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

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

    .restart local v12       #drivingMode:I
    .restart local v26       #unlockDrivingMode:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

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

    .end local v14           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v24           #statement:Landroid/widget/TextView;
    :catch_0
    move-exception v13

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

    .end local v13           #e:Ljava/lang/Exception;
    .restart local v16       #inflater:Landroid/view/LayoutInflater;
    :cond_14
    const v3, 0x1090059

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_3

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_6

    :catch_1
    move-exception v13

    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

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

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .restart local v11       #deviceDpi:I
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_1c
    const/16 v18, 0x1

    goto/16 :goto_b

    .restart local v18       #isLiveWallpaper:Z
    .restart local v22       #isWaterRippleConfig:Z
    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_c

    .restart local v20       #isRippleEffect:Z
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    goto/16 :goto_e

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

    :cond_21
    const/16 v21, 0x0

    goto/16 :goto_10

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

    :cond_23
    const v3, 0x10202f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_11

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_12

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getMissedCallList()Lcom/android/internal/policy/impl/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getUnreadMsgList()Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_13

    .restart local v8       #mChecked:I
    :cond_27
    const/4 v15, 0x0

    goto/16 :goto_14

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

    .restart local v15       #flag:Z
    :cond_2b
    const/4 v15, 0x0

    goto/16 :goto_15

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
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isSecure()Z

    move-result v0

    return v0
.end method

.method private bedimBackground(Z)V
    .locals 2
    .parameter "on"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private createUnlockWidget()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, unlockWidget:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #unlockWidget:Landroid/view/View;
    :goto_0
    return-object v0

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

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKioskModeEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

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

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

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

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

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

    const/4 v0, 0x2

    new-array v9, v0, [Landroid/net/Uri;

    .local v9, uri:[Landroid/net/Uri;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v1

    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v2

    const/4 v8, 0x0

    .local v8, result:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_3

    const/4 v6, 0x0

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

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

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

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040653

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_6

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040651

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

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
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->start()V

    :goto_0
    return-void

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

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->cleanUp()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->cleanUp()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->cleanUp()V

    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->cleanUp()V

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->cleanUp()V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->cleanUp()V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpDestroy()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

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
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v0, ""

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

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay removeView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->onPause()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->onPause()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->onPause()V

    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->onPause()V

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->onPause()V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->onPause()V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    :cond_7
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
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

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/UsimWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

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
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->onResume()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->onResume()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onResume()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->onResume()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->onResume()V

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

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->onResume()V

    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->onResume()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UsimWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    :cond_0
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->registerListener()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->resetMotionEngine()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->setMotionReady(Z)V

    :cond_3
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->resetMotionEngine()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->setMotionReady(Z)V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

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
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "focused"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->setWhichHelpInfo()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "unfocused"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    goto :goto_1
.end method

.method public setVoiceRecognitionFailed()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
