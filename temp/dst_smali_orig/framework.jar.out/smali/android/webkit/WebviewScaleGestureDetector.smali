.class public Landroid/webkit/WebviewScaleGestureDetector;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebviewScaleGestureDetector$SaveState;,
        Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;,
        Landroid/webkit/WebviewScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field static final ACTION_NONE:I = 0x0

.field static final ACTION_ONSCALE:I = 0x2

.field static final ACTION_ONSCALE_BEGIN:I = 0x1

.field static final ACTION_ONSCALE_END:I = 0x3

.field private static final MAX_POINTER_ID:I = 0x10

.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final SCROLL_THRESHOLD:F = 100.0f

.field private static final TAG:Ljava/lang/String; = "WebviewScaleGestureDetector"


# instance fields
.field private AREA_THRESHOLD:F

.field private FACTOR_THRESHOLD_MIN:F

.field private INIT_MODE:I

.field private PANNING_MODE:I

.field private SCROLL_MODE:I

.field private ZOOM_MODE:I

.field private mArea:F

.field private mAreaBegin:F

.field private mAreaCurrent:F

.field private mAreaTouchMode:I

.field private mCalledInBrowserTab:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrDockZoom:F

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field mCurrTilt:I

.field private mDockZoomUse:Z

.field private mFocusX:F

.field private mFocusY:F

.field mGestureAction:I

.field private mGestureInProgress:Z

.field private mHandleEventInWebview:Z

.field private mInOnScaleBegin:Z

.field private mLenBegin:F

.field private mLenCurrent:F

.field private final mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

.field private mMotionUse:Z

.field mOnScaleBeginTime:J

.field private mPrevArea:F

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mPreventMoveEvent:Z

.field private final mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

.field private mRealListenerProgress:Z

.field private mScaleFactor:F

.field private mStateA:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

.field private mStateB:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

.field private mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

.field private mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

.field mTiltBeginTime:J

.field private mTiltIntended:Z

