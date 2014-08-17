.class Lcom/android/internal/policy/impl/PhoneWindowManager$16;
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
    .line 3116
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 8
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 3119
    const/4 v1, 0x0

    .line 3121
    .local v1, handled:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 3122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 3124
    const/4 v0, 0x0

    .line 3125
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3128
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v2, v3, 0x2

    .line 3130
    .local v2, newVal:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v3, v2, :cond_0

    .line 3131
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v2, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3132
    const/4 v0, 0x1

    .line 3137
    :cond_0
    if-nez v0, :cond_1

    .line 3138
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v2, v3, 0x2

    .line 3140
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v3, v2, :cond_1

    .line 3141
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v2, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 3142
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$16$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$16;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3153
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3154
    if-eqz v0, :cond_2

    .line 3155
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3160
    .end local v0           #changed:Z
    .end local v2           #newVal:I
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 3162
    return-void

    .line 3153
    .restart local v0       #changed:Z
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3160
    .end local v0           #changed:Z
    :catchall_1
    move-exception v3

    invoke-virtual {p2, v1}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v3
.end method
