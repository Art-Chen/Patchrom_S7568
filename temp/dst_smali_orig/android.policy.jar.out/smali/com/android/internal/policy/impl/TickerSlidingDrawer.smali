.class public Lcom/android/internal/policy/impl/TickerSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "TickerSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$1;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$SlidingHandler;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$DrawerToggler;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mClosing:Z

.field private mContent:Landroid/view/View;

.field private final mContentFrame:Landroid/graphics/Rect;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private mLogoButton:Landroid/widget/ImageView;

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

.field private mRefreshButton:Landroid/widget/ImageView;

.field private final mTapThreshold:I

.field private mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f00

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContentFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    new-instance v5, Lcom/android/internal/policy/impl/TickerSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$SlidingHandler;-><init>(Lcom/android/internal/policy/impl/TickerSlidingDrawer;Lcom/android/internal/policy/impl/TickerSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    const-string v5, "Ticker"

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .local v4, orientation:I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAllowSingleTap:Z

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimateOnClick:Z

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .local v3, handleId:I
    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_0
    move v5, v7

    goto :goto_0

    .restart local v3       #handleId:I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, contentId:I
    if-nez v1, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-ne v3, v1, :cond_3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iput v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleId:I

    iput v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContentId:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumTapVelocity:I

    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TickerSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TickerSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/TickerSlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onAnimationFinished()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->incrementAnimation()V

    iget v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->closeDrawer()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->openDrawer()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    iget-wide v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, now:J
    iget-wide v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .local v4, t:F
    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    .local v3, position:F
    iget v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    .local v5, v:F
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    iput-wide v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    if-ne p1, v9, :cond_0

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v8, :cond_1

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .local v6, top:I
    sub-int v1, p1, v6

    .local v1, deltaY:I
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_4
    if-ne p1, v9, :cond_5

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v8, :cond_6

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .local v4, left:I
    sub-int v0, p1, v4

    .local v0, deltaX:I
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_8
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_7

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onAnimationFinished()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    int-to-float v2, p1

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    iput p2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, now:J
    iput-wide v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->stopTracking()V

    return-void

    .end local v0           #now:J
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iput v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iput v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    .local v0, childHeight:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    iget v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, now:J
    iput-wide v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    goto :goto_0

    .restart local v2       #opening:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    .local v0, scrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    .local v0, scrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateOpen(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateOpen()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->closeDrawer()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public getMinTickerHeights()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Math.abs(mBottomOffset)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/TickerSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$DrawerToggler;-><init>(Lcom/android/internal/policy/impl/TickerSlidingDrawer;Lcom/android/internal/policy/impl/TickerSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x102031f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mRefreshButton:Landroid/widget/ImageView;

    const v0, 0x102031a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLogoButton:Landroid/widget/ImageView;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .local v1, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .local v12, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .local v13, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .local v8, rawX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .local v9, rawY:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .local v5, handleFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContentFrame:Landroid/graphics/Rect;

    .local v3, contentFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .local v4, handle:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .local v2, content:Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v14

    if-eqz v14, :cond_1

    float-to-int v14, v12

    float-to-int v15, v13

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_1

    float-to-int v14, v12

    float-to-int v15, v13

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mClosing:Z

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mClosing:Z

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-nez v14, :cond_2

    float-to-int v14, v12

    float-to-int v15, v13

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .local v10, refreshFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v14

    if-eqz v14, :cond_3

    float-to-int v14, v8

    float-to-int v15, v13

    invoke-virtual {v10, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .local v7, logoFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLogoButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v14

    if-eqz v14, :cond_4

    float-to-int v14, v8

    float-to-int v15, v13

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_4
    if-nez v1, :cond_6

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/view/View;->setPressed(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareContent()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v14}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v11

    .local v11, top:I
    float-to-int v14, v13

    sub-int/2addr v14, v11

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTouchDelta:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareTracking(I)V

    .end local v11           #top:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v6

    .local v6, left:I
    float-to-int v14, v12

    sub-int/2addr v14, v6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTouchDelta:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v7, p4, p2

    .local v7, width:I
    sub-int v6, p5, p3

    .local v6, height:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .local v0, childHeight:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .local v1, childLeft:I
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    .local v2, childTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .end local v2           #childTop:I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    .end local v1           #childLeft:I
    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    .restart local v1       #childLeft:I
    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .restart local v2       #childTop:I
    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .local v1, height:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .local v4, width:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .end local v0           #action:I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_19

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .restart local v0       #action:I
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2
    float-to-int v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2

    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .local v8, yVelocity:F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .local v7, xVelocity:F
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    .local v6, vertical:Z
    if-eqz v6, :cond_a

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_9

    const/4 v2, 0x1

    .local v2, negative:Z
    :goto_3
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_4

    neg-float v7, v7

    :cond_4
    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_5

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    :cond_5
    :goto_4
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .local v4, velocity:F
    if-eqz v2, :cond_6

    neg-float v4, v4

    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .local v3, top:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .local v1, left:I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_16

    if-eqz v6, :cond_d

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_8

    :cond_7
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_f

    :cond_8
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_13

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->playSoundEffect(I)V

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_11

    if-eqz v6, :cond_10

    .end local v3           #top:I
    :goto_5
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v4           #velocity:F
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_c

    const/4 v2, 0x1

    .restart local v2       #negative:Z
    :goto_6
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b

    neg-float v8, v8

    :cond_b
    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_4

    .end local v2           #negative:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .restart local v1       #left:I
    .restart local v2       #negative:Z
    .restart local v3       #top:I
    .restart local v4       #velocity:F
    :cond_d
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_8

    :cond_e
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_8

    :cond_f
    if-eqz v6, :cond_15

    .end local v3           #top:I
    :goto_7
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_10
    move v3, v1

    goto :goto_5

    :cond_11
    if-eqz v6, :cond_12

    .end local v3           #top:I
    :goto_8
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_12
    move v3, v1

    goto :goto_8

    :cond_13
    if-eqz v6, :cond_14

    .end local v3           #top:I
    :goto_9
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_14
    move v3, v1

    goto :goto_9

    :cond_15
    move v3, v1

    goto :goto_7

    :cond_16
    if-eqz v6, :cond_17

    .end local v3           #top:I
    :goto_a
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_17
    move v3, v1

    goto :goto_a

    .end local v0           #action:I
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v3           #top:I
    .end local v4           #velocity:F
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #vertical:Z
    .end local v7           #xVelocity:F
    .end local v8           #yVelocity:F
    :cond_18
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mClosing:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-interface {v9}, Lcom/android/internal/policy/impl/TickerCallback;->closeTickerSlidingDrawer()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->openDrawer()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->requestLayout()V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setBottomOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->openDrawer()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->requestLayout()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    return-void
.end method
