.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final LEFT_OR_TOP_CENTER:I = 0x40000000

.field static final MW_DEBUG:Z = false

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final RIGHT_OR_BOTTOM_CENTER:I = -0x80000000

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 8
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "xAdj"
    .parameter "yAdj"
    .parameter "outRect"

    .prologue
    const/high16 v5, 0x4000

    const/16 v7, 0x80

    const/16 v6, 0x8

    .line 205
    if-eq p0, v5, :cond_0

    const/high16 v3, -0x8000

    if-ne p0, v3, :cond_5

    .line 206
    :cond_0
    const-string v0, "Gravity"

    .line 209
    .local v0, TAG:Ljava/lang/String;
    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .line 210
    .local v2, containerWidth:I
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v4

    .line 212
    .local v1, containerHeight:I
    if-ne p0, v5, :cond_3

    .line 213
    if-le v2, v1, :cond_2

    .line 216
    iget v3, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 217
    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, p2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 218
    iget v3, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 219
    iget v3, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    .line 330
    .end local v0           #TAG:Ljava/lang/String;
    .end local v1           #containerHeight:I
    .end local v2           #containerWidth:I
    :cond_1
    :goto_0
    return-void

    .line 222
    .restart local v0       #TAG:Ljava/lang/String;
    .restart local v1       #containerHeight:I
    .restart local v2       #containerWidth:I
    :cond_2
    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, p1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 223
    iget v3, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 224
    iget v3, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 225
    iget v3, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 229
    :cond_3
    if-le v2, v1, :cond_4

    .line 232
    iget v3, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 233
    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, p2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 234
    iget v3, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 235
    iget v3, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 238
    :cond_4
    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, p1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 239
    iget v3, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 240
    iget v3, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 241
    iget v3, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 249
    .end local v0           #TAG:Ljava/lang/String;
    .end local v1           #containerHeight:I
    .end local v2           #containerWidth:I
    :cond_5
    and-int/lit8 v3, p0, 0x6

    packed-switch v3, :pswitch_data_0

    .line 285
    :pswitch_0
    iget v3, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 286
    iget v3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 290
    :cond_6
    :goto_1
    and-int/lit8 v3, p0, 0x60

    sparse-switch v3, :sswitch_data_0

    .line 326
    iget v3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 327
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 251
    :pswitch_1
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 253
    iget v3, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 254
    and-int/lit8 v3, p0, 0x8

    if-ne v3, v6, :cond_6

    .line 256
    iget v3, p6, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_7

    .line 257
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 259
    :cond_7
    iget v3, p6, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_6

    .line 260
    iget v3, p3, Landroid/graphics/Rect;->right:I

    iput v3, p6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 265
    :pswitch_2
    iget v3, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 266
    iget v3, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 267
    and-int/lit8 v3, p0, 0x8

    if-ne v3, v6, :cond_6

    .line 269
    iget v3, p6, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_6

    .line 270
    iget v3, p3, Landroid/graphics/Rect;->right:I

    iput v3, p6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 275
    :pswitch_3
    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p4

    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 276
    iget v3, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p1

    iput v3, p6, Landroid/graphics/Rect;->left:I

    .line 277
    and-int/lit8 v3, p0, 0x8

    if-ne v3, v6, :cond_6

    .line 279
    iget v3, p6, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_6

    .line 280
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iput v3, p6, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 292
    :sswitch_0
    iget v3, p3, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 294
    iget v3, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    .line 295
    and-int/lit16 v3, p0, 0x80

    if-ne v3, v7, :cond_1

    .line 297
    iget v3, p6, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_8

    .line 298
    iget v3, p3, Landroid/graphics/Rect;->top:I

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 300
    :cond_8
    iget v3, p6, Landroid/graphics/Rect;->bottom:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_1

    .line 301
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 306
    :sswitch_1
    iget v3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 307
    iget v3, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    .line 308
    and-int/lit16 v3, p0, 0x80

    if-ne v3, v7, :cond_1

    .line 310
    iget v3, p6, Landroid/graphics/Rect;->bottom:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_1

    .line 311
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 316
    :sswitch_2
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p5

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    .line 317
    iget v3, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p2

    iput v3, p6, Landroid/graphics/Rect;->top:I

    .line 318
    and-int/lit16 v3, p0, 0x80

    if-ne v3, v7, :cond_1

    .line 320
    iget v3, p6, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_1

    .line 321
    iget v3, p3, Landroid/graphics/Rect;->top:I

    iput v3, p6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "outRect"

    .prologue
    const/4 v4, 0x0

    .line 155
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 156
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "outRect"
    .parameter "layoutDirection"

    .prologue
    const/4 v4, 0x0

    .line 176
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, absGravity:I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    .line 177
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 178
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "gravity"
    .parameter "display"
    .parameter "inoutObj"

    .prologue
    .line 349
    const/high16 v1, 0x1000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 350
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 351
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 367
    :cond_1
    :goto_0
    const/high16 v1, 0x100

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    .line 368
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 369
    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 384
    :cond_3
    :goto_1
    return-void

    .line 353
    :cond_4
    const/4 v0, 0x0

    .line 354
    .local v0, off:I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 356
    :cond_5
    :goto_2
    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_7

    .line 358
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 359
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 355
    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_5

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    goto :goto_2

    .line 361
    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 362
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 371
    .end local v0           #off:I
    :cond_8
    const/4 v0, 0x0

    .line 372
    .restart local v0       #off:I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_a

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    .line 374
    :cond_9
    :goto_3
    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_b

    .line 376
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 377
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 373
    :cond_a
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_9

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    goto :goto_3

    .line 379
    :cond_b
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 380
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method public static getAbsoluteGravity(II)I
    .locals 5
    .parameter "gravity"
    .parameter "layoutDirection"

    .prologue
    const/high16 v4, 0x4000

    const v3, 0x800005

    const v2, 0x800003

    .line 418
    move v0, p0

    .line 420
    .local v0, result:I
    const/high16 v1, 0x80

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 421
    and-int v1, v0, v2

    if-ne v1, v2, :cond_3

    .line 423
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 424
    if-ne p1, v4, :cond_2

    .line 426
    or-int/lit8 v0, v0, 0x5

    .line 444
    :cond_0
    :goto_0
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 446
    :cond_1
    return v0

    .line 429
    :cond_2
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 431
    :cond_3
    and-int v1, v0, v3

    if-ne v1, v3, :cond_0

    .line 433
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 434
    if-ne p1, v4, :cond_4

    .line 436
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 439
    :cond_4
    or-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public static isHorizontal(I)Z
    .locals 1
    .parameter "gravity"

    .prologue
    .line 403
    if-lez p0, :cond_0

    const v0, 0x800007

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVertical(I)Z
    .locals 1
    .parameter "gravity"

    .prologue
    .line 393
    if-lez p0, :cond_0

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
