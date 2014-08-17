.class public Landroid/widget/ExtSeekBar;
.super Landroid/widget/SeekBar;
.source "ExtSeekBar.java"


# instance fields
.field private mEnableChangeColor:Z

.field private mOffsetThumb:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private msetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    return-void
.end method

.method private updateDrawable()V
    .locals 4

    .prologue
    const v3, 0x10808b8

    const/high16 v2, 0x4320

    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getThumbOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10808d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    :goto_0
    return-void

    :cond_3
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x41b8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public isEnableChangeColor()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    return v0
.end method

.method public setChangeSeekbarColor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    :cond_0
    return-void
.end method
