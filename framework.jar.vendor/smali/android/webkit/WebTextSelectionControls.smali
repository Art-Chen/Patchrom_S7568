.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field static final GRANULARITY_CHARACTER:I = 0x0

.field static final GRANULARITY_IMAGE:I = 0x8

.field static final GRANULARITY_PARAGRAPH:I = 0x4

.field static final GRANULARITY_WORD:I = 0x1

.field static final HANDLE_CHAR_LEFT:I = 0x1

.field static final HANDLE_CHAR_RIGHT:I = 0x2

.field static final HANDLE_NONE:I = 0x0

.field static final HANDLE_PARA_BOTTOM:I = 0x5

.field static final HANDLE_PARA_LEFT:I = 0x3

.field static final HANDLE_PARA_RIGHT:I = 0x4

.field static final HANDLE_PARA_TOP:I = 0x6

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field private static final STATE_CHECK_REVERSED:I = 0x5

.field private static final STATE_CHECK_UPSIDEDOWN:I = 0xa

.field private static final STATE_FORCE_REVERSED:I = 0x4

.field private static final STATE_FORCE_UPSIDEDOWN:I = 0x8

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_RESET_MASK:I = 0x3

.field private static final STATE_REVERSED:I = 0x1

.field private static final STATE_UPSIDEDOWN:I = 0x2

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private final HORIZONTAL_TRANSPARENT_RATE:F

.field private final LOGTAG:Ljava/lang/String;

.field private final LOGV:Z

.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mHandleCrossing:Z

.field private mLeftHandleId:I

.field private mLeftHandleState:I

.field private mOrigCharHandleHeight:I

.field private mOrigCharHandleWidth:I

.field private mOrigParaHandleHeight:I

.field private mOrigParaHandleWidth:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightHandleId:I

.field private mRightHandleState:I

.field private mSelectedtext:Ljava/lang/String;

.field private mSeletionCursor:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 87
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 88
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 5
    .parameter "context"
    .parameter "webview"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v2, "WebSelectionControls"

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->LOGTAG:Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->LOGV:Z

    .line 77
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 80
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 81
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 82
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 83
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 90
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 91
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 92
    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 99
    const v2, 0x3e0f5c29

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    .line 102
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 109
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 112
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 113
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 114
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080639

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    .local v1, SController:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108063d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, PController:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 127
    :cond_0
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 129
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 131
    :cond_1
    return-void
.end method

.method private DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "canvas"
    .parameter "rtSelection"

    .prologue
    .line 726
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 727
    .local v0, path:Landroid/graphics/Path;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 728
    .local v6, paint:Landroid/graphics/Paint;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 729
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 730
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 731
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 732
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 733
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 734
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 735
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 736
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 737
    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 738
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 739
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 740
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 9
    .parameter "canvas"
    .parameter "Start"
    .parameter "End"
    .parameter "pressed"

    .prologue
    const/4 v5, 0x1

    .line 748
    invoke-direct {p0, p2, v5, v5}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v2

    .line 749
    .local v2, leftPos:Landroid/graphics/Point;
    const/4 v4, 0x2

    invoke-direct {p0, p3, v4, v5}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 753
    .local v3, rightPos:Landroid/graphics/Point;
    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 754
    .local v1, SController:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 756
    .local v0, EController:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 757
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Point;->y:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 758
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 760
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Point;->y:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 761
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 764
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 765
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 777
    :cond_1
    return-void
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V
    .locals 8
    .parameter "canvas"
    .parameter "type"
    .parameter "width"
    .parameter "height"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 803
    :pswitch_0
    const-string v3, "WebSelectionControls"

    const-string v4, "DrawSelectionParaController : INVALID type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :goto_0
    :pswitch_1
    return-void

    .line 788
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108063d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 808
    :goto_1
    div-int/lit8 v3, p3, 0x2

    sub-int v1, p5, v3

    .line 809
    .local v1, x:I
    div-int/lit8 v3, p4, 0x2

    sub-int v2, p6, v3

    .line 812
    .local v2, y:I
    if-gez v1, :cond_2

    .line 814
    int-to-double v3, p3

    const-wide v5, 0x3fc3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v1, v3

    .line 819
    :cond_0
    :goto_2
    if-gez v2, :cond_3

    .line 821
    int-to-double v3, p4

    const-wide v5, 0x3fc999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v2, v3

    .line 826
    :cond_1
    :goto_3
    add-int v3, v1, p3

    add-int v4, v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 827
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 791
    .end local v1           #x:I
    .end local v2           #y:I
    :pswitch_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108063b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 792
    goto :goto_1

    .line 794
    :pswitch_4
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108063c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 795
    goto :goto_1

    .line 797
    :pswitch_5
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108063a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 798
    goto :goto_1

    .line 815
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    sub-int/2addr v3, p3

    if-le v1, v3, :cond_0

    .line 817
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    int-to-double v4, p3

    const-wide v6, 0x3feb333333333333L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v1, v3, v4

    goto :goto_2

    .line 822
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_1

    .line 823
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-double v4, p4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v2, v3, v4

    goto :goto_3

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7
    .parameter "canvas"
    .parameter "rtStart"
    .parameter "rtEnd"
    .parameter "pressed"

    .prologue
    .line 704
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 705
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 706
    .local v1, rect1:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 708
    .local v2, rect2:Landroid/graphics/Rect;
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 709
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 711
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 712
    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 713
    if-nez p4, :cond_0

    .line 714
    const/16 v3, 0xff

    const/16 v4, 0x58

    const/16 v5, 0xa5

    const/16 v6, 0xdc

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 715
    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 717
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 718
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 719
    return-void
