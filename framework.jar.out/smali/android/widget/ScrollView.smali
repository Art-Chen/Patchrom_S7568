.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"

# interfaces
.implements Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private HOVERSCROLL_SPEED_STEP_1:I

.field private HOVERSCROLL_SPEED_STEP_2:I

.field private HOVERSCROLL_SPEED_STEP_3:I

.field private HOVERSCROLL_SPEED_STEP_4:I

.field private mActivePointerId:I

.field mBounceController:Landroid/widget/BounceController;

.field private final mBounceEnabled:Z

.field mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHandler:Landroid/os/Handler;

.field private mHoverAreaEnter:Z

.field private mHoverAreaHeight:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Landroid/widget/ScrollView;->DEBUG_BOUNCE:Z

    .line 74
    sput-boolean v0, Landroid/widget/ScrollView;->DEBUG_SCROLL:Z

    .line 76
    sput-boolean v0, Landroid/widget/ScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 198
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 100
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 107
    iput-object v5, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 114
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 131
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 144
    iput v6, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 152
    iput-object v5, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 153
    iput-object v5, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 164
    const/16 v2, 0x1e

    iput v2, p0, Landroid/widget/ScrollView;->mHoverAreaHeight:I

    .line 170
    iput v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I

    .line 172
    iput v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I

    .line 174
    iput v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I

    .line 176
    iput v6, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 181
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 186
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 191
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 2042
    const/16 v2, 0xa

    iput v2, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_1:I

    .line 2044
    const/16 v2, 0xc

    iput v2, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_2:I

    .line 2046
    const/16 v2, 0xe

    iput v2, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_3:I

    .line 2048
    const/16 v2, 0x10

    iput v2, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_4:I

    .line 2050
    iput v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 2052
    new-instance v2, Landroid/widget/ScrollView$1;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    iput-object v2, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    .line 203
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 205
    sget-object v2, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 211
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 215
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/ScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/ScrollView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/ScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/ScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/ScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/ScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_2:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_3:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_4:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_1:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 349
    .local v1, childHeight:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 351
    .end local v1           #childHeight:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1993
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 2009
    :cond_0
    const/4 p1, 0x0

    .line 2019
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 2011
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 2017
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1407
    if-eqz p1, :cond_0

    .line 1408
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1409
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 1876
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1878
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1880
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1882
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1885
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1886
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1887
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1889
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1153
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1154
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1163
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1165
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1166
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1167
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1168
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1169
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1171
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1177
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1180
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1182
    move-object v1, v5

    .line 1183
    move v3, v8

    .line 1166
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1177
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1185
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1190
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1191
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1197
    move-object v1, v5

    goto :goto_2

    .line 1185
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1200
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1202
    move-object v1, v5

    .line 1203
    const/4 v3, 0x1

    goto :goto_2

    .line 1204
    :cond_7
    if-eqz v7, :cond_0

    .line 1209
    move-object v1, v5

    goto :goto_2

    .line 1216
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 1122
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 1123
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 1124
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 1126
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 1132
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1091
    const/4 v1, 0x0

    .line 1092
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1093
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1097
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 484
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 485
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 486
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 492
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 497
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 267
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 268
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 269
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 270
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 271
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 272
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 273
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 276
    new-instance v1, Landroid/widget/BounceController;

    invoke-direct {v1, p0}, Landroid/widget/BounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    .line 277
    iget-object v1, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1}, Landroid/widget/BounceController;->makeScroller()Landroid/widget/OverScroller;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 278
    iget-object v1, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    .line 280
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 507
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1842
    if-ne p1, p2, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return v1

    .line 1846
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1847
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1394
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1395
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1397
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1013
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1014
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1018
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1019
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 1020
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1021
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1022
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1025
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1018
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 514
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1299
    const/4 v3, 0x1

    .line 1301
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1302
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1303
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1304
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1306
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1307
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1308
    move-object v5, p0

    .line 1311
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1312
    const/4 v3, 0x0

    .line 1318
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1320
    :cond_1
    return v3

    .line 1304
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1314
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1315
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1314
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1629
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1632
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1634
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1636
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1637
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1639
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1650
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1651
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1652
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1653
    if-eqz p2, :cond_2

    .line 1654
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1659
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1651
    goto :goto_0

    .line 1656
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 313
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 322
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 340
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1332
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1333
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1335
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1337
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1339
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1340
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1341
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1342
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1343
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1344
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1366
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1373
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1374
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1375
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1376
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1378
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1347
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1349
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1350
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 1360
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1363
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1351
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1352
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1353
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1354
    .local v1, daBottom:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1355
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1356
    sub-int v6, v1, v5

    goto :goto_1

    .line 1363
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1548
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1565
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1566
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1567
    .local v4, oldY:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1568
    .local v12, x:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1570
    .local v13, y:I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1571
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1572
    .local v6, range:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v11

    .line 1573
    .local v11, overscrollMode:I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v6, :cond_4

    .line 1576
    .local v10, canOverscroll:Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1578
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1580
    if-eqz v10, :cond_2

    .line 1581
    if-gez v13, :cond_5

    if-ltz v4, :cond_5

    .line 1582
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1611
    .end local v6           #range:I
    .end local v10           #canOverscroll:Z
    .end local v11           #overscrollMode:I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1614
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidate()V

    .line 1621
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_3
    :goto_2
    return-void

    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v6       #range:I
    .restart local v11       #overscrollMode:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_4
    move v10, v5

    .line 1573
    goto :goto_0

    .line 1583
    .restart local v10       #canOverscroll:Z
    :cond_5
    if-le v13, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 1584
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1616
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v6           #range:I
    .end local v10           #canOverscroll:Z
    .end local v11           #overscrollMode:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_6
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 1617
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1618
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1671
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1725
    :cond_0
    :goto_0
    return v6

    .line 1673
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1674
    .local v3, height:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1675
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1677
    .local v4, screenBottom:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1680
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1681
    add-int/2addr v5, v2

    .line 1685
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1686
    sub-int/2addr v4, v2

    .line 1689
    :cond_3
    const/4 v6, 0x0

    .line 1691
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1696
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1698
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1705
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1706
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1707
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1709
    goto :goto_0

    .line 1701
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1709
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1714
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1716
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1723
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1719
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1485
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 1495
    .local v0, extent:I
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 1501
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1503
    .local v0, offset:I
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v1, :cond_0

    .line 1514
    :cond_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1466
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1467
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1468
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    .line 1481
    .end local v0           #contentHeight:I
    :goto_0
    return v0

    .line 1472
    .restart local v0       #contentHeight:I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1473
    .local v3, scrollRange:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1474
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1475
    .local v2, overscrollBottom:I
    if-gez v4, :cond_2

    .line 1476
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1481
    goto :goto_0

    .line 1477
    :cond_2
    if-le v4, v2, :cond_1

    .line 1478
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x2

    const-wide/16 v10, 0x3e8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 647
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering_list_scroll"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v2, v6

    .line 649
    .local v2, isHoveringOn:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.hovering_ui"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-eqz v8, :cond_0

    if-nez v2, :cond_3

    .line 651
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 743
    :cond_1
    :goto_1
    return v6

    .end local v2           #isHoveringOn:Z
    :cond_2
    move v2, v7

    .line 647
    goto :goto_0

    .line 654
    .restart local v2       #isHoveringOn:Z
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 655
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 656
    .local v5, y:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 657
    .local v0, childCount:I
    const/4 v1, 0x0

    .line 659
    .local v1, contentBottom:I
    if-eqz v0, :cond_4

    .line 660
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, v8, v9

    .line 663
    :cond_4
    iget v8, p0, Landroid/widget/ScrollView;->mHoverAreaHeight:I

    if-le v5, v8, :cond_6

    iget v8, p0, Landroid/widget/ScrollView;->mHoverAreaHeight:I

    sub-int v8, v1, v8

    if-ge v5, v8, :cond_6

    .line 665
    iget-object v8, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 666
    iget-object v8, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    :cond_5
    iput v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I

    .line 670
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 671
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 673
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1

    .line 676
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 703
    :pswitch_1
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v7, :cond_8

    .line 704
    iput-boolean v6, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 705
    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 706
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1

    .line 678
    :pswitch_2
    iput-boolean v6, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 680
    if-ltz v5, :cond_7

    iget v7, p0, Landroid/widget/ScrollView;->mHoverAreaHeight:I

    if-gt v5, v7, :cond_7

    .line 682
    iget-object v7, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v10

    long-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I

    .line 684
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 685
    .local v3, msg:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 686
    iput v12, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 687
    iget-object v7, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 689
    .end local v3           #msg:Landroid/os/Message;
    :cond_7
    iget v7, p0, Landroid/widget/ScrollView;->mHoverAreaHeight:I

    sub-int v7, v1, v7

    if-lt v5, v7, :cond_1

    if-gt v5, v1, :cond_1

    .line 691
    iget-object v7, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v10

    long-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I

    .line 693
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 694
    .restart local v3       #msg:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 695
    iput v6, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 696
    iget-object v7, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 709
    .end local v3           #msg:Landroid/os/Message;
    :cond_8
    if-ltz v5, :cond_9

    iget v7, p0, Landroid/widget/ScrollView;->mHoverAreaHeight:I

    if-gt v5, v7, :cond_9

    .line 711
    iget-object v7, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v10

    long-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I

    .line 713
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 714
    .restart local v3       #msg:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 715
    iput v12, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 716
    iget-object v7, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 718
    .end local v3           #msg:Landroid/os/Message;
    :cond_9
    iget v7, p0, Landroid/widget/ScrollView;->mHoverAreaHeight:I

    sub-int v7, v1, v7

    if-lt v5, v7, :cond_1

    if-gt v5, v1, :cond_1

    .line 720
    iget-object v7, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v10

    long-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I

    .line 722
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 723
    .restart local v3       #msg:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 724
    iput v6, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 725
    iget-object v7, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 731
    .end local v3           #msg:Landroid/os/Message;
    :pswitch_3
    iget-object v8, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 732
    iget-object v8, p0, Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 734
    :cond_a
    iput v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I

    .line 735
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 736
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    goto/16 :goto_1

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1932
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1948
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 1949
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 1950
    .local v2, scrollY:I
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1951
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1952
    .local v1, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 1959
    .local v3, width:I
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1961
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1962
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1963
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1965
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1967
    .end local v1           #restoreCount:I
    .end local v3           #width:I
    :cond_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1968
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1969
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 1970
    .restart local v3       #width:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 1979
    .local v0, height:I
    neg-int v4, v3

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1982
    const/high16 v4, 0x4334

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1983
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1984
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1985
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1987
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1990
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    .end local v2           #scrollY:I
    .end local v3           #width:I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 442
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 444
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 445
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 446
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 448
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 450
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 480
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 457
    :cond_2
    const/4 v1, 0x0

    .line 458
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 459
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 480
    goto :goto_0

    .line 461
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 462
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 464
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 466
    goto :goto_1

    .line 468
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 469
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 471
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 473
    goto :goto_1

    .line 475
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 459
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1858
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1859
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1860
    .local v12, height:I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1862
    .local v11, bottom:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1865
    if-lez p1, :cond_2

    const/4 v13, 0x1

    .line 1867
    .local v13, movingDown:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 1868
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1871
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1873
    .end local v11           #bottom:I
    .end local v12           #height:I
    .end local v13           #movingDown:Z
    :cond_1
    return-void

    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_2
    move v13, v3

    .line 1865
    goto :goto_0
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1268
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1269
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1271
    .local v2, height:I
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1272
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1274
    if-eqz v1, :cond_0

    .line 1275
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1276
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1277
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1278
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1279
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1283
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1268
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 243
    const/4 v3, 0x0

    .line 253
    :goto_0
    return v3

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 247
    .local v1, length:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 248
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 249
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 250
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 253
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 261
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 237
    :goto_0
    return v1

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 233
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 234
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 237
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1519
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1524
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1527
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1529
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1530
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1535
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1537
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1540
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1543
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1544
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1793
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1795
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1797
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1799
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1801
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1803
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1030
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1053
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1032
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1033
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1034
    .local v4, vscroll:F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 1035
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1036
    .local v0, delta:I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 1037
    .local v3, range:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 1038
    .local v2, oldScrollY:I
    sub-int v1, v2, v0

    .line 1039
    .local v1, newScrollY:I
    if-gez v1, :cond_2

    .line 1040
    const/4 v1, 0x0

    .line 1044
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1045
    iget v5, p0, Landroid/view/View;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1046
    const/4 v5, 0x1

    goto :goto_0

    .line 1041
    :cond_2
    if-le v1, v3, :cond_1

    .line 1042
    move v1, v3

    goto :goto_1

    .line 1030
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlowRecedeAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2026
    iget-object v0, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    invoke-interface {v0, v1}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 2028
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2029
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2032
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1081
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1082
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1083
    .local v0, scrollable:Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1084
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1085
    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1086
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1087
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1088
    return-void

    .line 1082
    .end local v0           #scrollable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1075
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1076
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1077
    return-void

    .line 1076
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 539
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 543
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 629
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 554
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 555
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_2

    .line 560
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 564
    .local v9, pointerIndex:I
    if-ltz v9, :cond_0

    .line 567
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 568
    .local v10, y:F
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v11, v1

    .line 569
    .local v11, yDiff:I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v11, v1, :cond_2

    .line 570
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 571
    iput v10, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 572
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 573
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 574
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 575
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 582
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #y:F
    .end local v11           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 583
    .restart local v10       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    float-to-int v2, v10

    invoke-direct {p0, v1, v2}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 584
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 585
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 593
    :cond_3
    iput v10, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 594
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 596
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 597
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 603
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 604
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 605
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 613
    .end local v10           #y:F
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 614
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 615
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 616
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    goto/16 :goto_1

    .line 621
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1807
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1808
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1810
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1813
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1816
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1817
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 398
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 400
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 405
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 409
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 410
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 412
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 415
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 417
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 418
    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 419
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 422
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 1060
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1061
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 1062
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 1063
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1064
    if-eqz p4, :cond_0

    .line 1065
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1070
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1071
    return-void

    .line 1068
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1753
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1754
    const/16 p1, 0x82

    .line 1759
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1764
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1772
    :cond_1
    :goto_2
    return v1

    .line 1755
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1756
    const/16 p1, 0x21

    goto :goto_0

    .line 1759
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1768
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1772
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1821
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1823
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1824
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1830
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1831
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1832
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1833
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1834
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 748
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 753
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v3, v3, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 758
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 760
    const/4 v3, 0x1

    .line 1007
    :goto_0
    return v3

    .line 763
    :cond_1
    move/from16 v0, v17

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1007
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 765
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 766
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 767
    const/4 v3, 0x0

    goto :goto_0

    .line 765
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 774
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_5

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 778
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 783
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 784
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto :goto_1

    .line 802
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 804
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 904
    .local v18, activePointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 905
    .local v27, y:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mLastMotionY:F

    sub-float v3, v3, v27

    float-to-int v5, v3

    .line 906
    .local v5, deltaY:I
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    .line 909
    .local v22, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v23, v0

    .line 910
    .local v23, oldY:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v9

    .line 911
    .local v9, range:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v24

    .line 912
    .local v24, overscrollMode:I
    if-eqz v24, :cond_6

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_a

    if-lez v9, :cond_a

    :cond_6
    const/16 v19, 0x1

    .line 915
    .local v19, canOverscroll:Z
    :goto_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 920
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 922
    if-eqz v19, :cond_2

    .line 923
    add-int v25, v23, v5

    .line 924
    .local v25, pulledToY:I
    if-gez v25, :cond_b

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 935
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 937
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto/16 :goto_1

    .line 912
    .end local v19           #canOverscroll:Z
    .end local v25           #pulledToY:I
    :cond_a
    const/16 v19, 0x0

    goto :goto_3

    .line 929
    .restart local v19       #canOverscroll:Z
    .restart local v25       #pulledToY:I
    :cond_b
    move/from16 v0, v25

    if-le v0, v9, :cond_8

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    .line 944
    .end local v5           #deltaY:I
    .end local v9           #range:I
    .end local v18           #activePointerIndex:I
    .end local v19           #canOverscroll:Z
    .end local v22           #oldX:I
    .end local v23           #oldY:I
    .end local v24           #overscrollMode:I
    .end local v25           #pulledToY:I
    .end local v27           #y:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    .line 948
    .local v26, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v21, 0x0

    .line 949
    .local v21, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getVelocityPolynomialType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 951
    sget-boolean v3, Landroid/widget/ScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    if-eqz v3, :cond_c

    .line 952
    const-string v3, "ScrollView"

    const-string v4, "SEC Velocity! Monomial Type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_c
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 956
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getMonomialYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    .line 971
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_d

    .line 972
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_f

    .line 973
    move/from16 v0, v21

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->fling(I)V

    .line 982
    :cond_d
    :goto_6
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 983
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_1

    .line 959
    :cond_e
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 960
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    goto :goto_5

    .line 975
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 977
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_6

    .line 987
    .end local v21           #initialVelocity:I
    .end local v26           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 988
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 989
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 991
    :cond_10
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 992
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_1

    .line 996
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 997
    .local v20, index:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 998
    .restart local v27       #y:F
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 999
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 1003
    .end local v20           #index:I
    .end local v27           #y:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1004
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:F

    goto/16 :goto_1

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1232
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1233
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1235
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 1236
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1237
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1238
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1239
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1240
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1241
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1250
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1252
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1232
    goto :goto_0

    .line 1245
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1246
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1247
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1730
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1731
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1736
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1737
    return-void

    .line 1734
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1779
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1782
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 519
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 521
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 522
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1787
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1788
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1789
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1899
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1900
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1901
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 1902
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 1903
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1904
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1907
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0, p1}, Landroid/widget/BounceController;->setEnableBounce(Z)V

    .line 302
    iget-object v0, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceController;->setEdgeEffects(Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;)V

    .line 304
    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 375
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 376
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 377
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 379
    :cond_0
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 636
    if-eqz p1, :cond_0

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1911
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1912
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1913
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1914
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1915
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0}, Landroid/widget/EdgeEffect;->setGlowRecedeAnimationTrigger(Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1916
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1917
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0}, Landroid/widget/EdgeEffect;->setGlowRecedeAnimationTrigger(Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1920
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setEnableBounce(Z)V

    .line 1927
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1928
    return-void

    .line 1922
    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1923
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1925
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 393
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 394
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1423
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1427
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1428
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 1429
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1430
    .local v3, height:I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1431
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1432
    .local v4, maxY:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 1433
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1435
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1436
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1447
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 1438
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1439
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1440
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1441
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1442
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1445
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1457
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1458
    return-void
.end method
