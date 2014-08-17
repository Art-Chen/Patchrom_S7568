.class public Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "TickerHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerHorizontalScrollView$3;,
        Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;,
        Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;,
        Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;
    }
.end annotation


# instance fields
.field private final MSG_SCROLL_ANIMATION:I

.field private final SCROLL_DELAY_AFTER_CANCEL:I

.field private final SCROLL_DELAY_ON_REPEATING:I

.field private TAG:Ljava/lang/String;

.field private final VELOCITY_JUDGEMENT_VALUE:I

.field private final VELOCITY_UNITS:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalView:Landroid/widget/LinearLayout;

.field private mHorizontalViewItemCnt:I

.field private mPage:I

.field private mScrollAnimation:Landroid/animation/ValueAnimator;

.field private mScrollSpeedValue:I

.field private mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityUnits:I

.field private scroll:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x7d0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "Ticker"

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    iput v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->scroll:I

    const/16 v1, 0x12c1

    iput v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->MSG_SCROLL_ANIMATION:I

    iput v2, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->VELOCITY_UNITS:I

    iput v2, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->VELOCITY_JUDGEMENT_VALUE:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I

    iput v2, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->SCROLL_DELAY_ON_REPEATING:I

    iput v2, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->SCROLL_DELAY_AFTER_CANCEL:I

    new-instance v1, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$1;-><init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, density:F
    const/high16 v1, 0x44fa

    div-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityUnits:I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setOverScrollMode(I)V

    const-string v1, "scroll"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;-><init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->handleScrollAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getScrollXAmount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private createMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4160

    const/high16 v3, 0x3f80

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v0, mHelpText:Landroid/widget/TextView;
    const/high16 v2, -0x100

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const v2, -0x141415

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x4198

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .local v1, scale:F
    mul-float v2, v4, v1

    float-to-int v2, v2

    mul-float v3, v4, v1

    float-to-int v3, v3

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getScroll()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->scroll:I

    return v0
.end method

.method private getScrollXAmount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, maxScroll:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private handleScrollAnimation()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v5, "onAnimationStart"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getScrollXAmount()I

    move-result v2

    .local v2, scrollXAmount:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getScrollX()I

    move-result v1

    .local v1, currentScrollX:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getWidth()I

    move-result v4

    sub-int v3, v2, v4

    .local v3, targetScrollX:I
    const/16 v4, 0x7d0

    iget v5, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int v4, v3, v1

    iget v5, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I

    mul-int v0, v4, v5

    .local v0, animationDuration:I
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private moveToNextPage(I)V
    .locals 3
    .parameter "currentPage"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getScrollXAmount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->moveToPage(I)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->moveToPage(I)V

    goto :goto_0
.end method

.method private moveToPage(I)V
    .locals 3
    .parameter "page"

    .prologue
    const/4 v0, 0x0

    .local v0, currentComputedScroolX:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private moveToPreviousPage(I)V
    .locals 1
    .parameter "currentPage"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalViewItemCnt:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->moveToPage(I)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->moveToPage(I)V

    goto :goto_0
.end method

.method private setScroll(I)V
    .locals 2
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->scroll:I

    iget v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->scroll:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public getCurrentPage()I
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getScrollX()I

    move-result v1

    .local v1, currentScrollX:I
    const/4 v0, 0x0

    .local v0, currentComputedScroolX:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    if-le v0, v1, :cond_0

    iput v2, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mPage:I

    iget v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mPage:I

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$FacebookData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$FacebookData;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalViewItemCnt:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;

    iget-object v5, v1, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    .local v5, createdtime:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;

    iget-object v3, v1, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    .local v3, contents:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;

    iget-object v4, v1, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    .local v4, fromname:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;-><init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, mFacebookDate:Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0           #mFacebookDate:Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;
    .end local v3           #contents:Ljava/lang/String;
    .end local v4           #fromname:Ljava/lang/String;
    .end local v5           #createdtime:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$NewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalViewItemCnt:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    iget-object v3, v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsTitle:Ljava/lang/String;

    .local v3, contents:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    iget-object v4, v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsCredit:Ljava/lang/String;

    .local v4, credit:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    iget-object v5, v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsPublishTime:Ljava/lang/String;

    .local v5, publishTime:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;-><init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, mNewsDate:Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0           #mNewsDate:Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;
    .end local v3           #contents:Ljava/lang/String;
    .end local v4           #credit:Ljava/lang/String;
    .end local v5           #publishTime:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$StockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalViewItemCnt:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    iget-object v3, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    .local v3, name:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    iget-object v4, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->price:Ljava/lang/String;

    .local v4, originalPrice:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    iget-object v5, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->change:Ljava/lang/String;

    .local v5, changePrice:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;-><init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, mNewsDate:Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0           #mNewsDate:Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #originalPrice:Ljava/lang/String;
    .end local v5           #changePrice:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->stopAutoScroll()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, -0x3b06

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->stopAutoScroll()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    iget v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityUnits:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .local v2, yVelocity:F
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .local v1, xVelocity:F
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xVelocity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yVelocity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    cmpg-float v3, v1, v6

    if-gez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getCurrentPage()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->moveToNextPage(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    goto :goto_0

    :cond_2
    const/high16 v3, 0x44fa

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getCurrentPage()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->moveToPreviousPage(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    cmpg-float v3, v2, v6

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/TickerCallback;->openTickerSlidingDrawer()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setSlidingSpeed(Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;)V
    .locals 2
    .parameter "mTickerSlidingSpeed"

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$3;->$SwitchMap$com$android$internal$policy$impl$TickerUtil$TickerSlidingSpeed:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    return-void
.end method

.method public startAutoScroll()V
    .locals 4

    .prologue
    const/16 v3, 0x12c1

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v2, "startAutoScroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v1, "stopAutoScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v1, "animation cancel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
