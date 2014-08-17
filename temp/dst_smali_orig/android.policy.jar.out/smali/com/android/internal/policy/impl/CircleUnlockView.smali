.class public Lcom/android/internal/policy/impl/CircleUnlockView;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleUnlockView$SineEaseInOut;,
        Lcom/android/internal/policy/impl/CircleUnlockView$QuintEaseInOut;,
        Lcom/android/internal/policy/impl/CircleUnlockView$QuintEaseOut;,
        Lcom/android/internal/policy/impl/CircleUnlockView$CubicEaseInOut;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final MAX_AWAKE_TIME:I = 0x7530


# instance fields
.field private final ARR0W_FADE_IN_OFFSET:I

.field private final ARR0W_FADE_OUT_OFFSET:I

.field private final ARROW_FADE_IN_DURATION:I

.field private final ARROW_FADE_OUT_DURATION:I

.field private final CIRCLE_CENTER_DOWN_DURATION:I

.field private final CIRCLE_CENTER_UP_DURATION:I

.field private final CIRCLE_LOOP_DURATION:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_OUT_DURATION:I

.field private final FIRST_MOVE_DURATION:I

.field private final INIT_ANGLE_CIRCLE_1:I

.field private final INIT_ANGLE_CIRCLE_2:I

.field private final INIT_ANGLE_CIRCLE_3:I

.field private final LOOP_HANDLER_WHAT:I

.field private final SHORT_TAP_FIRST_DURATION:I

.field private final SHORT_TAP_FIRST_STARTOFF:I

.field private final SHORT_TAP_SECOND_DURATION:I

.field private final SHORT_TAP_SECOND_STARTOFF:I

.field protected TAG:Ljava/lang/String;

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private arrow:Landroid/widget/ImageView;

.field private arrowContainer:Landroid/widget/LinearLayout;

.field private arrowFadeIn:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeOut:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeSet:Landroid/view/animation/AnimationSet;

.field private circleAlphaIn1:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn2:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn3:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut1:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut2:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut3:Landroid/animation/ObjectAnimator;

.field private circleSet1:Landroid/animation/AnimatorSet;

.field private circleSet2:Landroid/animation/AnimatorSet;

.field private circleSet3:Landroid/animation/AnimatorSet;

.field private circleUpSet:Landroid/animation/AnimatorSet;

.field private circle_1:Landroid/widget/ImageView;

.field private circle_2:Landroid/widget/ImageView;

.field private circle_3:Landroid/widget/ImageView;

.field private firstMoveSet:Landroid/animation/AnimatorSet;

.field private isIgnoreTouch:Z

.field protected lpFrame:Landroid/widget/FrameLayout$LayoutParams;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

.field private mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

.field private mCircleInPress:Landroid/widget/ImageView;

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field protected mCircleRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mDownFirst:Z

.field private mHandlerForRepeat:Landroid/os/Handler;

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mResumedTimeMillis:J

.field protected mX:F

.field protected mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private radian:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "callback"

    .prologue
    const/16 v7, 0x12c

    const/16 v6, 0x10b

    const-wide v2, 0x3fe19999a0000000L

    const/16 v5, 0x320

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "CircleLockScreen"

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_MAX_ALPHA:I

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_FADE_IN_DURATION:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_FADE_OUT_DURATION:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARR0W_FADE_IN_OFFSET:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARR0W_FADE_OUT_OFFSET:I

    const/16 v0, 0x52

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->INIT_ANGLE_CIRCLE_1:I

    const/16 v0, 0x139

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->INIT_ANGLE_CIRCLE_2:I

    const/16 v0, 0x41

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->INIT_ANGLE_CIRCLE_3:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_CENTER_DOWN_DURATION:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_CENTER_UP_DURATION:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SHORT_TAP_FIRST_DURATION:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SHORT_TAP_FIRST_STARTOFF:I

    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SHORT_TAP_SECOND_DURATION:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SHORT_TAP_SECOND_STARTOFF:I

    const/16 v0, 0x514

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_LOOP_DURATION:I

    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_OUT_DURATION:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->FIRST_MOVE_DURATION:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->LOOP_HANDLER_WHAT:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDownFirst:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->isIgnoreTouch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mResumedTimeMillis:J

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setLayout()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setHandler()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAnimation()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mResumedTimeMillis:J

    return-void

    :cond_2
    const-wide v0, 0x3fe99999a0000000L

    goto :goto_0

    :cond_3
    const-wide v2, 0x3ff4ccccc0000000L

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->startCircleAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private addToCircleMain()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createArrow()V
    .locals 2

    .prologue
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    const v1, 0x1080495

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createArrowAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const-wide/16 v3, 0x320

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$2;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private createCircleAnimation()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const-wide/16 v9, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createCircleCenter()V
    .locals 2

    .prologue
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    const v1, 0x10804aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private createCircleCenterAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x10b

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    return-void
.end method

