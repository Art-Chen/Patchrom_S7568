.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

.field private mStartHandleOnTop:Z

.field private mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 12214
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12204
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    .line 12211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 12215
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 12216
    return-void
.end method

.method static synthetic access$10400(Landroid/widget/TextView$SelectionModifierCursorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12197
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->switchStartHandle()V

    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 12228
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12229
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$8800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8602(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12232
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12233
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$9100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRightRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$9000(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8902(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12237
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$9200(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12238
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$9400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftTopRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$9300(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$9202(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12242
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$9500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12243
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$9700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRightTopRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$9600(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$9502(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12247
    :cond_3
    return-void
.end method

.method private initHandles()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 12251
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 12252
    new-instance v0, Landroid/widget/TextView$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    .line 12254
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 12255
    new-instance v0, Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionEndHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    .line 12258
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12259
    new-instance v0, Landroid/widget/TextView$SelectionStartTopHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$9200(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$9500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartTopHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    .line 12263
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->show()V

    .line 12264
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->show()V

    .line 12266
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_3

    .line 12267
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->show()V

    .line 12272
    :cond_3
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_5

    .line 12273
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12274
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12288
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V

    .line 12290
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$8500(Landroid/widget/TextView;)V

    .line 12291
    return-void

    .line 12276
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12277
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_4

    .line 12278
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchStartHandle()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 12438
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_2

    .line 12439
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12440
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12442
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12449
    :cond_1
    :goto_0
    return-void

    .line 12444
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12445
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12447
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 12349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 12350
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 12351
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 12352
    .local v1, offset:I
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12353
    :cond_0
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 12350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12355
    .end local v1           #offset:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 12362
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 12358
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public getStartHandleToTop()Z
    .locals 1

    .prologue
    .line 12419
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 12294
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->hide()V

    .line 12295
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->hide()V

    .line 12297
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->hide()V

    .line 12299
    :cond_2
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12374
    iget-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v2, :cond_2

    .line 12375
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionStartTopHandleView;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12377
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 12375
    goto :goto_0

    .line 12377
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionStartHandleView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 12390
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 12391
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 12393
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->onDetached()V

    .line 12394
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->onDetached()V

    .line 12396
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->onDetached()V

    .line 12398
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 12304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 12343
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 12306
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 12307
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 12310
    .local v6, y:F
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v3, v7, v9

    .line 12314
    .local v3, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gtz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isPositionOnText(FF)Z
    invoke-static {v7, v5, v6}, Landroid/widget/TextView;->access$9800(Landroid/widget/TextView;FF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 12316
    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    sub-float v0, v5, v7

    .line 12317
    .local v0, deltaX:F
    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    sub-float v1, v6, v7

    .line 12318
    .local v1, deltaY:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 12319
    .local v2, distanceSquared:F
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v7}, Landroid/widget/TextView;->access$8200(Landroid/widget/TextView;)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1

    .line 12320
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startSelectionActionMode()Z
    invoke-static {v7}, Landroid/widget/TextView;->access$9900(Landroid/widget/TextView;)Z

    .line 12321
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const/4 v8, 0x1

    #setter for: Landroid/widget/TextView;->mDiscardNextActionUp:Z
    invoke-static {v7, v8}, Landroid/widget/TextView;->access$10002(Landroid/widget/TextView;Z)Z

    .line 12325
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :cond_1
    iput v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 12326
    iput v6, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_0

    .line 12333
    .end local v3           #duration:J
    .end local v5           #x:F
    .end local v6           #y:F
    :pswitch_2
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$10100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 12335
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 12340
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto :goto_0

    .line 12304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 12383
    if-nez p1, :cond_0

    .line 12384
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 12386
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 12366
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12367
    return-void
.end method

.method public setStartHandleToTop(Z)V
    .locals 4
    .parameter "toTop"

    .prologue
    const/4 v3, 0x0

    .line 12403
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isRtlLanguage()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12404
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 12405
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 12406
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    .line 12407
    iput-boolean v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    .line 12416
    .end local v0           #isRtlCharAtOffset:Z
    .end local v1           #offset:I
    :goto_0
    return-void

    .line 12411
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12412
    iput-boolean p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    goto :goto_0

    .line 12414
    :cond_1
    iput-boolean v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 12219
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12225
    :goto_0
    return-void

    .line 12222
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initDrawables()V

    .line 12223
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initHandles()V

    .line 12224
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$8500(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public unvisibleAllHandle()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 12423
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12424
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12425
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setVisibility(I)V

    .line 12426
    :cond_2
    return-void
.end method

.method public visibleAllHandle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12429
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_2

    .line 12430
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12434
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setVisibility(I)V

    .line 12435
    :cond_1
    return-void

    .line 12432
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    goto :goto_0
.end method
