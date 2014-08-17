.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$AdjustScrollerCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0x3c

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter; = null

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCheckBeginEditOnUpEvent:Z

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLastUpEventTimeMillis:J

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 170
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 187
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    return-void

    .line 170
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 529
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 538
    const v0, 0x10103bd

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 539
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 549
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 290
    const-wide/16 v17, 0x12c

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 295
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 300
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 318
    const/high16 v17, -0x8000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 439
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 444
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mScrollState:I

    .line 552
    sget-object v17, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 554
    .local v5, attributesArray:Landroid/content/res/TypedArray;
    const/16 v17, 0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 555
    const/16 v17, 0x5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mFlingable:Z

    .line 556
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 557
    const/16 v17, 0x1

    const/high16 v18, 0x4000

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 560
    .local v9, defSelectionDividerHeight:I
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 562
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 564
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 568
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "minHeight > maxHeight"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 570
    :cond_0
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 572
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 574
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 576
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "minWidth > maxWidth"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 578
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 579
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 581
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e0002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 589
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 590
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 594
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v17, 0x10900a4

    const/16 v18, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 596
    new-instance v11, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 624
    .local v11, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v13, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 636
    .local v13, onLongClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v12, Landroid/widget/NumberPicker$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    .line 663
    .local v12, onKeyListener:Landroid/view/View$OnKeyListener;
    const v17, 0x10203e4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 669
    const v17, 0x10203e6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 675
    const v17, 0x10203e5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/NumberPicker$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v20 .. v21}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_2

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const-string v18, "inputType=NumberPicker_edittext"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 712
    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 713
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 714
    .local v8, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 715
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 716
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v17

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTextSize()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextSize:I

    .line 721
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 722
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 723
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 724
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 727
    .local v7, colors:Landroid/content/res/ColorStateList;
    sget-object v17, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 728
    .local v6, color:I
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 729
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 732
    const-string/jumbo v17, "selectorPaintAlpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 736
    .local v16, showIncrementButton:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_3

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 738
    .local v15, showDecrementButton:Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    const/16 v19, 0x2

    aput-object v15, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/NumberPicker$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$6;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 762
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v17 .. v20}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 763
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v20, 0x4020

    invoke-direct/range {v19 .. v20}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v17 .. v19}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 765
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 766
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 768
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mFlingable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 770
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 779
    :cond_3
    :goto_1
    return-void

    .line 578
    .end local v6           #color:I
    .end local v7           #colors:Landroid/content/res/ColorStateList;
    .end local v8           #configuration:Landroid/view/ViewConfiguration;
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v12           #onKeyListener:Landroid/view/View$OnKeyListener;
    .end local v13           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v15           #showDecrementButton:Landroid/animation/ObjectAnimator;
    .end local v16           #showIncrementButton:Landroid/animation/ObjectAnimator;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 775
    .restart local v6       #color:I
    .restart local v7       #colors:Landroid/content/res/ColorStateList;
    .restart local v8       #configuration:Landroid/view/ViewConfiguration;
    .restart local v10       #inflater:Landroid/view/LayoutInflater;
    .restart local v11       #onClickListener:Landroid/view/View$OnClickListener;
    .restart local v12       #onKeyListener:Landroid/view/View$OnKeyListener;
    .restart local v13       #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .restart local v14       #paint:Landroid/graphics/Paint;
    .restart local v15       #showDecrementButton:Landroid/animation/ObjectAnimator;
    .restart local v16       #showIncrementButton:Landroid/animation/ObjectAnimator;
    :cond_5
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 776
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_1

    .line 300
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 732
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    .line 734
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 736
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/NumberPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900()[C
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method private changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 1528
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1538
    :goto_0
    return-void

    .line 1532
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1533
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1535
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1536
    .local v0, previous:I
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1537
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1547
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    .line 1548
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1549
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1550
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1551
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1552
    invoke-direct {p0}, Landroid/widget/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1553
    if-eqz p1, :cond_0

    .line 1554
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1560
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1568
    :goto_1
    return-void

    .line 1557
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1562
    :cond_1
    if-eqz p1, :cond_2

    .line 1563
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1565
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1782
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1783
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1782
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1785
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1786
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1787
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1789
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1790
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1791
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1799
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1800
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1801
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1815
    :goto_0
    return-void

    .line 1804
    :cond_0
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1805
    :cond_1
    const-string v2, ""

    .line 1814
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1807
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1808
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1809
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1810
    goto :goto_1

    .line 1811
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private fadeSelectorWheel(J)V
    .locals 2
    .parameter "animationDuration"

    .prologue
    .line 1726
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1727
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1729
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1731
    :cond_0
    return-void
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1682
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1684
    if-lez p1, :cond_0

    .line 1685
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1690
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1691
    return-void

    .line 1687
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1577
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1578
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1579
    .local v1, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1580
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1581
    .local v2, yDelta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1583
    .end local v1           #yBeforeAbort:I
    .end local v2           #yDelta:I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1818
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1903
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1905
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1929
    :goto_0
    return v1

    .line 1910
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1912
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1913
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1914
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1910
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1923
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1906
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 1929
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 1924
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1753
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1754
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1758
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1755
    .restart local p1
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1756
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1697
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1700
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1701
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1702
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1703
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1766
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1767
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1769
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1770
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1771
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1773
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1774
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1775
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1644
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1645
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1627
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1628
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1629
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1630
    .local v4, totalTextHeight:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1631
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    int-to-float v2, v5

    .line 1632
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1633
    iget v5, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1635
    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1636
    .local v0, editTextTextPosition:I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1638
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1639
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1640
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1506
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1507
    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1508
    .local v2, selectorIdices:[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1509
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1510
    add-int/lit8 v4, v1, -0x2

    add-int v3, v0, v4

    .line 1511
    .local v3, selectorIndex:I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1512
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1514
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1515
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1517
    .end local v3           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1600
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1601
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1602
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1464
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1475
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1467
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1468
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1469
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1477
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1473
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1475
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1469
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1864
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 1867
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1669
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1672
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1673
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1651
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1652
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1653
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    .line 1654
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1663
    :goto_0
    return-void

    .line 1656
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1657
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->fadeSelectorWheel(J)V

    goto :goto_0

    .line 1660
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1661
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->showInputControls(J)V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 1954
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 1955
    new-instance v0, Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AdjustScrollerCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    .line 1959
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1960
    return-void

    .line 1957
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 1875
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1876
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1877
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1878
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1880
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1881
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1882
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 1938
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1939
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 1943
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$702(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1944
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$802(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1945
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1946
    return-void

    .line 1941
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1891
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 1892
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1894
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 1895
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1897
    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1493
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1494
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1495
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1497
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1593
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1594
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 1611
    iput p1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    .line 1612
    if-ne p1, v3, :cond_0

    .line 1613
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1616
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1618
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1619
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10405a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1621
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    .line 1622
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1624
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 2
    .parameter "animationDuration"

    .prologue
    .line 1712
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1713
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1714
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1716
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1718
    :cond_0
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1147
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    const/4 v4, 0x0

    .line 1151
    .local v4, maxTextWidth:I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1152
    const/4 v3, 0x0

    .line 1153
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1154
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1155
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1156
    move v3, v1

    .line 1153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1159
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 1160
    .local v5, numberOfDigits:I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1161
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 1162
    add-int/lit8 v5, v5, 0x1

    .line 1163
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1165
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1175
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1176
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1177
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1178
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1182
    :goto_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1167
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1168
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1169
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1170
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1171
    float-to-int v4, v6

    .line 1168
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1180
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1737
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_2

    .line 1738
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1742
    :goto_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-le v0, v1, :cond_3

    .line 1743
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1747
    :goto_1
    return-void

    .line 1740
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1745
    :cond_3
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateInputTextView()V
    .locals 6

    .prologue
    .line 1845
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1846
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1850
    :goto_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1852
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10405a8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1857
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 1848
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1822
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1825
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1831
    :goto_0
    return-void

    .line 1828
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1829
    .local v0, current:I
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 987
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 991
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 992
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 993
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 997
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 998
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 999
    .local v0, currentScrollerY:I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 1000
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1002
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1003
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1004
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1005
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1007
    :cond_4
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1370
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 969
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 970
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 971
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 973
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 952
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 964
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 954
    :pswitch_0
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 955
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 956
    invoke-direct {p0}, Landroid/widget/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 961
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 952
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 979
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 980
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 982
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1382
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1386
    iget-object v5, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1388
    :cond_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawingTime()J

    move-result-wide v2

    .line 1389
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1390
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1391
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1389
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1394
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/widget/NumberPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1397
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1348
    const v0, 0x3f666666

    return v0
.end method

.method public getDecrementButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getIncrementButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getMText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1252
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1343
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1195
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1353
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1356
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->showInputControls(J)V

    .line 1360
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1364
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1365
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 1401
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v13, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1405
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    int-to-float v11, v13

    .line 1406
    .local v11, x:F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v12, v13

    .line 1408
    .local v12, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1410
    .local v5, restoreCount:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1411
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1412
    .local v3, clipBounds:Landroid/graphics/Rect;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 1413
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1417
    .end local v3           #clipBounds:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1418
    .local v8, selectorIndices:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v13, v8

    if-ge v4, v13, :cond_4

    .line 1419
    aget v7, v8, v4

    .line 1420
    .local v7, selectorIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1425
    .local v6, scrollSelectorValue:Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v4, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_3

    .line 1426
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1428
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 1418
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1432
    .end local v6           #scrollSelectorValue:Ljava/lang/String;
    .end local v7           #selectorIndex:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_5

    .line 1434
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v13, v14

    div-int/lit8 v10, v13, 0x2

    .line 1436
    .local v10, topOfTopDivider:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v10, v13

    .line 1437
    .local v2, bottomOfTopDivider:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mRight:I

    invoke-virtual {v13, v14, v10, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1441
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int v9, v10, v13

    .line 1442
    .local v9, topOfBottomDivider:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int v1, v2, v13

    .line 1443
    .local v1, bottomOfBottomDivider:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mRight:I

    invoke-virtual {v13, v14, v9, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1447
    .end local v1           #bottomOfBottomDivider:I
    .end local v2           #bottomOfTopDivider:I
    .end local v9           #topOfBottomDivider:I
    .end local v10           #topOfTopDivider:I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 835
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 880
    :goto_0
    return v3

    .line 838
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 880
    goto :goto_0

    .line 840
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v5, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    .line 841
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 842
    iget-object v5, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 843
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 844
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 845
    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 846
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 847
    iget-object v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 848
    iget-object v5, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 850
    .local v2, scrollersFinished:Z
    :goto_1
    if-nez v2, :cond_3

    .line 851
    iget-object v5, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 852
    iget-object v5, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 853
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 855
    :cond_3
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 856
    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 857
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_0

    .end local v2           #scrollersFinished:Z
    :cond_4
    move v2, v4

    .line 848
    goto :goto_1

    .line 860
    :cond_5
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Landroid/widget/NumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Landroid/widget/NumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v3, v4

    .line 862
    goto :goto_0

    .line 864
    :cond_7
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 865
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 866
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_0

    .line 869
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 870
    .local v0, currentMoveY:F
    iget v5, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 871
    .local v1, deltaDownY:I
    iget v5, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 872
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 873
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 874
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 875
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto/16 :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v20

    .line 784
    .local v20, msrdWdth:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v19

    .line 787
    .local v19, msrdHght:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 788
    .local v12, inctBtnMsrdWdth:I
    sub-int v21, v20, v12

    div-int/lit8 v9, v21, 0x2

    .line 789
    .local v9, incrBtnLeft:I
    const/4 v11, 0x0

    .line 790
    .local v11, incrBtnTop:I
    add-int v10, v9, v12

    .line 791
    .local v10, incrBtnRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    add-int/lit8 v8, v21, 0x0

    .line 792
    .local v8, incrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1, v10, v8}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v16

    .line 796
    .local v16, inptTxtMsrdWdth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v15

    .line 797
    .local v15, inptTxtMsrdHght:I
    sub-int v21, v20, v16

    div-int/lit8 v14, v21, 0x2

    .line 798
    .local v14, inptTxtLeft:I
    sub-int v21, v19, v15

    div-int/lit8 v18, v21, 0x2

    .line 799
    .local v18, inptTxtTop:I
    add-int v17, v14, v16

    .line 800
    .local v17, inptTxtRight:I
    add-int v13, v18, v15

    .line 801
    .local v13, inptTxtBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2, v13}, Landroid/widget/EditText;->layout(IIII)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    .line 805
    .local v5, decrBtnMsrdWdth:I
    sub-int v21, v20, v5

    div-int/lit8 v4, v21, 0x2

    .line 806
    .local v4, decrBtnLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    sub-int v7, v19, v21

    .line 807
    .local v7, decrBtnTop:I
    add-int v6, v4, v5

    .line 808
    .local v6, decrBtnRight:I
    move/from16 v3, v19

    .line 809
    .local v3, decrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7, v6, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 811
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 812
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 814
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 815
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 817
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 822
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 823
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 824
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 826
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 828
    .local v3, widthSize:I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 830
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 831
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 885
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 886
    const/4 v9, 0x0

    .line 946
    :goto_0
    return v9

    .line 888
    :cond_0
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_1

    .line 889
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 891
    :cond_1
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 893
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 946
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 895
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 896
    .local v1, currentMoveY:F
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-nez v9, :cond_2

    iget v9, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    .line 898
    :cond_2
    iget v9, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 899
    .local v2, deltaDownY:I
    iget v9, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v9, :cond_3

    .line 900
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 901
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 904
    .end local v2           #deltaDownY:I
    :cond_3
    iget v9, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    sub-float v9, v1, v9

    float-to-int v3, v9

    .line 905
    .local v3, deltaMoveY:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 906
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 907
    iput v1, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 911
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_1
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-eqz v9, :cond_5

    .line 912
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    sub-long v4, v9, v11

    .line 914
    .local v4, deltaTapTimeMillis:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-gez v9, :cond_5

    .line 915
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 916
    iget-wide v9, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v9, v10}, Landroid/widget/NumberPicker;->showInputControls(J)V

    .line 917
    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 918
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 919
    .local v7, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_4

    .line 920
    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 922
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    .line 923
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 926
    .end local v4           #deltaTapTimeMillis:J
    .end local v7           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 927
    .local v8, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 928
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v6, v9

    .line 929
    .local v6, initialVelocity:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_7

    .line 930
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->fling(I)V

    .line 931
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 941
    :cond_6
    :goto_2
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 942
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    goto/16 :goto_1

    .line 933
    :cond_7
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v9, :cond_8

    .line 934
    iget-object v9, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 935
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 938
    :cond_8
    sget v9, Landroid/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 893
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x2

    .line 1021
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1025
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1027
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1030
    :cond_2
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1032
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1035
    :cond_3
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1036
    :cond_4
    :goto_1
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 1037
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1038
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1039
    aget v1, v0, v3

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 1040
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1041
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1044
    :cond_5
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1045
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1046
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1047
    aget v1, v0, v3

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 1048
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 1049
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1454
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1325
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1328
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1329
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1331
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1336
    :goto_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1337
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1338
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1334
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1013
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1014
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1015
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1016
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1017
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1093
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1094
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1095
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1293
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1296
    :cond_0
    if-gez p1, :cond_1

    .line 1297
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1299
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1300
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1301
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1303
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1304
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1305
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1306
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1307
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1303
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1261
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1276
    :goto_0
    return-void

    .line 1264
    :cond_0
    if-gez p1, :cond_1

    .line 1265
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1267
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1268
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1269
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1271
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1272
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1273
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1274
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1275
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1271
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter "intervalMillis"

    .prologue
    .line 1234
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1235
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 1074
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1075
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 1065
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1066
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1127
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1141
    :goto_0
    return-void

    .line 1130
    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1131
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1133
    :cond_1
    :goto_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 1134
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1136
    :cond_2
    :goto_2
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1137
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1138
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1139
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1140
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1131
    :cond_3
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_1

    .line 1134
    :cond_4
    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1211
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 1215
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1217
    :cond_1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 1218
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1219
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1221
    :cond_2
    return-void
.end method

.method public twSetMaxInputLength(I)V
    .locals 6
    .parameter "limit"

    .prologue
    const/4 v5, 0x0

    .line 2120
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 2121
    .local v1, filterArr:[Landroid/text/InputFilter;
    aget-object v0, v1, v5

    .line 2122
    .local v0, backupFilter:Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 2123
    .local v2, lengthFilter:Landroid/text/InputFilter;
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2124
    return-void
.end method

.method public twSetMonthInputMode()V
    .locals 2

    .prologue
    .line 2151
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2152
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2153
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2154
    return-void
.end method

.method public twSetYearDateTimeInputMode()V
    .locals 2

    .prologue
    .line 2157
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2158
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2160
    return-void
.end method
