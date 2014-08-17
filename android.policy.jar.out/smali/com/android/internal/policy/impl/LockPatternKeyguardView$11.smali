.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 2278
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2304
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2306
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2307
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTalkbackEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUpHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2309
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideVoiceLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2312
    return-void
.end method

.method public exposeFallback()V
    .locals 2

    .prologue
    .line 2332
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock exposeFallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2334
    return-void
.end method

.method public pokeWakelock()V
    .locals 2

    .prologue
    .line 2339
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock pokeWakelock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 2341
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 2318
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock reportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2808(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 2320
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2321
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2322
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTalkbackEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUpHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2324
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2326
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2327
    return-void
.end method

.method public unlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2283
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock unlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2285
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2287
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTalkbackEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceUnlocked:Z

    .line 2289
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUnlocked:Z

    if-nez v0, :cond_0

    .line 2290
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2291
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2292
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->displayPrepareMsg()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2298
    :goto_0
    return-void

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 2297
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    goto :goto_0
.end method