.method private createInnerCircle()V
    .locals 2

    .prologue
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    const v1, 0x1080498

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private createThreeCircles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const v1, 0x1080422

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const v1, 0x1080423

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const v1, 0x1080424

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .locals 4
    .parameter "value"

    .prologue
    const/16 v2, 0x1c

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .local v1, unlockscreen_lock_drawables:[I
    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    aget v2, v1, v0

    return v2

    .end local v0           #index:I
    :cond_0
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_0

    .end local v0           #index:I
    :cond_1
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xaat 0x4t 0x8t 0x1t
        0xabt 0x4t 0x8t 0x1t
        0xact 0x4t 0x8t 0x1t
        0xadt 0x4t 0x8t 0x1t
        0xaet 0x4t 0x8t 0x1t
        0xaft 0x4t 0x8t 0x1t
        0xb0t 0x4t 0x8t 0x1t
        0xb1t 0x4t 0x8t 0x1t
        0xb2t 0x4t 0x8t 0x1t
        0xb3t 0x4t 0x8t 0x1t
        0xb4t 0x4t 0x8t 0x1t
        0xb5t 0x4t 0x8t 0x1t
        0xb6t 0x4t 0x8t 0x1t
        0xb7t 0x4t 0x8t 0x1t
        0xb8t 0x4t 0x8t 0x1t
        0xb9t 0x4t 0x8t 0x1t
        0xbat 0x4t 0x8t 0x1t
        0xbbt 0x4t 0x8t 0x1t
        0xbct 0x4t 0x8t 0x1t
        0xbdt 0x4t 0x8t 0x1t
        0xbet 0x4t 0x8t 0x1t
        0xbft 0x4t 0x8t 0x1t
        0xc0t 0x4t 0x8t 0x1t
        0xc1t 0x4t 0x8t 0x1t
        0xc2t 0x4t 0x8t 0x1t
        0xc3t 0x4t 0x8t 0x1t
        0xc4t 0x4t 0x8t 0x1t
        0xc5t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .local v0, diff:J
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, v0, v7

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x2710

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    cmp-long v4, v0, v7

    if-lez v4, :cond_1

    cmp-long v4, v0, v9

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAnimation()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->createCircleCenterAnimation()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->createCircleAnimation()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->createArrowAnimation()V

    return-void
.end method

.method private setHandler()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$1;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    return-void
.end method

.method private setInnerCircle(Landroid/view/View;D)V
    .locals 3
    .parameter "v"
    .parameter "value"

    .prologue
    const-wide v1, 0x406fe00000000000L

    mul-double/2addr v1, p2

    double-to-int v0, v1

    .local v0, alpha:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void

    :cond_0
    rsub-int v0, v0, 0xff

    goto :goto_0
.end method

.method private startCircleAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    return-void
.end method

.method public clearCircleAnimation()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 38
    .parameter "view"
    .parameter "event"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->isIgnoreTouch:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->isIgnoreTouch:Z

    :cond_0
    const/16 v30, 0x0

    :goto_0
    return v30

    :cond_1
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    .local v26, touchedEventX:F
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .local v27, touchedEventY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v30

    if-nez v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    if-nez v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    const/16 v30, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mDownFirst:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->pokeWakelockWithTimeCheck()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mX:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mY:F

    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    move/from16 v30, v0

    sub-float v30, v30, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .local v28, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    move/from16 v30, v0

    sub-float v30, v30, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .local v29, yOffset:I
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .local v16, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v20, v30, v28

    .local v20, rightMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v8, v30, v29

    .local v8, bottomMargin:I
    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v16

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->startCircleAnimation()V

    goto/16 :goto_1

    .end local v8           #bottomMargin:I
    .end local v16           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20           #rightMargin:I
    .end local v28           #xOffset:I
    .end local v29           #yOffset:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .restart local v28       #xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .restart local v29       #yOffset:I
    goto/16 :goto_2

    .end local v28           #xOffset:I
    .end local v29           #yOffset:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->pokeWakelockWithTimeCheck()V

    const/4 v10, 0x0

    .local v10, diffX:I
    const/4 v11, 0x0

    .local v11, diffY:I
    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v17, v30, 0x2

    .local v17, mCircleCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    div-int/lit8 v18, v30, 0x2

    .local v18, mCircleCenterY:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    .end local v17           #mCircleCenterX:I
    .end local v18           #mCircleCenterY:I
    :goto_3
    int-to-double v0, v10

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    int-to-double v0, v11

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4000

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    add-double v14, v30, v32

    .local v14, distance_square:D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .local v12, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v19

    .local v19, min:I
    :goto_4
    div-int/lit8 v30, v19, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .local v24, threshold:D
    div-double v30, v12, v24

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockView;->setInnerCircle(Landroid/view/View;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpg-double v30, v30, v32

    if-gez v30, :cond_c

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mDownFirst:Z

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    if-nez p1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v19           #min:I
    .end local v24           #threshold:D
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mX:F

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mY:F

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    goto/16 :goto_3

    .restart local v12       #distance:D
    .restart local v14       #distance_square:D
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v19

    goto/16 :goto_4

    .restart local v19       #min:I
    .restart local v24       #threshold:D
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpl-double v30, v30, v32

    if-lez v30, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_11

    int-to-double v4, v10

    .local v4, absX:D
    mul-int/lit8 v30, v11, -0x1

    move/from16 v0, v30

    int-to-double v6, v0

    .local v6, absY:D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->radian:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->radian:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x400921fb54442d18L

    div-double v30, v30, v32

    const-wide v32, 0x4066800000000000L

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x42b4

    add-float v9, v30, v31

    .local v9, degree:F
    const/high16 v30, 0x42a4

    sub-float v21, v9, v30

    .local v21, targetDegree1:F
    const v30, 0x439c8000

    sub-float v22, v9, v30

    .local v22, targetDegree2:F
    const/high16 v30, 0x4282

    sub-float v23, v9, v30

    .local v23, targetDegree3:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDownFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mDownFirst:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearCircleAnimation()V

    const/16 v30, 0x0

    cmpg-float v30, v21, v30

    if-gez v30, :cond_d

    const/high16 v30, 0x43b4

    add-float v21, v21, v30

    :cond_d
    const/16 v30, 0x0

    cmpg-float v30, v22, v30

    if-gez v30, :cond_e

    const/high16 v30, 0x43b4

    add-float v22, v22, v30

    :cond_e
    const/16 v30, 0x0

    cmpg-float v30, v23, v30

    if-gez v30, :cond_f

    const/high16 v30, 0x43b4

    add-float v23, v23, v30

    :cond_f
    new-instance v30, Landroid/animation/AnimatorSet;

    invoke-direct/range {v30 .. v30}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3e99999a

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v21, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/high16 v37, 0x3f00

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v22, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3f333333

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v23, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x258

    invoke-virtual/range {v30 .. v32}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/internal/policy/impl/CircleUnlockView$CubicEaseInOut;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$CubicEaseInOut;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v30

    if-nez v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_5

    .end local v4           #absX:D
    .end local v6           #absY:D
    .end local v9           #degree:F
    .end local v21           #targetDegree1:F
    .end local v22           #targetDegree2:F
    .end local v23           #targetDegree3:F
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_9

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mDownFirst:Z

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_1

    .end local v10           #diffX:I
    .end local v11           #diffY:I
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v19           #min:I
    .end local v24           #threshold:D
    :pswitch_3
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->isIgnoreTouch:Z

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearCircleAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    if-nez p1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_5

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mResumedTimeMillis:J

    return-void
.end method

.method public setCenterImage(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    return-void
.end method

.method protected setCenterImage(Landroid/view/View;D)V
    .locals 3
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/CircleUnlockView;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setLayout()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/CircleUnlockView;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->createInnerCircle()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->createThreeCircles()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->createCircleCenter()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->createArrow()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->addToCircleMain()V

    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;)V
    .locals 0
    .parameter "onCircleTouchListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V
    .locals 0
    .parameter "onCircleUnlockListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    return-void
.end method
