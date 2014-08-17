.class Lcom/android/internal/policy/impl/LawmoLockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "LawmoLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LawmoLockScreen$4;,
        Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UnlockScreen"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationOrientation:I

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private final mForgotPatternClick:Landroid/view/View$OnClickListener;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 153
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 64
    iput v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 65
    iput v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mTotalFailedPatternAttempts:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 86
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLastPokeTime:J

    .line 91
    new-instance v0, Lcom/android/internal/policy/impl/LawmoLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LawmoLockScreen$1;-><init>(Lcom/android/internal/policy/impl/LawmoLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Lcom/android/internal/policy/impl/LawmoLockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LawmoLockScreen$2;-><init>(Lcom/android/internal/policy/impl/LawmoLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mForgotPatternClick:Landroid/view/View$OnClickListener;

    .line 154
    iput-object p3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    iput-object p4, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 156
    iput-object p5, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 157
    iput p6, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mTotalFailedPatternAttempts:I

    .line 158
    rem-int/lit8 v0, p6, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 161
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnlockScreen() ctor: totalFailedAttempts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFailedPat...="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    .line 169
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 171
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 172
    const-string v0, "UnlockScreen"

    const-string v1, "portrait mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const v0, 0x1090077

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 179
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 203
    sget-object v0, Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V

    .line 205
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LawmoLockScreen;->setFocusableInTouchMode(Z)V

    .line 208
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->disableDevicePermanently()V

    .line 212
    :cond_0
    const/high16 v0, 0x4c00

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->setBackgroundColor(I)V

    .line 213
    return-void

    .line 175
    :cond_1
    const-string v0, "UnlockScreen"

    const-string v1, "landscape mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const v0, 0x1090076

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/LawmoLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LawmoLockScreen;Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V

    return-void
.end method

.method private disableDevicePermanently()V
    .locals 2

    .prologue
    .line 479
    const-string v0, "UnlockScreen"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 426
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/LawmoLockScreen$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LawmoLockScreen$3;-><init>(Lcom/android/internal/policy/impl/LawmoLockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LawmoLockScreen$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 455
    return-void
.end method

.method private hideForgotPatternButton()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 463
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 464
    .local v3, lMaxNumFailedAttemptForDisable:I
    const-string v4, "UnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-lez v3, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 469
    .local v1, lCurNumFailedAttempts:I
    const-string v4, "UnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    .line 473
    .end local v1           #lCurNumFailedAttempts:I
    :cond_0
    :goto_0
    const-string v4, "UnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v2

    .line 470
    .restart local v1       #lCurNumFailedAttempts:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showForgotPatternButton()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 122
    sget-object v0, Lcom/android/internal/policy/impl/LawmoLockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LawmoLockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 124
    :pswitch_0
    const-string v0, "UnlockScreen"

    const-string v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 128
    :pswitch_1
    const-string v0, "UnlockScreen"

    const-string v1, "mode ForgotLockPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->showForgotPatternButton()V

    goto :goto_0

    .line 132
    :pswitch_2
    const-string v0, "UnlockScreen"

    const-string v1, "mode VerifyUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 331
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup() called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 333
    iput-object v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 334
    iput-object v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 335
    iput-object v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 337
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 226
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLastPokeTime:J

    .line 231
    :cond_0
    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onAttachedToWindow()V

    .line 238
    const-string v0, "UnlockScreen"

    const-string v1, "***** PATTERN ATTACHED TO WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 243
    iget v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    const-string v0, "UnlockScreen"

    const-string v1, "Layout issue break out condition, but execute workaround code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 257
    const-string v0, "UnlockScreen"

    const-string v1, "***** PATTERN CONFIGURATION CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 264
    :cond_0
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 267
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 281
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 286
    iget-object v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 294
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 296
    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    if-nez v2, :cond_4

    .line 299
    iget-object v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->showForgotPatternButton()V

    .line 306
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 307
    .local v0, deadline:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LawmoLockScreen;->handleAttemptLockout(J)V

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    sget-object v3, Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V

    .line 327
    .end local v0           #deadline:J
    :goto_1
    return-void

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 314
    .restart local v0       #deadline:J
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mTotalFailedPatternAttempts:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    .line 316
    sget-object v3, Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V

    goto :goto_1

    .line 318
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/LawmoLockScreen$FooterMode;)V

    goto :goto_1

    .line 323
    .end local v0           #deadline:J
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->disableDevicePermanently()V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 342
    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->onResume()V

    .line 346
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 216
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableFallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mEnableFallback:Z

    .line 218
    return-void
.end method
