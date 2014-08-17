.class Lcom/android/internal/widget/PenGestureView$6;
.super Ljava/lang/Object;
.source "PenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$6;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$6;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PenGestureView;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$6;->this$0:Lcom/android/internal/widget/PenGestureView;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/internal/widget/PenGestureView;->access$1202(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$6;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$6;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$1200(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PenGesture"

    const-string v2, "Double tapped."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$6;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$6;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$1300(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
