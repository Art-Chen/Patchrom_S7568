.class Lcom/android/internal/widget/SPenGestureCroppingView$1;
.super Ljava/lang/Object;
.source "SPenGestureCroppingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureCroppingView;->addPointerEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureCroppingView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureCroppingView;)V
    .locals 0
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 979
    const-string v7, "SPenGesutreCropping"

    const-string v8, "mSPenGestureCropDispatchThread run!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$900(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$902(Lcom/android/internal/widget/SPenGestureCroppingView;I)I

    .line 981
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1000(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1002(Lcom/android/internal/widget/SPenGestureCroppingView;I)I

    .line 982
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1100(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1102(Lcom/android/internal/widget/SPenGestureCroppingView;I)I

    .line 983
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1200(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1202(Lcom/android/internal/widget/SPenGestureCroppingView;I)I

    .line 985
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$900(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I
    invoke-static {v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1000(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v9

    sub-int/2addr v8, v9

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageWidth:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1302(Lcom/android/internal/widget/SPenGestureCroppingView;I)I

    .line 986
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1100(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I
    invoke-static {v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1200(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v9

    sub-int/2addr v8, v9

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageHeight:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1402(Lcom/android/internal/widget/SPenGestureCroppingView;I)I

    .line 989
    const-wide/16 v7, 0x64

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #calls: Lcom/android/internal/widget/SPenGestureCroppingView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1600(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1502(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 995
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mDisplayRoateDegress:I
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1700(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v7

    if-nez v7, :cond_0

    .line 996
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    const/16 v8, 0x320

    const/16 v9, 0x500

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1802(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1000
    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1800(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1001
    .local v2, canvasForCrop:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1500(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1002
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1900(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Path;

    move-result-object v7

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1003
    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1005
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageWidth:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1300(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageHeight:I
    invoke-static {v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1400(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2002(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1007
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2000(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1008
    .local v0, canvasFinal:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1000(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1200(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordX:I
    invoke-static {v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$900(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMaxCoordY:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1100(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1009
    .local v6, srcRectForCrop:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageWidth:I
    invoke-static {v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1300(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageHeight:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1400(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v10

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1010
    .local v3, dstRectForCrop:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1800(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v6, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1012
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1900(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Path;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mPaintForAnimation:Landroid/graphics/Paint;
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2100(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1013
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageWidth:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1300(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropImageHeight:I
    invoke-static {v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1400(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2202(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1014
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2200(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1015
    .local v1, canvasForAnimation:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1800(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v6, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1024
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    const/16 v7, 0x500

    if-ge v4, v7, :cond_2

    .line 1025
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    const/16 v7, 0x320

    if-ge v5, v7, :cond_1

    .line 1026
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCropping:[[I
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2300(Lcom/android/internal/widget/SPenGestureCroppingView;)[[I

    move-result-object v7

    aget-object v7, v7, v4

    const/4 v8, -0x1

    aput v8, v7, v5

    .line 1025
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 998
    .end local v0           #canvasFinal:Landroid/graphics/Canvas;
    .end local v1           #canvasForAnimation:Landroid/graphics/Canvas;
    .end local v2           #canvasForCrop:Landroid/graphics/Canvas;
    .end local v3           #dstRectForCrop:Landroid/graphics/Rect;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #srcRectForCrop:Landroid/graphics/Rect;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    const/16 v8, 0x500

    const/16 v9, 0x320

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1802(Lcom/android/internal/widget/SPenGestureCroppingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 1024
    .restart local v0       #canvasFinal:Landroid/graphics/Canvas;
    .restart local v1       #canvasForAnimation:Landroid/graphics/Canvas;
    .restart local v2       #canvasForCrop:Landroid/graphics/Canvas;
    .restart local v3       #dstRectForCrop:Landroid/graphics/Rect;
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v6       #srcRectForCrop:Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1029
    .end local v5           #j:I
    :cond_2
    const/4 v4, 0x0

    :goto_4
    const/16 v7, 0x320

    if-ge v4, v7, :cond_4

    .line 1030
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_5
    const/16 v7, 0x500

    if-ge v5, v7, :cond_3

    .line 1031
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMatrixForCroppingHorizontal:[[I
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2400(Lcom/android/internal/widget/SPenGestureCroppingView;)[[I

    move-result-object v7

    aget-object v7, v7, v4

    const/4 v8, -0x1

    aput v8, v7, v5

    .line 1030
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1029
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1034
    .end local v5           #j:I
    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    const/4 v8, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointPrev:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2502(Lcom/android/internal/widget/SPenGestureCroppingView;I)I

    .line 1035
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    const/4 v8, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mIntersectionPointLast:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2602(Lcom/android/internal/widget/SPenGestureCroppingView;I)I

    .line 1037
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I
    invoke-static {v8}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1000(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I
    invoke-static {v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1200(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    #calls: Lcom/android/internal/widget/SPenGestureCroppingView;->setCropAnimation(FF)V
    invoke-static {v7, v8, v9}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2700(Lcom/android/internal/widget/SPenGestureCroppingView;FF)V

    .line 1038
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$3000(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/internal/widget/SPenGestureCroppingView$1$1;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/SPenGestureCroppingView$1$1;-><init>(Lcom/android/internal/widget/SPenGestureCroppingView$1;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1046
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #calls: Lcom/android/internal/widget/SPenGestureCroppingView;->SaveImageClipboard()Z
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$3100(Lcom/android/internal/widget/SPenGestureCroppingView;)Z

    .line 1047
    return-void

    .line 990
    .end local v0           #canvasFinal:Landroid/graphics/Canvas;
    .end local v1           #canvasForAnimation:Landroid/graphics/Canvas;
    .end local v2           #canvasForCrop:Landroid/graphics/Canvas;
    .end local v3           #dstRectForCrop:Landroid/graphics/Rect;
    .end local v4           #i:I
    .end local v6           #srcRectForCrop:Landroid/graphics/Rect;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method
