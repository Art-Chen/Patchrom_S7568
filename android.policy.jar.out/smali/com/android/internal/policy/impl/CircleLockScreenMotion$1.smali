.class Lcom/android/internal/policy/impl/CircleLockScreenMotion$1;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$000(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$100(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Here comes a motion event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 81
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$000(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$100(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TILT_TO_UNLOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$400(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreenMotion$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion$1$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreenMotion$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x4b -> :sswitch_0
        0x61 -> :sswitch_0
    .end sparse-switch
.end method