.end method

.method private getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;
    .locals 8
    .parameter "selection"
    .parameter "handleType"
    .parameter "update"

    .prologue
    const v7, 0x1080639

    const v6, 0x1080638

    const v5, 0x3e0f5c29

    const/4 v4, 0x1

    const v3, 0x3f5c28f6

    .line 831
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 833
    .local v0, pos:Landroid/graphics/Point;
    if-ne v4, p2, :cond_4

    .line 834
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 835
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 842
    :goto_0
    if-ne v4, p3, :cond_1

    .line 843
    if-ne v4, p2, :cond_6

    .line 844
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 845
    iput v7, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    .line 848
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gez v1, :cond_0

    .line 849
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 853
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 854
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    if-gt v1, v2, :cond_5

    .line 855
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 879
    :cond_1
    :goto_1
    if-ne v4, p2, :cond_c

    .line 881
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_a

    .line 883
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v1, :cond_9

    .line 884
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 885
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 886
    if-eqz p3, :cond_3

    .line 887
    const v1, 0x108063e

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    .line 929
    :cond_3
    :goto_2
    return-object v0

    .line 838
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 839
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 857
    :cond_5
    const-string v1, "WebSelectionControls"

    const-string v2, "Webview is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 861
    :cond_6
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 862
    const v1, 0x108063e

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    .line 865
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 866
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 870
    :cond_7
    iget v1, v0, Landroid/graphics/Point;->y:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 871
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_8

    .line 872
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto/16 :goto_1

    .line 874
    :cond_8
    const-string v1, "WebSelectionControls"

    const-string v2, "Webview is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 891
    :cond_9
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 892
    if-eqz p3, :cond_3

    .line 893
    const v1, 0x108063f

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto :goto_2

    .line 897
    :cond_a
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v1, :cond_3

    .line 898
    :cond_b
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 899
    if-eqz p3, :cond_3

    .line 900
    iput v6, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_2

    .line 905
    :cond_c
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_f

    .line 907
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v1, :cond_e

    .line 908
    :cond_d
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 909
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 910
    if-eqz p3, :cond_3

    .line 911
    iput v7, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2

    .line 915
    :cond_e
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 916
    if-eqz p3, :cond_3

    .line 917
    iput v6, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2

    .line 921
    :cond_f
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_10

    iget-boolean v1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v1, :cond_3

    .line 922
    :cond_10
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 923
    if-eqz p3, :cond_3

    .line 924
    const v1, 0x108063f

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2
.end method

.method private updateHandleSize(IF)V
    .locals 4
    .parameter "granularity"
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 680
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 681
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 682
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 683
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 697
    :goto_0
    return-void

    .line 685
    :cond_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 686
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    .line 689
    :cond_1
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 690
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 691
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    .line 693
    :cond_2
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 694
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0
.end method


