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

    .line 322
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    .line 125
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInOnScaleBegin:Z

    .line 126
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    .line 144
    const v0, 0x45bb8000

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    .line 145
    const v0, 0x3dcccccd

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    .line 146
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    .line 149
    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 150
    iput-wide v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginTime:J

    .line 151
    iput-wide v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltBeginTime:J

    .line 153
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    .line 154
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    .line 155
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    .line 158
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mDockZoomUse:Z

    .line 159
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    .line 271
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mHandleEventInWebview:Z

    .line 272
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mArea:F

    .line 273
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevArea:F

    .line 274
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mLenBegin:F

    .line 275
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mLenCurrent:F

    .line 276
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mAreaBegin:F

    .line 277
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mAreaCurrent:F

    .line 286
    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->INIT_MODE:I

    .line 287
    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->SCROLL_MODE:I

    .line 288
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->ZOOM_MODE:I

    .line 289
    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->PANNING_MODE:I

    .line 292
    new-instance v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-direct {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;-><init>(Landroid/webkit/WebviewScaleGestureDetector;)V

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateA:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    .line 293
    new-instance v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-direct {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;-><init>(Landroid/webkit/WebviewScaleGestureDetector;)V

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateB:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    .line 294
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateB:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    .line 295
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateA:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    .line 323
    iput-object p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 324
    new-instance v0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;

    invoke-direct {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;-><init>(Landroid/webkit/WebviewScaleGestureDetector;)V

    iput-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    .line 325
    iput-object p2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    .line 326
    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/high16 v12, 0x3f00

    .line 392
    const/4 v0, 0x0

    .line 396
    .local v0, bInitialized:Z
    iget-object v5, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    .line 397
    .local v5, temp:Landroid/webkit/WebviewScaleGestureDetector$SaveState;
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    .line 398
    iput-object v5, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    .line 399
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {v8}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->reset()V

    .line 401
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v8, 0x10

    if-ge v2, v8, :cond_6

    .line 403
    const/4 v3, -0x1

    .line 405
    .local v3, pointerId:I
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 406
    if-gez v3, :cond_1

    .line 401
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1

    .line 411
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 412
    .local v4, pointerIndex:I
    if-ltz v4, :cond_0

    .line 414
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->x:F

    .line 415
    .local v6, x:F
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->y:F

    .line 417
    .local v7, y:F
    if-eqz v0, :cond_5

    .line 418
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_2

    .line 419
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    .line 421
    :cond_2
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_3

    .line 422
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    .line 424
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_4

    .line 425
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxX:F

    .line 427
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_0

    .line 428
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    goto :goto_1

    .line 431
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    .line 432
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxX:F

    .line 433
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    .line 434
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    .line 435
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginX:F

    .line 436
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginY:F

    .line 437
    const/4 v0, 0x1

    goto :goto_1

    .line 441
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

    .line 442
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    iget-object v10, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    .line 444
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mTimeStamp:J

    .line 446
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

    .line 448
    sget-boolean v8, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v8, :cond_7

    .line 449
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

    .line 450
    :cond_7
    iget-boolean v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    .line 451
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 452
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetProgress()V

    .line 453
    const/4 v8, 0x0

    .line 459
    :goto_2
    return v8

    .line 456
    :cond_8
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    iget-object v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffX:F

    mul-float/2addr v9, v12

    add-float/2addr v8, v9

    iput v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 457
    iget-object v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    iget-object v9, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    mul-float/2addr v9, v12

    add-float/2addr v8, v9

    iput v8, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 459
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private getCurrentSignX()F
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginX:F

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    .line 477
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getCurrentSignY()F
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginY:F

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    .line 482
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getPreviousSignX()F
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginX:F

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    .line 487
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getPreviousSignY()F
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginY:F

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    .line 492
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
    .line 527
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 528
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

    .line 530
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInOnScaleBegin:Z

    .line 531
    return-void
.end method

.method public SetReadyToFinishZoom(Z)V
    .locals 3
    .parameter "bIsFinishZoom"

    .prologue
    .line 265
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 266
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

    .line 268
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    .line 269
    return-void
.end method

.method execute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 102
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 103
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

    .line 104
    :cond_0
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    if-ne v3, v0, :cond_2

    .line 105
    iput-boolean v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    .line 106
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    if-ne v0, v1, :cond_3

    .line 109
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    goto :goto_0
.end method

.method public getAreaThreshold()F
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrArea()F
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    return v0
.end method

.method public getCurrDockZoom()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    return v0
.end method

.method public getCurrTilt()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return v0
.end method

.method public getCurrentSpan()F
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    .line 549
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 2

    .prologue
    .line 559
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
    .line 569
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
    .line 631
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-wide v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mTimeStamp:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getMotionUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mMotionUse:Z

    .line 213
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mMotionUse:Z

    return v0

    :cond_0
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public getPrevArea()F
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    .line 582
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 2

    .prologue
    .line 592
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
    .line 602
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
    .line 612
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTiltUse()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    return v0
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 622
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
    .line 166
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    .line 167
    return-void
.end method

.method public isInOnScaleBegin()Z
    .locals 3

    .prologue
    .line 520
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 521
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

    .line 523
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInOnScaleBegin:Z

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public isInProgressEX()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    return v0
.end method

.method public isReadyToFinishZoom()Z
    .locals 3

    .prologue
    .line 258
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isReadyToFinishZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    return v0
.end method

.method public onDockZoomEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 199
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 201
    .local v0, vscroll:F
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4040

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    .line 202
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrDockZoom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    .line 204
    :cond_0
    return-void
.end method

.method public onMREvent(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.browser"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getMotionUse()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    const/16 v3, 0x48

    if-ne v2, v3, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 191
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->tiltUseDecision()V

    .line 192
    iget-boolean v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 331
    .local v0, action:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    .line 332
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_0

    .line 333
    const-string v1, "WebviewScaleGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent  mGestureAction = "

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

    .line 335
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    if-nez v1, :cond_5

    .line 337
    packed-switch v0, :pswitch_data_0

    .line 343
    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetState()V

    .line 346
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)Z

    .line 347
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_2

    .line 348
    const-string v1, "WebviewScaleGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStateCurrent.mLenBeforeSqrt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v3, v3, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 350
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 351
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_3

    .line 352
    const-string v1, "WebviewScaleGestureDetector"

    const-string v2, "begin "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 387
    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 339
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetState()V

    goto :goto_0

    .line 360
    :cond_5
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 363
    :pswitch_1
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_6

    .line 364
    const-string v1, "WebviewScaleGestureDetector"

    const-string v2, "CANCEL, UP"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_6
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 366
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetProgress()V

    goto :goto_0

    .line 370
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 373
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_7

    .line 374
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

    .line 375
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 376
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->resetProgress()V

    goto :goto_0

    .line 378
    :cond_8
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 379
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 380
    iget-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 360
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
    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 464
    return-void
.end method

.method resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStatePrev:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {v0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->reset()V

    .line 469
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mStateCurrent:Landroid/webkit/WebviewScaleGestureDetector$SaveState;

    invoke-virtual {v0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->reset()V

    .line 470
    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    .line 471
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 472
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRealListenerProgress:Z

    .line 473
    return-void
.end method

.method public setAreaThreshold(F)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 635
    iput p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->AREA_THRESHOLD:F

    .line 636
    return-void
.end method

.method public setCurrTilt(I)V
    .locals 0
    .parameter "newTilt"

    .prologue
    .line 173
    iput p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 174
    return-void
.end method

.method public setInProgress(Z)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 534
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 535
    return-void
.end method

.method public setIsInProgress(Z)V
    .locals 0
    .parameter "InProgress"

    .prologue
    .line 517
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 518
    return-void
.end method

.method public setNativeBrowser(Z)V
    .locals 0
    .parameter "mCalledInBrowserTab"

    .prologue
    .line 207
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    .line 208
    return-void
.end method

.method public setTiltStartTime(J)V
    .locals 0
    .parameter "start"

    .prologue
    .line 177
    iput-wide p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginTime:J

    .line 178
    return-void
.end method

.method public setTiltUse(Z)V
    .locals 1
    .parameter "TiltUse"

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0}, Landroid/webkit/WebviewScaleGestureDetector;->setCurrTilt(I)V

    .line 245
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    .line 246
    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    .line 247
    return-void
.end method

.method public tiltUseDecision()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 217
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    if-nez v0, :cond_1

    .line 218
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

    .line 219
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltBeginTime:J

    .line 221
    iput-boolean v6, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    .line 229
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltBeginTime:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 230
    invoke-virtual {p0, v6}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltUse(Z)V

    .line 241
    :cond_1
    return-void

    .line 225
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltBeginTime:J

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltIntended:Z

    goto :goto_0
.end method
