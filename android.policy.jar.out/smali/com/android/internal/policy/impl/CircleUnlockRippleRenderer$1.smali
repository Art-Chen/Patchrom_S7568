.class Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLongPressCheck(Landroid/view/View;FFJF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

.field final synthetic val$pIntensity:F


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->val$pIntensity:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    iget v1, v1, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmx:F

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmy:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    iget v3, v3, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    iget v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->val$pIntensity:F

    mul-float/2addr v3, v4

    #calls: Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->access$000(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;FFF)V

    .line 1080
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    iget-object v1, v1, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->access$102(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1083
    return-void
.end method