.field private mTiltUse:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInOnScaleBegin:Z

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    const v0, 0x45bb8000

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    const v0, 0x3dcccccd

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    iput-wide v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginTime:J

    iput-wide v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltBeginTime:J

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mDockZoomUse:Z

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mHandleEventInWebview:Z

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mArea:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevArea:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mLenBegin:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mLenCurrent:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mAreaBegin:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mAreaCurrent:F

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->INIT_MODE:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->SCROLL_MODE:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->ZOOM_MODE:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->PANNING_MODE:I

    new-instance v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-direct {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;-><init>(Landroid/webkit/WebviewScaleGestureDetector;)V

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateA:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    new-instance v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-direct {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;-><init>(Landroid/webkit/WebviewScaleGestureDetector;)V

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateB:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateB:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateA:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput-object p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;

    invoke-direct {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;-><init>(Landroid/webkit/WebviewScaleGestureDetector;)V

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    iput-object p2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/high16 v12, 0x3f00

    const/4 v0, 0x0

    .local v0, bInitialized:Z
    iget-object v5, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    .local v5, temp:Landroid/webkit/WebviewScaleGestureDetector$SaveState;
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput-object v5, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {v8}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->reset()V

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v8, 0x10

    if-ge v2, v8, :cond_6

    const/4 v3, -0x1

    .local v3, pointerId:I
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .local v4, pointerIndex:I
    if-ltz v4, :cond_0

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->x:F

    .local v6, x:F
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->y:F

    .local v7, y:F
    if-eqz v0, :cond_5

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_2

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    :cond_2
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_3

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    :cond_3
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_4

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxX:F

    :cond_4
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_0

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    goto :goto_1

    :cond_5
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxX:F

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginX:F

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginY:F

    const/4 v0, 0x1

    goto :goto_1

    .end local v3           #pointerId:I
    .end local v4           #pointerIndex:I
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_6
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxX:F

    iget-object v10, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffX:F

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    iget-object v10, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mTimeStamp:J

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffX:F

    iget-object v10, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffX:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    iget-object v11, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v11, v11, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    sget-boolean v8, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v8, :cond_7

    const-string v8, "WebviewScaleGestureDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getArea   mStateCurrent.mLenBeforeSqrt = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  mGestureInProgress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetProgress()V

    const/4 v8, 0x0

    :goto_2
    return v8

    :cond_8
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    iget-object v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffX:F

    mul-float/2addr v9, v12

    add-float/2addr v8, v9

    iput v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    iget-object v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    mul-float/2addr v9, v12

    add-float/2addr v8, v9

    iput v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    const/4 v8, 0x1

    goto :goto_2
.end method

.method private getCurrentSignX()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginX:F

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getCurrentSignY()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginY:F

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getPreviousSignX()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginX:F

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getPreviousSignY()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginY:F

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method


# virtual methods
.method public SetInOnScaleBegin(Z)V
    .locals 3
    .parameter "setValue"

    .prologue
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SetInOnScaleBegin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInOnScaleBegin:Z

    return-void
.end method

.method public SetReadyToFinishZoom(Z)V
    .locals 3
    .parameter "bIsFinishZoom"

    .prologue
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetReadyToFinishZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    return-void
.end method

.method execute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute  mGestureAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    if-ne v3, v0, :cond_2

    iput-boolean v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    goto :goto_0
.end method

.method public getAreaThreshold()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrArea()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    return v0
.end method

.method public getCurrDockZoom()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    return v0
.end method

.method public getCurrTilt()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return v0
.end method

.method public getCurrentSpan()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffX:F

    invoke-direct {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSignX()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    invoke-direct {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSignY()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-wide v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mTimeStamp:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getMotionUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mMotionUse:Z

    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mMotionUse:Z

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getPrevArea()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffX:F

    invoke-direct {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSignX()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    invoke-direct {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSignY()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTiltUse()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    return v0
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-wide v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mTimeStamp:J

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-wide v2, v2, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mTimeStamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public initCurrDockZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    return-void
.end method

.method public isInOnScaleBegin()Z
    .locals 3

    .prologue
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInOnScaleBegin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInOnScaleBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInOnScaleBegin:Z

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public isInProgressEX()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    return v0
.end method

.method public isReadyToFinishZoom()Z
    .locals 3

    .prologue
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyToFinishZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    return v0
.end method

.method public onDockZoomEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .local v0, vscroll:F
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4040

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    :cond_0
    return-void
.end method

.method public onMREvent(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.browser"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getMotionUse()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    const/16 v3, 0x48

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->tiltUseDecision()V

    iget-boolean v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, action:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "WebviewScaleGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent  mGestureAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mGestureInProgress= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    if-nez v1, :cond_5

    packed-switch v0, :pswitch_data_0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetState()V

    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)Z

    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "WebviewScaleGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStateCurrent.mLenBeforeSqrt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v3, v3, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_3

    const-string v1, "WebviewScaleGestureDetector"

    const-string v2, "begin "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetState()V

    goto :goto_0

    :cond_5
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_6

    const-string v1, "WebviewScaleGestureDetector"

    const-string v2, "CANCEL, UP"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetProgress()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_7

    const-string v1, "WebviewScaleGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v3, v3, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetProgress()V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method resetProgress()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return-void
.end method

.method resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {v0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->reset()V

    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {v0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->reset()V

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    return-void
.end method

.method public setAreaThreshold(F)V
    .locals 0
    .parameter "threshold"

    .prologue
    iput p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    return-void
.end method

.method public setCurrTilt(I)V
    .locals 0
    .parameter "newTilt"

    .prologue
    iput p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return-void
.end method

.method public setInProgress(Z)V
    .locals 0
    .parameter "progress"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return-void
.end method

.method public setIsInProgress(Z)V
    .locals 0
    .parameter "InProgress"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return-void
.end method

.method public setNativeBrowser(Z)V
    .locals 0
    .parameter "mCalledInBrowserTab"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    return-void
.end method

.method public setTiltStartTime(J)V
    .locals 0
    .parameter "start"

    .prologue
    iput-wide p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginTime:J

    return-void
.end method

.method public setTiltUse(Z)V
    .locals 1
    .parameter "TiltUse"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebviewScaleGestureDetector;->setCurrTilt(I)V

    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    return-void
.end method

.method public tiltUseDecision()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f7cac083126e979L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltBeginTime:J

    iput-boolean v6, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltBeginTime:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v6}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltUse(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltBeginTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    goto :goto_0
.end method
