.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$1;,
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupwindow"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2


# instance fields
.field private final ID_TOOLTIP_VIEW:I

.field protected final MARGIN_FOR_HOVER_RING:I

.field protected mAnimationStyle:I

.field protected mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field protected mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field protected mEnabled:Z

.field protected mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field protected mGuideRingDrawableId:I

.field private mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

.field protected mHoverDetectTimeMS:I

.field protected mHoveringPointX:I

.field protected mHoveringPointY:I

.field protected mIsGuideLineEnabled:Z

.field protected mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field protected final mParentView:Landroid/view/View;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field protected mPopupOffsetX:I

.field protected mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field protected mWindowGapX:I

.field protected mWindowGapY:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "parentView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .parameter "parentView"
    .parameter "type"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 72
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 146
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 148
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 150
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    .line 151
    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 152
    return-void
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method private dismissPopup()V
    .locals 2

    .prologue
    .line 970
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 971
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 972
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 975
    :cond_0
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    if-nez v0, :cond_0

    .line 989
    new-instance v0, Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupHandler;-><init>(Landroid/widget/HoverPopupWindow;Landroid/widget/HoverPopupWindow$1;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    .line 990
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    return-object v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 391
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToolTipContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    .line 515
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 517
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 530
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 523
    :cond_1
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 524
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109004c

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 525
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 526
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 528
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPopupContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 468
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    .line 492
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 497
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    .line 498
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    .line 501
    :cond_1
    return-void

    .line 470
    :pswitch_0
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 473
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 476
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 479
    :pswitch_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 480
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 483
    .local v1, inflater:Landroid/view/LayoutInflater;
    :try_start_0
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 484
    .local v2, v:Landroid/view/View;
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    .end local v2           #v:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 486
    .local v0, ie:Landroid/view/InflateException;
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 435
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    .line 436
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    .line 437
    return-void
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 33
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offX"
    .parameter "offY"

    .prologue
    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 841
    :goto_0
    return-void

    .line 546
    :cond_0
    move/from16 v28, p3

    .line 547
    .local v28, posX:I
    move/from16 v29, p4

    .line 548
    .local v29, posY:I
    if-eqz p1, :cond_6

    move-object/from16 v11, p1

    .line 549
    .local v11, anchorView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    .line 552
    .local v23, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v10, 0x0

    .line 553
    .local v10, anchorRect:Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 554
    .local v9, anchorLocOnScr:[I
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 555
    .local v8, anchorLocInWindow:[I
    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 556
    invoke-virtual {v11, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 559
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 560
    .local v22, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 563
    const-string v2, "HoverPopupwindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anchor location on screen x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v9, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v2, "HoverPopupwindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anchor location in window x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v11}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_7

    .line 569
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 570
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 572
    new-instance v10, Landroid/graphics/Rect;

    .end local v10           #anchorRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    const/4 v4, 0x0

    aget v4, v9, v4

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    const/4 v7, 0x1

    aget v7, v9, v7

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v32

    add-int v7, v7, v32

    invoke-direct {v10, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 578
    .restart local v10       #anchorRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 579
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 580
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 581
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 592
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 593
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 594
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 595
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_8

    .line 604
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 606
    .local v31, widthMeasureSpec:I
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 629
    .local v25, heightMeasureSpec:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 631
    .local v21, contentWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    .line 633
    .local v19, contentHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 641
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xf0f

    move/from16 v24, v0

    .line 642
    .local v24, hGravity:I
    const v2, 0xf0f0

    and-int v30, p2, v2

    .line 644
    .local v30, vGravity:I
    if-nez p2, :cond_b

    .line 646
    move/from16 v28, p3

    .line 647
    move/from16 v29, p4

    .line 727
    :goto_4
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, v2, v21

    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 728
    const/4 v2, 0x0

    move/from16 v0, v28

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 730
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v29

    if-ge v0, v2, :cond_d

    .line 732
    const/16 v2, 0x3030

    move/from16 v0, v30

    if-ne v0, v2, :cond_c

    .line 733
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    .line 734
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int v29, v29, v2

    .line 752
    :cond_1
    :goto_5
    const/4 v12, 0x0

    .line 753
    .local v12, canDraw:Z
    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v19

    move/from16 v0, v29

    if-le v0, v2, :cond_2

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v29

    if-lt v0, v2, :cond_3

    .line 754
    :cond_2
    const/4 v12, 0x1

    .line 757
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v2, :cond_14

    if-eqz v12, :cond_14

    .line 759
    const/16 v26, 0x1

    .line 761
    .local v26, isPopupAboveHorizontal:Z
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(ILandroid/util/DisplayMetrics;)I

    move-result v27

    .line 765
    .local v27, marginForHoverRing:I
    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int v2, v2, v27

    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 767
    .local v13, containerLeftOnWindow:I
    add-int v2, v28, v21

    iget v3, v10, Landroid/graphics/Rect;->right:I

    add-int v3, v3, v27

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 772
    .local v18, containerRightOnWindow:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    move/from16 v0, v29

    if-le v0, v2, :cond_f

    .line 773
    const/16 v26, 0x0

    .line 779
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v2, :cond_4

    .line 780
    new-instance v2, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 786
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 787
    .local v20, contentLP:Landroid/view/ViewGroup$LayoutParams;
    if-nez v20, :cond_10

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    .line 797
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 801
    sub-int v2, v13, v28

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 802
    .local v15, containerPaddingLeft:I
    add-int v2, v28, v21

    sub-int v2, v18, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 803
    .local v16, containerPaddingRight:I
    const/16 v17, 0x0

    .line 804
    .local v17, containerPaddingTop:I
    const/4 v14, 0x0

    .line 805
    .local v14, containerPaddingBottom:I
    if-eqz v26, :cond_11

    .line 806
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v27

    add-int v3, v29, v19

    sub-int v14, v2, v3

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v3, v0, v14}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    .line 814
    :goto_8
    if-eqz v26, :cond_12

    .line 815
    move/from16 v28, v13

    .line 824
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v2, v2, v28

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v5, v2, v3

    .line 825
    .local v5, hoverPointXonContainer:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v2, v2, v29

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v6, v2, v3

    .line 826
    .local v6, hoverPointYonContainer:I
    if-eqz v26, :cond_13

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v3, v21, 0x2

    add-int/2addr v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v4, v19, v4

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZ)V

    .line 839
    .end local v5           #hoverPointXonContainer:I
    .end local v6           #hoverPointYonContainer:I
    .end local v13           #containerLeftOnWindow:I
    .end local v14           #containerPaddingBottom:I
    .end local v15           #containerPaddingLeft:I
    .end local v16           #containerPaddingRight:I
    .end local v17           #containerPaddingTop:I
    .end local v18           #containerRightOnWindow:I
    .end local v20           #contentLP:Landroid/view/ViewGroup$LayoutParams;
    .end local v26           #isPopupAboveHorizontal:Z
    .end local v27           #marginForHoverRing:I
    :goto_a
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 840
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    goto/16 :goto_0

    .line 548
    .end local v8           #anchorLocInWindow:[I
    .end local v9           #anchorLocOnScr:[I
    .end local v10           #anchorRect:Landroid/graphics/Rect;
    .end local v11           #anchorView:Landroid/view/View;
    .end local v12           #canDraw:Z
    .end local v19           #contentHeight:I
    .end local v21           #contentWidth:I
    .end local v22           #displayFrame:Landroid/graphics/Rect;
    .end local v23           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v24           #hGravity:I
    .end local v25           #heightMeasureSpec:I
    .end local v30           #vGravity:I
    .end local v31           #widthMeasureSpec:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 584
    .restart local v8       #anchorLocInWindow:[I
    .restart local v9       #anchorLocOnScr:[I
    .restart local v10       #anchorRect:Landroid/graphics/Rect;
    .restart local v11       #anchorView:Landroid/view/View;
    .restart local v22       #displayFrame:Landroid/graphics/Rect;
    .restart local v23       #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_7
    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x0

    aget v3, v8, v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 585
    const/4 v2, 0x1

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 587
    new-instance v10, Landroid/graphics/Rect;

    .end local v10           #anchorRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    aget v4, v8, v4

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    const/4 v7, 0x1

    aget v7, v8, v7

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v32

    add-int v7, v7, v32

    invoke-direct {v10, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v10       #anchorRect:Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 609
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v2, :cond_9

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 618
    .restart local v31       #widthMeasureSpec:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_a

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .restart local v25       #heightMeasureSpec:I
    goto/16 :goto_3

    .line 613
    .end local v25           #heightMeasureSpec:I
    .end local v31           #widthMeasureSpec:I
    :cond_9
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .restart local v31       #widthMeasureSpec:I
    goto :goto_b

    .line 622
    :cond_a
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .restart local v25       #heightMeasureSpec:I
    goto/16 :goto_3

    .line 651
    .restart local v19       #contentHeight:I
    .restart local v21       #contentWidth:I
    .restart local v24       #hGravity:I
    .restart local v30       #vGravity:I
    :cond_b
    sparse-switch v24, :sswitch_data_0

    .line 689
    move/from16 v28, p3

    .line 694
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    add-int v28, v28, v2

    .line 698
    sparse-switch v30, :sswitch_data_1

    .line 715
    move/from16 v29, p4

    .line 720
    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    add-int v29, v29, v2

    goto/16 :goto_4

    .line 653
    :sswitch_0
    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int v28, v2, v21

    .line 654
    goto :goto_c

    .line 657
    :sswitch_1
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    .line 658
    goto :goto_c

    .line 661
    :sswitch_2
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v28, v2, v21

    .line 662
    goto :goto_c

    .line 665
    :sswitch_3
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v21, 0x2

    sub-int v28, v2, v3

    .line 666
    goto :goto_c

    .line 669
    :sswitch_4
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    .line 670
    goto :goto_c

    .line 673
    :sswitch_5
    iget v2, v10, Landroid/graphics/Rect;->right:I

    sub-int v28, v2, v21

    .line 674
    goto :goto_c

    .line 677
    :sswitch_6
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    .line 678
    goto :goto_c

    .line 681
    :sswitch_7
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v21, 0x2

    sub-int v28, v2, v3

    .line 682
    goto :goto_c

    .line 685
    :sswitch_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    div-int/lit8 v3, v21, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v28, v2, v3

    .line 686
    goto :goto_c

    .line 700
    :sswitch_9
    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v29, v2, v19

    .line 701
    goto :goto_d

    .line 703
    :sswitch_a
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    .line 704
    goto :goto_d

    .line 706
    :sswitch_b
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v19, 0x2

    sub-int v29, v2, v3

    .line 707
    goto :goto_d

    .line 709
    :sswitch_c
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v29, v2, v19

    .line 710
    goto :goto_d

    .line 712
    :sswitch_d
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    .line 713
    goto :goto_d

    .line 736
    :cond_c
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v29

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v29

    goto/16 :goto_5

    .line 738
    :cond_d
    add-int v2, v29, v19

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_1

    .line 740
    const/16 v2, 0x5050

    move/from16 v0, v30

    if-ne v0, v2, :cond_e

    .line 741
    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v29, v2, v19

    .line 742
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int v29, v29, v2

    goto/16 :goto_5

    .line 744
    :cond_e
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, v19

    move/from16 v0, v29

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v29

    goto/16 :goto_5

    .line 775
    .restart local v12       #canDraw:Z
    .restart local v13       #containerLeftOnWindow:I
    .restart local v18       #containerRightOnWindow:I
    .restart local v26       #isPopupAboveHorizontal:Z
    .restart local v27       #marginForHoverRing:I
    :cond_f
    const/16 v26, 0x1

    goto/16 :goto_6

    .line 790
    .restart local v20       #contentLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_10
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 791
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_7

    .line 809
    .restart local v14       #containerPaddingBottom:I
    .restart local v15       #containerPaddingLeft:I
    .restart local v16       #containerPaddingRight:I
    .restart local v17       #containerPaddingTop:I
    :cond_11
    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v27

    sub-int v17, v29, v2

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v3, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v15, v0, v1, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_8

    .line 818
    :cond_12
    move/from16 v28, v13

    .line 819
    sub-int v29, v29, v17

    goto/16 :goto_9

    .line 831
    .restart local v5       #hoverPointXonContainer:I
    .restart local v6       #hoverPointYonContainer:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v3, v21, 0x2

    add-int/2addr v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v4, v4, v17

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZ)V

    goto/16 :goto_a

    .line 836
    .end local v5           #hoverPointXonContainer:I
    .end local v6           #hoverPointYonContainer:I
    .end local v13           #containerLeftOnWindow:I
    .end local v14           #containerPaddingBottom:I
    .end local v15           #containerPaddingLeft:I
    .end local v16           #containerPaddingRight:I
    .end local v17           #containerPaddingTop:I
    .end local v18           #containerRightOnWindow:I
    .end local v20           #contentLP:Landroid/view/ViewGroup$LayoutParams;
    .end local v26           #isPopupAboveHorizontal:Z
    .end local v27           #marginForHoverRing:I
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_a

    .line 651
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    .line 698
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method protected convertDPtoPX(ILandroid/util/DisplayMetrics;)I
    .locals 2
    .parameter "dp"
    .parameter "displayMetrics"

    .prologue
    .line 981
    if-nez p2, :cond_0

    .line 982
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 984
    :cond_0
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 446
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 448
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 449
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 450
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 451
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 452
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 455
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 961
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    .line 962
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 377
    :goto_0
    return-object v0

    .line 374
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 160
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 162
    const/16 v0, 0x3031

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 163
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 164
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 165
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 166
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 167
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 168
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 169
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 170
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 172
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 173
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 174
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    .line 175
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 176
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 177
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 178
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 179
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 181
    const v0, 0x10802bd

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 182
    const v0, -0x635d57

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 183
    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x1

    .line 205
    .local v0, ret:Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 206
    const/4 v0, 0x0

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 208
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_3
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 212
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :cond_4
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 214
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 224
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 226
    .local v0, isHoveringOn:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 227
    if-ne p1, v1, :cond_2

    .line 228
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 236
    :cond_0
    :goto_1
    return v1

    .end local v0           #isHoveringOn:Z
    :cond_1
    move v0, v2

    .line 224
    goto :goto_0

    .line 230
    .restart local v0       #isHoveringOn:Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 231
    :cond_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_4
    move v1, v2

    .line 236
    goto :goto_1
.end method

.method protected isShowing()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    .line 509
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 936
    .local v0, action:I
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 939
    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 941
    .local v1, popupView:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v2, :cond_0

    .line 942
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 945
    check-cast v1, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .end local v1           #popupView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 949
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "aniStyle"

    .prologue
    .line 899
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 900
    return-void
.end method

.method public setContent(I)V
    .locals 0
    .parameter "resId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    .line 276
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "lp"

    .prologue
    .line 295
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 296
    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 297
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 306
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 307
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 242
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 909
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 910
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 919
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 920
    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .parameter "ringDrawable"
    .parameter "lineColor"

    .prologue
    .line 926
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 927
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 928
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .parameter "ms"

    .prologue
    .line 345
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 346
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 265
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 266
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 366
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 367
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 368
    return-void
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 190
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 191
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 192
    const/16 v0, 0x5153

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 193
    const v0, 0x10301df

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 195
    :cond_0
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 336
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 337
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 355
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 356
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 357
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 397
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 408
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v0, :cond_2

    .line 413
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 414
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 418
    :cond_2
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateHoverPopup()V
    .locals 4

    .prologue
    .line 847
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    .line 848
    return-void
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 5
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 854
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 855
    const-string v0, "HoverPopupwindow"

    const-string v1, "updateHoverPopup(), returned dueto mPopup==null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_0
    return-void

    .line 860
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 863
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 869
    :goto_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 870
    const-string v0, "HoverPopupwindow"

    const-string v1, "updateHoverPopup(), returns dueto mPopup.getContentView()==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 875
    :cond_2
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 877
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 878
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 881
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 882
    const-string v0, "HoverPopupwindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent view may be on sub-panel window, popup will be attached with Application Token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 887
    :cond_4
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method
