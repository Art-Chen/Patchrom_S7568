.class Lcom/android/internal/policy/impl/PhoneWindowManager$2;
.super Lcom/android/internal/view/BaseInputHandler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 6
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, handled:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 522
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 523
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureCroppingView:Lcom/android/internal/widget/SPenGestureCroppingView;

    if-eqz v3, :cond_2

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureCroppingView:Lcom/android/internal/widget/SPenGestureCroppingView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/SPenGestureCroppingView;->addPointerEvent(Landroid/view/MotionEvent;)V

    .line 525
    const/4 v0, 0x1

    .line 527
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 532
    return-void

    :cond_2
    move v3, v2

    .line 523
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 527
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 530
    :catchall_1
    move-exception v1

    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v1
.end method
