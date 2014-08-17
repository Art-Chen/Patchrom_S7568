.class public Lcom/android/internal/widget/SPenGestureCroppingView;
.super Landroid/widget/FrameLayout;
.source "SPenGestureCroppingView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    }
.end annotation


# static fields
.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s"

.field private static final TAG:Ljava/lang/String; = "SPenGesutreCropping"


# instance fields
.field private final DEBUG:Z

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final ESTIMATE_INVALID_VALUE:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private mActivePointerId:I

.field private mAnimImgView:Landroid/widget/ImageView;

.field private mAnimSet:Landroid/view/animation/AnimationSet;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropAnimStartX:F

.field private mCropAnimStartY:F

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mEnableCheckClosedCurve:Z

.field private mExistOldCoords:Z

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field private mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mIntersectionPointLast:I

.field private mIntersectionPointPrev:I

.field private mIsAnimationOnProcess:Z

.field private mIsClosedCurve:Z

.field private mIsFirstPointer:Z

.field private mIsLastPointer:Z

.field private mMatrixForCropping:[[I

.field private mMatrixForCroppingHorizontal:[[I

.field private mMaxCoordX:I

.field private mMaxCoordY:I

.field private mMaxNumPointers:I

.field private mMinCoordX:I

.field private mMinCoordY:I

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private final mPaintForAnimation:Landroid/graphics/Paint;

.field private mPathOfCurve:Landroid/graphics/Path;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mPrintCoords:Z

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "Context"

    .prologue
    const/16 v5, 0x320

    const/16 v11, 0xb2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 300
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->DEBUG:Z

    .line 80
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->ESTIMATE_STROKE_WIDTH:I

    .line 81
    iput v5, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 82
    const/16 v3, 0x500

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 83
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 84
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 85
    const/16 v3, 0x14

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 86
    iput v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->ESTIMATE_INVALID_VALUE:I

    .line 87
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 243
    new-instance v3, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v3}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    .line 245
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 266
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    .line 267
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    .line 270
    iput-boolean v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrintCoords:Z

    .line 284
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    .line 296
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 303
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mContext:Landroid/content/Context;

    .line 304
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mHandler:Landroid/os/Handler;

    .line 305
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/SPenGestureCroppingView;->setFocusableInTouchMode(Z)V

    .line 306
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVC:Landroid/view/ViewConfiguration;

    .line 308
    const/16 v3, 0x500

    new-array v3, v3, [[I

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x500

    if-ge v0, v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    new-array v4, v5, [I

    aput-object v4, v3, v0

    .line 311
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 312
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    aget-object v3, v3, v0

    aput v9, v3, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v1           #j:I
    :cond_1
    new-array v3, v5, [[I

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    .line 317
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_3

    .line 318
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    const/16 v4, 0x500

    new-array v4, v4, [I

    aput-object v4, v3, v0

    .line 319
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_3
    const/16 v3, 0x500

    if-ge v1, v3, :cond_2

    .line 320
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    aget-object v3, v3, v0

    aput v9, v3, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 317
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 324
    .end local v1           #j:I
    :cond_3
    iput v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    .line 325
    iput-boolean v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mExistOldCoords:Z

    .line 326
    iput-boolean v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsLastPointer:Z

    .line 327
    iput-boolean v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsFirstPointer:Z

    .line 328
    iput-boolean v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsClosedCurve:Z

    .line 329
    iput-boolean v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsAnimationOnProcess:Z

    .line 330
    iput-boolean v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mEnableCheckClosedCurve:Z

    .line 331
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    .line 332
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    .line 333
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    .line 334
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    .line 335
    iput v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    .line 336
    iput v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    .line 337
    iput v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I

    .line 338
    iput v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I

    .line 339
    iput v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I

    .line 340
    iput v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I

    .line 341
    iput v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    .line 342
    iput v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointPrev:I

    .line 343
    iput v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I

    .line 344
    iput v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    .line 345
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    .line 347
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 348
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mWindowManager:Landroid/view/WindowManager;

    .line 349
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplay:Landroid/view/Display;

    .line 350
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->setDisplayDegrees()V

    .line 352
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathPaint:Landroid/graphics/Paint;

    .line 353
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 354
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4, v11, v11, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 355
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 356
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4080

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 358
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPaintForAnimation:Landroid/graphics/Paint;

    .line 359
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPaintForAnimation:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 360
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPaintForAnimation:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0x32

    const/16 v6, 0xc8

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 361
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPaintForAnimation:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 362
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPaintForAnimation:Landroid/graphics/Paint;

    const/high16 v4, 0x4080

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 364
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCirclePaint:Landroid/graphics/Paint;

    .line 365
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 366
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4, v11, v11, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 368
    new-instance v2, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    invoke-direct {v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;-><init>()V

    .line 369
    .local v2, ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iput v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mActivePointerId:I

    .line 371
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    .line 373
    iput-boolean v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateChanged:Z

    .line 374
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    .line 375
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SPenGestureCroppingView;->addView(Landroid/view/View;)V

    .line 378
    return-void
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1099
    const-string v7, "SPenGesutreCropping"

    const-string v8, "GetDefaultDisplayBimap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1102
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1104
    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    .line 1105
    .local v2, dims:[F
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->getDegreesForRotation(I)F

    move-result v1

    .line 1106
    .local v1, degrees:F
    cmpl-float v7, v1, v10

    if-lez v7, :cond_2

    move v3, v5

    .line 1108
    .local v3, requiresRotation:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1110
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 1111
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1112
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1113
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    .line 1114
    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    .line 1117
    :cond_0
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1119
    if-eqz v3, :cond_1

    .line 1121
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1123
    .local v4, ss:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1124
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1125
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1126
    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v11

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1127
    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v10, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1128
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1129
    iput-object v4, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1132
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v4           #ss:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v5

    .end local v3           #requiresRotation:Z
    :cond_2
    move v3, v6

    .line 1106
    goto :goto_0
.end method

.method private SaveImageClipboard()Z
    .locals 15

    .prologue
    .line 1059
    const-string v11, "SPenGesutreCropping"

    const-string v12, "SaveImageClipboard"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1062
    .local v6, mImageTime:J
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, imageDate:Ljava/lang/String;
    sget-object v11, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1064
    .local v3, imageDir:Ljava/lang/String;
    const-string v11, "Screenshot_%s.png"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1065
    .local v4, mImageFileName:Ljava/lang/String;
    const-string v11, "%s/%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1067
    .local v5, mImageFilePath:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "_data"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 1072
    .local v9, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8

    .line 1073
    .local v8, outStream:Ljava/io/OutputStream;
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmap:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1074
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 1075
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v8           #outStream:Ljava/io/OutputStream;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v11, "com.android.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, copyIntent:Landroid/content/Intent;
    const-string v11, "copyPath"

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1087
    const-wide/16 v11, 0x64

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1092
    :goto_1
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "_data=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-virtual {v11, v9, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1094
    const/4 v11, 0x1

    return v11

    .line 1077
    .end local v0           #copyIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1078
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1088
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #copyIntent:Landroid/content/Intent;
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/SPenGestureCroppingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/SPenGestureCroppingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/SPenGestureCroppingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/SPenGestureCroppingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/SPenGestureCroppingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/widget/SPenGestureCroppingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/SPenGestureCroppingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/widget/SPenGestureCroppingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/SPenGestureCroppingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/widget/SPenGestureCroppingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/SPenGestureCroppingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPaintForAnimation:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/SPenGestureCroppingView;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/widget/SPenGestureCroppingView;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/widget/SPenGestureCroppingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/internal/widget/SPenGestureCroppingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/widget/SPenGestureCroppingView;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SPenGestureCroppingView;->setCropAnimation(FF)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/internal/widget/SPenGestureCroppingView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsAnimationOnProcess:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/widget/SPenGestureCroppingView;FFLandroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/SPenGestureCroppingView;->startCropAnimation(FFLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/widget/SPenGestureCroppingView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->SaveImageClipboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/SPenGestureCroppingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/widget/SPenGestureCroppingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I

    return p1
.end method

.method private checkClosedCurve(III)V
    .locals 7
    .parameter "resultCoordsX"
    .parameter "resultCoordsY"
    .parameter "markNumber"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 674
    const/4 v2, -0x1

    .line 676
    .local v2, markNumberFromMatrix:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 677
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v3, :cond_5

    .line 678
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    add-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    .line 682
    :goto_1
    if-eq v2, v6, :cond_6

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_6

    .line 683
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I

    add-int/lit8 v3, v3, 0xa

    if-ge v3, p3, :cond_0

    .line 684
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsClosedCurve:Z

    .line 685
    iput v2, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointPrev:I

    .line 686
    iput p3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I

    .line 687
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    .line 689
    :cond_0
    const-string v3, "SPenGesutreCropping"

    const-string v4, "checkClosedCurve : mIsClosedCurve is true (case 1)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_1
    :goto_2
    const/16 v0, 0x1b

    .line 711
    .local v0, circleRadius:I
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x36

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x36

    if-lt v3, p1, :cond_2

    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x36

    if-gt v3, p2, :cond_2

    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x36

    if-ge v3, p2, :cond_3

    .line 713
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mEnableCheckClosedCurve:Z

    .line 716
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mEnableCheckClosedCurve:Z

    if-ne v3, v5, :cond_4

    .line 717
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x1b

    if-gt v3, p1, :cond_4

    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x1b

    if-lt v3, p1, :cond_4

    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x1b

    if-gt v3, p2, :cond_4

    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x1b

    if-lt v3, p2, :cond_4

    .line 719
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsClosedCurve:Z

    .line 720
    iput v2, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointPrev:I

    .line 721
    iput p3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I

    .line 722
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    .line 724
    const-string v3, "SPenGesutreCropping"

    const-string v4, "checkClosedCurve : mIsClosedCurve is true (case 2)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_4
    return-void

    .line 680
    .end local v0           #circleRadius:I
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    add-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    goto :goto_1

    .line 693
    :cond_6
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v3, :cond_8

    .line 694
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    sub-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    .line 698
    :goto_3
    if-eq v2, v6, :cond_9

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_9

    .line 699
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I

    add-int/lit8 v3, v3, 0xa

    if-ge v3, p3, :cond_7

    .line 700
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsClosedCurve:Z

    .line 701
    iput v2, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointPrev:I

    .line 702
    iput p3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I

    .line 703
    iget v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    .line 705
    :cond_7
    const-string v3, "SPenGesutreCropping"

    const-string v4, "checkClosedCurve : mIsClosedCurve is true (case 1)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 696
    :cond_8
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    sub-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    goto :goto_3

    .line 676
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private cleanAnimationImgView()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimSet:Landroid/view/animation/AnimationSet;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    return-void
.end method

.method private createCropAnimation(FFLandroid/graphics/Bitmap;)Z
    .locals 13
    .parameter "startX"
    .parameter "startY"
    .parameter "bitmap"

    .prologue
    .line 211
    const-string v1, "SPenGesutreCropping"

    const-string v2, "createCropAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimSet:Landroid/view/animation/AnimationSet;

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, -0x41b33333

    mul-float v10, v1, v2

    .line 215
    .local v10, fDestX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, -0x41b33333

    mul-float v11, v1, v2

    .line 217
    .local v11, fDestY:F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f99999a

    const/high16 v3, 0x3f80

    const v4, 0x3f99999a

    const/4 v5, 0x0

    sub-float v6, p1, v10

    const/4 v7, 0x0

    sub-float v8, p2, v11

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 220
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 221
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 222
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 224
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 226
    .local v12, translate2:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x212

    invoke-virtual {v12, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 227
    const-wide/16 v1, 0x1f4

    invoke-virtual {v12, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 231
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const v2, 0x3ecccccd

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 232
    .local v9, alpha:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x212

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 233
    const-wide/16 v1, 0x3e8

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 235
    const/4 v1, 0x1

    return v1
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 1137
    packed-switch p1, :pswitch_data_0

    .line 1145
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1139
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 1141
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 1143
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 1137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;III)V
    .locals 3
    .parameter "type"
    .parameter "action"
    .parameter "index"
    .parameter "coords"
    .parameter "id"
    .parameter "toolType"
    .parameter "buttonState"

    .prologue
    const v2, 0xff00

    .line 479
    and-int/lit16 v1, p2, 0xff

    packed-switch v1, :pswitch_data_0

    .line 524
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, prefix:Ljava/lang/String;
    :goto_0
    return-void

    .line 481
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_0
    const-string v0, "DOWN"

    .line 482
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_1
    const-string v0, "UP"

    .line 485
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 487
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_2
    const-string v0, "MOVE"

    .line 488
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 490
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_3
    const-string v0, "CANCEL"

    .line 491
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 493
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_4
    const-string v0, "OUTSIDE"

    .line 494
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_5
    and-int v1, p2, v2

    shr-int/lit8 v1, v1, 0x8

    if-ne p3, v1, :cond_0

    .line 498
    const-string v0, "DOWN"

    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 500
    .end local v0           #prefix:Ljava/lang/String;
    :cond_0
    const-string v0, "MOVE"

    .line 502
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 504
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_6
    and-int v1, p2, v2

    shr-int/lit8 v1, v1, 0x8

    if-ne p3, v1, :cond_1

    .line 506
    const-string v0, "UP"

    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 508
    .end local v0           #prefix:Ljava/lang/String;
    :cond_1
    const-string v0, "MOVE"

    .line 510
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 512
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_7
    const-string v0, "HOVER MOVE"

    .line 513
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 515
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_8
    const-string v0, "HOVER ENTER"

    .line 516
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_9
    const-string v0, "HOVER EXIT"

    .line 519
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 521
    .end local v0           #prefix:Ljava/lang/String;
    :pswitch_a
    const-string v0, "SCROLL"

    .line 522
    .restart local v0       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "type"
    .parameter "event"

    .prologue
    .line 470
    return-void
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 14
    .parameter "oldCoordsX"
    .parameter "oldCoordsY"
    .parameter "newCoordsX"
    .parameter "newCoordsY"
    .parameter "markNumber"

    .prologue
    .line 533
    const/4 v8, 0x0

    .line 534
    .local v8, startCoordsX:F
    const/4 v9, 0x0

    .line 535
    .local v9, startCoordsY:F
    const/4 v1, 0x0

    .line 536
    .local v1, endCoordsX:F
    const/4 v2, 0x0

    .line 537
    .local v2, endCoordsY:F
    const/4 v5, 0x0

    .line 538
    .local v5, resultCoordsX:F
    const/4 v6, 0x0

    .line 539
    .local v6, resultCoordsY:F
    const/4 v7, 0x0

    .line 540
    .local v7, slope:F
    const/4 v4, 0x0

    .line 542
    .local v4, interceptY:F
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 543
    :cond_0
    float-to-int v10, p1

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    .line 544
    move/from16 v0, p2

    float-to-int v10, v0

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    .line 546
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I

    .line 547
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I

    .line 548
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I

    .line 549
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I

    .line 550
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 551
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 554
    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v11, p3, p1

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v12, p4, p2

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 556
    cmpl-float v10, p1, p3

    if-nez v10, :cond_2

    cmpl-float v10, p2, p4

    if-eqz v10, :cond_19

    .line 558
    :cond_2
    move v8, p1

    .line 559
    move/from16 v9, p2

    .line 560
    move/from16 v1, p3

    .line 561
    move/from16 v2, p4

    .line 563
    sub-float v10, v8, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_8

    .line 564
    sub-float v10, v2, v9

    sub-float v11, v1, v8

    div-float v7, v10, v11

    .line 569
    :goto_0
    mul-float v10, v8, v7

    sub-float v4, v9, v10

    .line 571
    cmpg-float v10, p1, p3

    if-gtz v10, :cond_f

    .line 572
    :goto_1
    cmpg-float v10, v8, v1

    if-gtz v10, :cond_19

    .line 573
    move v5, v8

    .line 574
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 576
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/widget/SPenGestureCroppingView;->checkClosedCurve(III)V

    .line 578
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I

    int-to-float v10, v10

    cmpg-float v10, v10, v5

    if-gez v10, :cond_3

    .line 579
    float-to-int v10, v5

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I

    .line 581
    :cond_3
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I

    int-to-float v10, v10

    cmpl-float v10, v10, v5

    if-lez v10, :cond_4

    .line 582
    float-to-int v10, v5

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I

    .line 584
    :cond_4
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I

    int-to-float v10, v10

    cmpg-float v10, v10, v6

    if-gez v10, :cond_5

    .line 585
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I

    .line 587
    :cond_5
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I

    int-to-float v10, v10

    cmpl-float v10, v10, v6

    if-lez v10, :cond_6

    .line 588
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I

    .line 591
    :cond_6
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 592
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    .line 595
    :cond_7
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    .line 596
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 597
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v10, :cond_9

    .line 598
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    .line 596
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 567
    .end local v3           #i:I
    :cond_8
    const/4 v7, 0x0

    goto :goto_0

    .line 600
    .restart local v3       #i:I
    :cond_9
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    goto :goto_3

    .line 603
    .end local v3           #i:I
    :cond_a
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c

    .line 604
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_4
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_c

    .line 605
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v10, :cond_b

    .line 606
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    .line 604
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 608
    :cond_b
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    goto :goto_5

    .line 612
    .end local v3           #i:I
    :cond_c
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    .line 613
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v10, :cond_d

    .line 614
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    .line 572
    :goto_6
    const/high16 v10, 0x3f80

    add-float/2addr v8, v10

    goto/16 :goto_1

    .line 616
    :cond_d
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    goto :goto_6

    .line 660
    :cond_e
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    .line 661
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v10, :cond_18

    .line 662
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    .line 620
    :goto_7
    const/high16 v10, 0x3f80

    sub-float/2addr v8, v10

    :cond_f
    cmpl-float v10, v8, v1

    if-ltz v10, :cond_19

    .line 621
    move v5, v8

    .line 622
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 624
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/widget/SPenGestureCroppingView;->checkClosedCurve(III)V

    .line 626
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I

    int-to-float v10, v10

    cmpg-float v10, v10, v5

    if-gez v10, :cond_10

    .line 627
    float-to-int v10, v5

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I

    .line 629
    :cond_10
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I

    int-to-float v10, v10

    cmpl-float v10, v10, v5

    if-lez v10, :cond_11

    .line 630
    float-to-int v10, v5

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I

    .line 632
    :cond_11
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I

    int-to-float v10, v10

    cmpg-float v10, v10, v6

    if-gez v10, :cond_12

    .line 633
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I

    .line 635
    :cond_12
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I

    int-to-float v10, v10

    cmpl-float v10, v10, v6

    if-lez v10, :cond_13

    .line 636
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I

    .line 639
    :cond_13
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_14

    .line 640
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    .line 643
    :cond_14
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_16

    .line 644
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_8
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_16

    .line 645
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v10, :cond_15

    .line 646
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    .line 644
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 648
    :cond_15
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    goto :goto_9

    .line 651
    .end local v3           #i:I
    :cond_16
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_e

    .line 652
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_a
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_e

    .line 653
    iget v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v10, :cond_17

    .line 654
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    .line 652
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 656
    :cond_17
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    goto :goto_b

    .line 664
    .end local v3           #i:I
    :cond_18
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    goto/16 :goto_7

    .line 668
    :cond_19
    return-void
.end method

.method private setAnimationImageView(FFLandroid/graphics/Bitmap;)Z
    .locals 5
    .parameter "startX"
    .parameter "startY"
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    .line 193
    const-string v1, "SPenGesutreCropping"

    const-string v2, "setAnimationImageView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 196
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 199
    const-string v1, "SPenGesutreCropping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAnimationImageView()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 206
    const/4 v1, 0x1

    return v1
.end method

.method private setCropAnimation(FF)V
    .locals 0
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 160
    iput p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropAnimStartX:F

    .line 161
    iput p2, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropAnimStartY:F

    .line 162
    return-void
.end method

.method private setDisplayDegrees()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1234
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SPenGestureCroppingView;->getDegreesForRotation(I)F

    move-result v0

    .line 1236
    .local v0, degress:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    move v4, v2

    :goto_0
    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    or-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 1237
    iput v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    .line 1240
    :goto_2
    return-void

    :cond_0
    move v4, v3

    .line 1236
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 1239
    :cond_2
    iput v2, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    goto :goto_2
.end method

.method private static shouldLogKey(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x1

    .line 1201
    packed-switch p0, :pswitch_data_0

    .line 1209
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1201
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startCropAnimation(FFLandroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->cleanAnimationImgView()V

    .line 169
    iget v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropAnimStartX:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropAnimStartY:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    const-string v1, "SPenGesutreCropping"

    const-string v2, "the set position is different!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropAnimStartX:F

    iget v2, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropAnimStartY:F

    invoke-direct {p0, v1, v2, p3}, Lcom/android/internal/widget/SPenGestureCroppingView;->setAnimationImageView(FFLandroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropAnimStartX:F

    iget v2, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCropAnimStartY:F

    invoke-direct {p0, v1, v2, p3}, Lcom/android/internal/widget/SPenGestureCroppingView;->createCropAnimation(FFLandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->cleanAnimationImgView()V

    .line 188
    :goto_0
    return v0

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    .line 181
    const-string v1, "SPenGesutreCropping"

    const-string v2, "mAnimImgView == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .locals 27
    .parameter "event"

    .prologue
    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 745
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 746
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 748
    .local v22, totalPointerSize:I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    const/16 v2, 0x9

    if-eq v4, v2, :cond_12

    const/4 v2, 0x7

    if-eq v4, v2, :cond_12

    const/16 v2, 0xa

    if-eq v4, v2, :cond_12

    .line 751
    if-eqz v4, :cond_0

    and-int/lit16 v2, v4, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 754
    :cond_0
    const v2, 0xff00

    and-int/2addr v2, v4

    shr-int/lit8 v18, v2, 0x8

    .line 756
    .local v18, index:I
    if-nez v4, :cond_2

    .line 757
    const/16 v19, 0x0

    .local v19, p:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    .line 759
    .local v20, ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->clearTrace()V

    .line 760
    const/4 v2, 0x0

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$302(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;Z)Z

    .line 757
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 762
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurDown:Z

    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurNumPointers:I

    .line 764
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxNumPointers:I

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 768
    .end local v19           #p:I
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurNumPointers:I

    .line 769
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurNumPointers:I

    if-ge v2, v3, :cond_3

    .line 770
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxNumPointers:I

    .line 773
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 774
    .local v7, id:I
    :goto_1
    move/from16 v0, v22

    if-gt v0, v7, :cond_4

    .line 775
    new-instance v20, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;-><init>()V

    .line 776
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    add-int/lit8 v22, v22, 0x1

    .line 778
    goto :goto_1

    .line 780
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mActivePointerId:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$300(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 782
    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mActivePointerId:I

    .line 785
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    .line 786
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$302(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;Z)Z

    .line 787
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsLastPointer:Z

    .line 790
    .end local v7           #id:I
    .end local v18           #index:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 792
    .local v15, eventPointerCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 795
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v17

    .line 797
    .local v17, histroySize:I
    const/16 v16, 0x0

    .local v16, historyPos:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 798
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v15, :cond_c

    .line 799
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 800
    .restart local v7       #id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurDown:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    move-object/from16 v20, v2

    .line 801
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :goto_4
    if-eqz v20, :cond_b

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$400(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    .line 802
    .local v6, coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1, v6}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 803
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrintCoords:Z

    if-eqz v2, :cond_8

    .line 804
    const-string v3, "SPenGestureCropping"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;III)V

    .line 807
    :cond_8
    if-eqz v20, :cond_9

    .line 808
    iget v2, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->addTrace(FF)V

    .line 798
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 800
    .end local v6           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_a
    const/16 v20, 0x0

    goto :goto_4

    .line 801
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_5

    .line 797
    .end local v7           #id:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 812
    .end local v5           #i:I
    :cond_d
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    if-ge v5, v15, :cond_12

    .line 813
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 814
    .restart local v7       #id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurDown:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    move-object/from16 v20, v2

    .line 815
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :goto_7
    if-eqz v20, :cond_11

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$400(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    .line 816
    .restart local v6       #coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 817
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrintCoords:Z

    if-eqz v2, :cond_e

    .line 818
    const-string v3, "SPenGestureCropping"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;III)V

    .line 821
    :cond_e
    if-eqz v20, :cond_f

    .line 822
    iget v2, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->addTrace(FF)V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mXVelocity:F
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$502(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;F)F

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mYVelocity:F
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$602(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;F)F

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    const/4 v3, -0x1

    const/4 v8, -0x1

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$700(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v9

    invoke-virtual {v2, v7, v3, v8, v9}, Landroid/view/VelocityTracker;->getEstimator(IIILandroid/view/VelocityTracker$Estimator;)Z

    .line 826
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$802(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;I)I

    .line 812
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 814
    .end local v6           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_10
    const/16 v20, 0x0

    goto :goto_7

    .line 815
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_8

    .line 832
    .end local v5           #i:I
    .end local v7           #id:I
    .end local v15           #eventPointerCount:I
    .end local v16           #historyPos:I
    .end local v17           #histroySize:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_14

    .line 833
    const/16 v19, 0x0

    .restart local v19       #p:I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    .line 835
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->clearTrace()V

    .line 837
    const/4 v2, 0x0

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$302(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;Z)Z

    .line 833
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 840
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurDown:Z

    .line 841
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurNumPointers:I

    .line 842
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxNumPointers:I

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 845
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mExistOldCoords:Z

    .line 846
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsLastPointer:Z

    .line 847
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsFirstPointer:Z

    .line 848
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mEnableCheckClosedCurve:Z

    .line 849
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    .line 850
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    .line 851
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    .line 852
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    .line 853
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    .line 854
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    .line 855
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    .line 856
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    .line 857
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsClosedCurve:Z

    .line 858
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateChanged:Z

    .line 862
    .end local v19           #p:I
    :cond_14
    const/4 v2, 0x1

    if-eq v4, v2, :cond_15

    const/4 v2, 0x3

    if-eq v4, v2, :cond_15

    and-int/lit16 v2, v4, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1f

    .line 865
    :cond_15
    const-string v2, "SPenGesutreCropping"

    const-string v3, "addPointerEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 869
    .local v21, totalPointerCount:I
    const/16 v19, 0x0

    .restart local v19       #p:I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    .line 871
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$000(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)I

    move-result v23

    .line 872
    .local v23, traceCount:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_b
    move/from16 v0, v23

    if-ge v5, v0, :cond_17

    .line 873
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceX:[F
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$100(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v5

    .line 874
    .local v24, x:F
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceY:[F
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$200(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)[F

    move-result-object v2

    aget v25, v2, v5

    .line 876
    .local v25, y:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mExistOldCoords:Z

    if-nez v2, :cond_16

    .line 877
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    .line 878
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    .line 879
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mExistOldCoords:Z

    .line 872
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 882
    :cond_16
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    .line 883
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    .line 884
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/widget/SPenGestureCroppingView;->markMatrixForCropping(FFFFI)V

    .line 885
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    .line 886
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    .line 887
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    goto :goto_c

    .line 1053
    .end local v4           #action:I
    .end local v5           #i:I
    .end local v19           #p:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    .end local v21           #totalPointerCount:I
    .end local v22           #totalPointerSize:I
    .end local v23           #traceCount:I
    .end local v24           #x:F
    .end local v25           #y:F
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 869
    .restart local v4       #action:I
    .restart local v5       #i:I
    .restart local v19       #p:I
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    .restart local v21       #totalPointerCount:I
    .restart local v22       #totalPointerSize:I
    .restart local v23       #traceCount:I
    :cond_17
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 892
    .end local v5           #i:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    .end local v23           #traceCount:I
    :cond_18
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mExistOldCoords:Z

    .line 893
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    .line 894
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    .line 895
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    .line 896
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    .line 897
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    .line 899
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 900
    const-string v2, "SPenGesutreCropping"

    const-string v3, "addPointerEvent : mNumColsedCurves is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/16 v19, 0x0

    :goto_d
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1c

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    .line 904
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$000(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)I

    move-result v23

    .line 905
    .restart local v23       #traceCount:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_e
    move/from16 v0, v23

    if-ge v5, v0, :cond_1b

    .line 906
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceX:[F
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$100(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v5

    .line 907
    .restart local v24       #x:F
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceY:[F
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$200(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)[F

    move-result-object v2

    aget v25, v2, v5

    .line 909
    .restart local v25       #y:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    if-gt v2, v3, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    if-lt v2, v3, :cond_19

    .line 910
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mExistOldCoords:Z

    if-nez v2, :cond_1a

    .line 911
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    .line 912
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 915
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mExistOldCoords:Z

    .line 928
    :cond_19
    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    .line 905
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 919
    :cond_1a
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    .line 920
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    add-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    add-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-virtual {v2, v3, v8, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 922
    const-string v2, "SPenGesutreCropping"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPointerEvent : mOldCoordsX = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", mOldCoordsY"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v2, "SPenGesutreCropping"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPointerEvent : mNewCoordsX = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", mNewCoordsY"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    .line 925
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    goto/16 :goto_f

    .line 902
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_1b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_d

    .line 932
    .end local v5           #i:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    .end local v23           #traceCount:I
    :cond_1c
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    .line 933
    .local v14, boundsOfPath:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 934
    const-string v2, "SPenGesutreCropping"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPointerEvent : boundsOfPath.right = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v14, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", boundsOfPath.left"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v14, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v2, "SPenGesutreCropping"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPointerEvent : boundsOfPath.top = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", boundsOfPath.bottom"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget v2, v14, Landroid/graphics/RectF;->right:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4220

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d

    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4220

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d

    .line 938
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsClosedCurve:Z

    .line 942
    .end local v14           #boundsOfPath:Landroid/graphics/RectF;
    :cond_1d
    const/16 v19, 0x0

    :goto_10
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1e

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    .line 944
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->clearTrace()V

    .line 945
    const-string v2, "SPenGesutreCropping"

    const-string v3, "addPointerEvent : do clearTrace"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v2, 0x0

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$302(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;Z)Z

    .line 942
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 949
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurDown:Z

    .line 950
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCurNumPointers:I

    .line 951
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxNumPointers:I

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 954
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mExistOldCoords:Z

    .line 955
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsLastPointer:Z

    .line 956
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsFirstPointer:Z

    .line 957
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mEnableCheckClosedCurve:Z

    .line 958
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsX:F

    .line 959
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mOldCoordsY:F

    .line 960
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsX:F

    .line 961
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNewCoordsY:F

    .line 962
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumberOfAddTrace:I

    .line 963
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointX:I

    .line 964
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mFirstStartPointY:I

    .line 965
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrevCoordY:I

    .line 968
    .end local v19           #p:I
    .end local v21           #totalPointerCount:I
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->postInvalidate()V

    .line 970
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsClosedCurve:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 971
    const-string v2, "SPenGesutreCropping"

    const-string v3, "addPointerEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 974
    const-string v2, "SPenGesutreCropping"

    const-string v3, "send interrupt to previous mSPenGestureCropDispatchThread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 977
    :cond_20
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/widget/SPenGestureCroppingView$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/widget/SPenGestureCroppingView$1;-><init>(Lcom/android/internal/widget/SPenGestureCroppingView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1050
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsClosedCurve:Z

    .line 1051
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mNumColsedCurves:I

    .line 1053
    :cond_21
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1226
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1228
    const-string v0, "SPenGesutreCropping"

    const-string v1, "dispatchConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateChanged:Z

    .line 1230
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->setDisplayDegrees()V

    .line 1231
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 131
    const-string v0, "SPenGesutreCropping"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->cleanAnimationImgView()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsAnimationOnProcess:Z

    .line 134
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 139
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 144
    const-string v0, "SPenGesutreCropping"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 404
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->getWidth()I

    move-result v28

    .line 405
    .local v28, w:I
    div-int/lit8 v23, v28, 0x7

    .line 406
    .local v23, itemW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v2, v2

    add-int/lit8 v19, v2, 0x1

    .line 407
    .local v19, base:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mHeaderBottom:I

    move/from16 v20, v0

    .line 408
    .local v20, bottom:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 410
    .local v26, totalPointerSize:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsFirstPointer:Z

    .line 412
    const/16 v24, 0x0

    .local v24, p:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;

    .line 414
    .local v25, ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceCount:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$000(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)I

    move-result v27

    .line 416
    .local v27, traceCount:I
    const/4 v3, 0x0

    .local v3, lastX:F
    const/4 v4, 0x0

    .line 417
    .local v4, lastY:F
    const/16 v21, 0x0

    .line 419
    .local v21, haveLast:Z
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 420
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceX:[F
    invoke-static/range {v25 .. v25}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$100(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)[F

    move-result-object v2

    aget v5, v2, v22

    .line 421
    .local v5, x:F
    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->mTraceY:[F
    invoke-static/range {v25 .. v25}, Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;->access$200(Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;)[F

    move-result-object v2

    aget v6, v2, v22

    .line 423
    .local v6, y:F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    const/16 v21, 0x0

    .line 419
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 427
    :cond_0
    if-eqz v21, :cond_2

    .line 428
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsFirstPointer:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    .line 429
    const/high16 v2, 0x4180

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 430
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsFirstPointer:Z

    .line 432
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 434
    :cond_2
    move v3, v5

    .line 435
    move v4, v6

    .line 436
    const/16 v21, 0x1

    goto :goto_2

    .line 438
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsLastPointer:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    .line 439
    const/high16 v2, 0x4130

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 412
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 443
    .end local v3           #lastX:F
    .end local v4           #lastY:F
    .end local v21           #haveLast:Z
    .end local v22           #i:I
    .end local v25           #ps:Lcom/android/internal/widget/SPenGestureCroppingView$PointerState;
    .end local v27           #traceCount:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mIsAnimationOnProcess:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_7

    .line 444
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 445
    .local v12, paintForDimming:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 446
    const/16 v2, 0x8f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v12, v2, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 448
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v2, :cond_6

    .line 449
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x4448

    const/high16 v11, 0x44a0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 463
    .end local v12           #paintForDimming:Landroid/graphics/Paint;
    :goto_3
    monitor-exit v29

    .line 464
    return-void

    .line 451
    .restart local v12       #paintForDimming:Landroid/graphics/Paint;
    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x44a0

    const/high16 v11, 0x4448

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 463
    .end local v12           #paintForDimming:Landroid/graphics/Paint;
    .end local v19           #base:I
    .end local v20           #bottom:I
    .end local v23           #itemW:I
    .end local v24           #p:I
    .end local v26           #totalPointerSize:I
    .end local v28           #w:I
    :catchall_0
    move-exception v2

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 454
    .restart local v19       #base:I
    .restart local v20       #bottom:I
    .restart local v23       #itemW:I
    .restart local v24       #p:I
    .restart local v26       #totalPointerSize:I
    .restart local v28       #w:I
    :cond_7
    :try_start_1
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 455
    .local v18, paintForNomal:Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 456
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 458
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I

    if-nez v2, :cond_8

    .line 459
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x4448

    const/high16 v17, 0x44a0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 461
    :cond_8
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x44a0

    const/high16 v17, 0x4448

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1165
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1173
    invoke-static {p1}, Lcom/android/internal/widget/SPenGestureCroppingView;->shouldLogKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 1175
    .local v0, repeatCount:I
    if-nez v0, :cond_0

    .line 1180
    :cond_0
    const/4 v1, 0x1

    .line 1182
    .end local v0           #repeatCount:I
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1190
    invoke-static {p1}, Lcom/android/internal/widget/SPenGestureCroppingView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    const/4 v0, 0x1

    .line 1194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mHeaderBottom:I

    .line 395
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SPenGestureCroppingView;->addPointerEvent(Landroid/view/MotionEvent;)V

    .line 1155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureCroppingView;->requestFocus()Z

    .line 1158
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1220
    const/4 v0, 0x1

    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView;->mPrintCoords:Z

    .line 385
    return-void
.end method
