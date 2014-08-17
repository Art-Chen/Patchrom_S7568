.class Lcom/android/internal/policy/impl/LawmoLockScreen$3;
.super Landroid/os/CountDownTimer;
.source "LawmoLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LawmoLockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LawmoLockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->access$100(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->access$100(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LawmoLockScreen;->access$202(Lcom/android/internal/policy/impl/LawmoLockScreen;I)I

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;

    #calls: Lcom/android/internal/policy/impl/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LawmoLockScreen;->access$300(Lcom/android/internal/policy/impl/LawmoLockScreen;Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V

    .line 453
    return-void
.end method

.method public onTick(J)V
    .locals 8
    .parameter "millisUntilFinished"

    .prologue
    const/4 v7, 0x1

    .line 430
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 431
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LawmoLockScreen;->access$100(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403e0

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LawmoLockScreen;->access$100(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 435
    return-void
.end method