# virtual methods
.method DrawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 0
    .parameter "canvas"
    .parameter "outLinePath"
    .parameter "handlesPath"

    .prologue
    .line 526
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebTextSelectionControls;->drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 527
    return-void
.end method

.method DrawImageSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "imagetRect"

    .prologue
    .line 500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 502
    .local v9, scalecont:I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 503
    .local v7, paintSelected:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 504
    const/16 v1, 0x80

    const/16 v2, 0x96

    const/16 v3, 0xcb

    const/16 v4, 0xfb

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 505
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 507
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 511
    .local v0, SelectionPath:Landroid/graphics/Path;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int v8, v1, v2

    .line 512
    .local v8, right:I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int v6, v1, v2

    .line 516
    .local v6, bottom:I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 517
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 518
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 520
    return-void
.end method

.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 10
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 535
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    .line 538
    return-void
.end method

.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 25
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "charRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 556
    .local v24, scalecont:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 557
    .local v11, paintSelected:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 558
    const/16 v4, 0x80

    const/16 v5, 0x96

    const/16 v6, 0xcb

    const/16 v7, 0xfb

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 559
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v22

    .line 562
    .local v22, scale:F
    const/16 v23, 0x0

    .line 564
    .local v23, scaleLevel:I
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebTextSelectionControls;->updateHandleSize(IF)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 568
    .local v15, rectSelection:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 569
    .local v17, rectStart:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v14, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 572
    .local v14, rectEnd:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 574
    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    .line 575
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 576
    .local v13, rectContentView:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v13}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 578
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 585
    .local v16, rectSelectionView:Landroid/graphics/Rect;
    iget v9, v15, Landroid/graphics/Rect;->left:I

    .line 586
    .local v9, centerX:I
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 589
    .local v10, centerY:I
    if-nez p6, :cond_1

    .line 590
    const/4 v6, 0x3

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 592
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 593
    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 594
    const/4 v6, 0x6

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 596
    iget v9, v15, Landroid/graphics/Rect;->right:I

    .line 597
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 598
    const/4 v6, 0x4

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 600
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 601
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    .line 602
    const/4 v6, 0x5

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 675
    .end local v9           #centerX:I
    .end local v10           #centerY:I
    .end local v13           #rectContentView:Landroid/graphics/Rect;
    .end local v16           #rectSelectionView:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 676
    return-void

    .line 606
    .restart local v9       #centerX:I
    .restart local v10       #centerY:I
    .restart local v13       #rectContentView:Landroid/graphics/Rect;
    .restart local v16       #rectSelectionView:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Landroid/webkit/WebTextSelectionControls;->DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 608
    packed-switch p8, :pswitch_data_0

    .line 630
    const-string v4, "WebSelectionControls"

    const-string v5, "Selection controler not set!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_1
    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p8

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    goto :goto_0

    .line 610
    :pswitch_0
    iget v9, v15, Landroid/graphics/Rect;->left:I

    .line 611
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 612
    goto :goto_1

    .line 615
    :pswitch_1
    iget v9, v15, Landroid/graphics/Rect;->right:I

    .line 616
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 617
    goto :goto_1

    .line 620
    :pswitch_2
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 621
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    .line 622
    goto :goto_1

    .line 625
    :pswitch_3
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 626
    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 627
    goto :goto_1

    .line 637
    .end local v9           #centerX:I
    .end local v10           #centerY:I
    .end local v13           #rectContentView:Landroid/graphics/Rect;
    .end local v16           #rectSelectionView:Landroid/graphics/Rect;
    :cond_2
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 638
    .local v21, rtStart:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 639
    .local v20, rtMiddle:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 643
    .local v19, rtEnd:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 644
    iget v4, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 645
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v14, Landroid/graphics/Rect;->top:I

    iget v6, v14, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 650
    if-eqz p3, :cond_4

    .line 651
    new-instance v18, Landroid/graphics/Region;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 660
    .local v18, regionSelection:Landroid/graphics/Region;
    :goto_2
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 661
    .local v12, pathSelection:Landroid/graphics/Path;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 662
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 667
    const/4 v4, 0x1

    move/from16 v0, p9

    if-ne v4, v0, :cond_0

    .line 668
    if-eqz p6, :cond_3

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/webkit/WebTextSelectionControls;->drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 671
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 653
    .end local v12           #pathSelection:Landroid/graphics/Path;
    .end local v18           #regionSelection:Landroid/graphics/Region;
    :cond_4
    new-instance v18, Landroid/graphics/Region;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Region;-><init>()V

    .line 654
    .restart local v18       #regionSelection:Landroid/graphics/Region;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 655
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 656
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    .line 608
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 267
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 269
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 270
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 271
    return-void
