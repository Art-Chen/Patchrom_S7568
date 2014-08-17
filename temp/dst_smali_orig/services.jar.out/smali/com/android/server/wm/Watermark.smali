.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field final mDeltaX:I

.field final mDeltaY:I

.field mDrawNeeded:Z

.field mLastDH:I

.field mLastDW:I

.field mSurface:Landroid/view/Surface;

.field final mText:Ljava/lang/String;

.field final mTextAscent:I

.field final mTextDescent:I

.field final mTextHeight:I

.field final mTextPaint:Landroid/graphics/Paint;

.field final mTextWidth:I

.field final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .locals 23
    .parameter "dm"
    .parameter "session"
    .parameter "tokens"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v11, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    .local v18, len:I
    and-int/lit8 v18, v18, -0x2

    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .local v12, c1:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    add-int/lit8 v3, v17, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .local v13, c2:I
    const/16 v2, 0x61

    if-lt v12, v2, :cond_0

    const/16 v2, 0x66

    if-gt v12, v2, :cond_0

    add-int/lit8 v2, v12, -0x61

    add-int/lit8 v12, v2, 0xa

    :goto_1
    const/16 v2, 0x61

    if-lt v13, v2, :cond_2

    const/16 v2, 0x66

    if-gt v13, v2, :cond_2

    add-int/lit8 v2, v13, -0x61

    add-int/lit8 v13, v2, 0xa

    :goto_2
    mul-int/lit8 v2, v12, 0x10

    add-int/2addr v2, v13

    rsub-int v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v17, v17, 0x2

    goto :goto_0

    :cond_0
    const/16 v2, 0x41

    if-lt v12, v2, :cond_1

    const/16 v2, 0x46

    if-gt v12, v2, :cond_1

    add-int/lit8 v2, v12, -0x41

    add-int/lit8 v12, v2, 0xa

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, -0x30

    goto :goto_1

    :cond_2
    const/16 v2, 0x41

    if-lt v13, v2, :cond_3

    const/16 v2, 0x46

    if-gt v13, v2, :cond_3

    add-int/lit8 v2, v13, -0x41

    add-int/lit8 v13, v2, 0xa

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, -0x30

    goto :goto_2

    .end local v12           #c1:I
    .end local v13           #c2:I
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x14

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v16

    .local v16, fontSize:I
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    .local v15, fm:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    iget v2, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mTextAscent:I

    iget v2, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mTextDescent:I

    iget v2, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    mul-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, -0x5000

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v19

    .local v19, shadowColor:I
    const/4 v2, 0x5

    const/4 v3, 0x0

    const v4, 0x60ffffff

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v14

    .local v14, color:I
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x7

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v22

    .local v22, shadowRadius:I
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v20

    .local v20, shadowDx:I
    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v21

    .local v21, shadowDy:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :try_start_0
    new-instance v2, Landroid/view/Surface;

    const/4 v4, 0x0

    const-string v5, "WatermarkSurface"

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, -0x3

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v10}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    const v3, 0xf4240

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setLayer(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/Surface;->setPosition(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    iget-boolean v11, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v11, :cond_4

    iget v6, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .local v6, dw:I
    iget v3, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .local v3, dh:I
    iput-boolean v12, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v12, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v4, dirty:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v1, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .local v1, deltaX:I
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .local v2, deltaY:I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    div-int v5, v11, v1

    .local v5, div:I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    mul-int v12, v5, v1

    sub-int v8, v11, v12

    .local v8, rem:I
    div-int/lit8 v7, v1, 0x4

    .local v7, qdelta:I
    if-lt v8, v7, :cond_0

    sub-int v11, v1, v7

    if-le v8, v11, :cond_1

    :cond_0
    div-int/lit8 v11, v1, 0x3

    add-int/2addr v1, v11

    :cond_1
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v10, v11

    .local v10, y:I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v9, v11

    .local v9, x:I
    :cond_2
    :goto_1
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v11, v3

    if-ge v10, v11, :cond_3

    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v12, v9

    int-to-float v13, v10

    iget-object v14, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v9, v1

    if-lt v9, v6, :cond_2

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    sub-int/2addr v9, v11

    add-int/2addr v10, v2

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v3           #dh:I
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #div:I
    .end local v6           #dw:I
    .end local v7           #qdelta:I
    .end local v8           #rem:I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_4
    return-void

    .restart local v0       #c:Landroid/graphics/Canvas;
    .restart local v3       #dh:I
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v6       #dw:I
    :catch_0
    move-exception v11

    goto :goto_0

    :catch_1
    move-exception v11

    goto :goto_0
.end method

.method positionSurface(II)V
    .locals 1
    .parameter "dw"
    .parameter "dh"

    .prologue
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    :cond_1
    return-void
.end method
