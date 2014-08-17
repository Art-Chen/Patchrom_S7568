.class Lcom/android/internal/widget/SPenGestureCroppingView$1$1;
.super Ljava/lang/Object;
.source "SPenGestureCroppingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureCroppingView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/SPenGestureCroppingView$1;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureCroppingView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1$1;->this$1:Lcom/android/internal/widget/SPenGestureCroppingView$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1$1;->this$1:Lcom/android/internal/widget/SPenGestureCroppingView$1;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mIsAnimationOnProcess:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2802(Lcom/android/internal/widget/SPenGestureCroppingView;Z)Z

    .line 1042
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1$1;->this$1:Lcom/android/internal/widget/SPenGestureCroppingView$1;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1$1;->this$1:Lcom/android/internal/widget/SPenGestureCroppingView$1;

    iget-object v1, v1, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordX:I
    invoke-static {v1}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1000(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1$1;->this$1:Lcom/android/internal/widget/SPenGestureCroppingView$1;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mMinCoordY:I
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$1200(Lcom/android/internal/widget/SPenGestureCroppingView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureCroppingView$1$1;->this$1:Lcom/android/internal/widget/SPenGestureCroppingView$1;

    iget-object v3, v3, Lcom/android/internal/widget/SPenGestureCroppingView$1;->this$0:Lcom/android/internal/widget/SPenGestureCroppingView;

    #getter for: Lcom/android/internal/widget/SPenGestureCroppingView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2200(Lcom/android/internal/widget/SPenGestureCroppingView;)Landroid/graphics/Bitmap;

    move-result-object v3

    #calls: Lcom/android/internal/widget/SPenGestureCroppingView;->startCropAnimation(FFLandroid/graphics/Bitmap;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/SPenGestureCroppingView;->access$2900(Lcom/android/internal/widget/SPenGestureCroppingView;FFLandroid/graphics/Bitmap;)Z

    .line 1043
    return-void
.end method