.end method

.method public drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 12
    .parameter "canvas"
    .parameter "outLinePath"
    .parameter "handlesPath"

    .prologue
    .line 441
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 442
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 443
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 444
    const/high16 v8, 0x3f80

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 445
    const v8, -0xffff01

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 448
    .local v3, paintForHandles:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 449
    const v8, -0xffff01

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 451
    const/high16 v8, 0x4080

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 452
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 456
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 457
    .local v4, re:Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 460
    const/16 v0, 0x14

    .line 461
    .local v0, delta:I
    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 462
    .local v6, xcenter:I
    iget v8, v4, Landroid/graphics/RectF;->top:F

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 463
    .local v7, ycenter:I
    const/4 v1, 0x0

    .line 464
    .local v1, handle:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080604

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 465
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 467
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080604

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 468
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080605

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 471
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080605

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 474
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 477
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080606

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 478
    sub-int v8, v6, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    add-int v10, v6, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 480
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080606

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 481
    sub-int v8, v6, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    add-int v10, v6, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080603

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 484
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    sub-int v9, v7, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    add-int v11, v7, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 486
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080603

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 487
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    sub-int v9, v7, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    add-int v11, v7, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 488
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 490
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 491
    .local v5, reh:Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {p3, v5, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 493
    return-void
.end method

.method getHandleCrossing()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    return v0
.end method

.method getHandleExtendPoint(IIILandroid/webkit/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;
    .locals 5
    .parameter "contentX"
    .parameter "contentY"
    .parameter "handleType"
    .parameter "copyInfo"

    .prologue
    .line 373
    if-nez p4, :cond_1

    .line 374
    const/4 v3, 0x0

    .line 436
    :cond_0
    :goto_0
    return-object v3

    .line 377
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 378
    .local v3, value:Landroid/graphics/Point;
    const/4 v0, 0x0

    .line 379
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 380
    .local v1, deltaY:I
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 382
    .local v2, selectRect:Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-ne v4, p3, :cond_5

    .line 383
    iget v4, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v4, :cond_3

    .line 384
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, p2

    .line 385
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_2

    .line 386
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 387
    :cond_2
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 388
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 392
    :cond_3
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v4

    .line 393
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_4

    .line 394
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 395
    :cond_4
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 396
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 400
    :cond_5
    const/4 v4, 0x2

    if-ne v4, p3, :cond_9

    .line 401
    iget v4, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_7

    iget-boolean v4, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v4, :cond_7

    .line 402
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v4

    .line 403
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_6

    .line 404
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 405
    :cond_6
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 406
    sub-int v4, p2, v1

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 410
    :cond_7
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, p2

    .line 411
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_8

    .line 412
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 413
    :cond_8
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 414
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 418
    :cond_9
    const/4 v4, 0x5

    if-eq v4, p3, :cond_a

    const/4 v4, 0x6

    if-ne v4, p3, :cond_c

    .line 419
    :cond_a
    if-lez p1, :cond_b

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v4, :cond_b

    .line 420
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 421
    :cond_b
    if-lez p1, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_0

    .line 422
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 424
    :cond_c
    const/4 v4, 0x3

    if-eq v4, p3, :cond_d

    const/4 v4, 0x4

    if-ne v4, p3, :cond_0

    .line 425
    :cond_d
    if-lez p2, :cond_e

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v4, :cond_e

    .line 426
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 427
    :cond_e
    if-lez p2, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le p2, v4, :cond_0

    .line 428
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method getHandleHeight()I
    .locals 1

    .prologue
    .line 286
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method public getHandleState(I)I
    .locals 3
    .parameter "handleType"

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 186
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 181
    :pswitch_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    .line 183
    :pswitch_1
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I
    .locals 14
    .parameter "ptX"
    .parameter "ptY"
    .parameter "copyInfo"

    .prologue
    .line 291
    if-nez p3, :cond_0

    .line 293
    const/4 v11, 0x0

    .line 368
    :goto_0
    return v11

    .line 296
    :cond_0
    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 297
    .local v2, controllerWidth:I
    sget v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 298
    .local v1, controllerHeight:I
    const/4 v6, 0x0

    .local v6, selectX:I
    const/4 v7, 0x0

    .line 300
    .local v7, selectY:I
    move-object/from16 v0, p3

    iget v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    .line 301
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 303
    .local v8, selectionCtrl:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 304
    .local v5, selectRect:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v11, :cond_1

    .line 305
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v11}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 308
    :cond_1
    if-eqz v5, :cond_7

    .line 310
    div-int/lit8 v9, v2, 0x2

    .line 311
    .local v9, xRadius:I
    div-int/lit8 v10, v1, 0x2

    .line 314
    .local v10, yRadius:I
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 315
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 316
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 317
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 318
    const/4 v11, 0x5

    goto :goto_0

    .line 321
    :cond_2
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 322
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 323
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 324
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 325
    const/4 v11, 0x3

    goto :goto_0

    .line 328
    :cond_3
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 329
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 330
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 331
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 332
    const/4 v11, 0x4

    goto :goto_0

    .line 335
    :cond_4
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 336
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 337
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 338
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 339
    const/4 v11, 0x6

    goto/16 :goto_0

    .line 342
    .end local v5           #selectRect:Landroid/graphics/Rect;
    .end local v8           #selectionCtrl:Landroid/graphics/Rect;
    .end local v9           #xRadius:I
    .end local v10           #yRadius:I
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    .local v4, rtCtrlTouchArea:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_6

    .line 347
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 348
    .local v3, pos:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 351
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 352
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 357
    .end local v3           #pos:Landroid/graphics/Point;
    :cond_6
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_7

    .line 358
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 359
    .restart local v3       #pos:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 362
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 363
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 368
    .end local v3           #pos:Landroid/graphics/Point;
    .end local v4           #rtCtrlTouchArea:Landroid/graphics/Rect;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public getSelectionCursorRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 16
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 213
    const/4 v4, 0x0

    .local v4, bitmapwidth:I
    const/4 v3, 0x0

    .line 214
    .local v3, bitmapheight:I
    const/4 v5, 0x0

    .local v5, bitmapx:F
    const/4 v6, 0x0

    .line 217
    .local v6, bitmapy:F
    move-object/from16 v12, p2

    .line 219
    .local v12, rtSelection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->right:I

    iget v15, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v4

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v5

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v6

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v11

    .line 232
    .local v11, picture:Landroid/graphics/Picture;
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 233
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 235
    .local v2, bitmapCanvas:Landroid/graphics/Canvas;
    const-string v13, "WebSelectionControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rtSelection.left :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v13, "WebSelectionControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rtSelection.top : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    neg-float v13, v5

    neg-float v14, v6

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    invoke-virtual {v11, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 241
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v8, mFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 244
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 247
    :cond_0
    const/4 v9, 0x0

    .line 250
    .local v9, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v9           #out:Ljava/io/FileOutputStream;
    .local v10, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v1, v13, v14, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    .line 256
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v9, :cond_1

    .line 257
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 261
    :cond_1
    :goto_1
    return-void

    .line 258
    :catch_0
    move-exception v7

    .line 259
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 252
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v13

    goto :goto_0

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v13

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method setHandleCrossing(Z)V
    .locals 0
    .parameter "crossing"

    .prologue
    .line 274
    iput-boolean p1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 275
    return-void
.end method

.method public setHandleState(II)V
    .locals 3
    .parameter "handleType"
    .parameter "state"

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 207
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    .line 203
    :pswitch_1
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method toggleHandleCrossing()V
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 283
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
