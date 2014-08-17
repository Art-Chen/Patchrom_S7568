.class Lcom/android/internal/widget/PenGestureView$7;
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
    .line 354
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$7;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.gesturepad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PenGesture"

    const-string v2, "gesturepad is live!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$7;->this$0:Lcom/android/internal/widget/PenGestureView;

    #calls: Lcom/android/internal/widget/PenGestureView;->isLockScreenShowing()Z
    invoke-static {v1}, Lcom/android/internal/widget/PenGestureView;->access$1400(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PenGesture"

    const-string v2, "Now keyguard is on!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PenGesture"

    const-string v2, "Gesture Pad!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$7;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$7;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mGesturePadIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$1500(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
