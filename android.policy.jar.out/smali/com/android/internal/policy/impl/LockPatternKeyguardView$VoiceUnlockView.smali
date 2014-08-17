.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;
.super Landroid/widget/LinearLayout;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceUnlockView"
.end annotation


# instance fields
.field private mErrorShowed:Z

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mMsg:Landroid/widget/TextView;

.field private mMsg2:Landroid/widget/TextView;

.field private mResId:I

.field private mStatusImg:Landroid/widget/ImageView;

.field private mVolumeImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/Context;Landroid/content/res/Configuration;Z)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "configuration"
    .parameter "isPattern"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2673
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    .line 2674
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2669
    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    .line 2671
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mErrorShowed:Z

    .line 2676
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2677
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz p4, :cond_1

    .line 2678
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 2679
    const v1, 0x1090090

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2689
    :goto_0
    const v1, 0x10203a8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    .line 2690
    const v1, 0x10203a9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    .line 2691
    const v1, 0x10203ac

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    .line 2692
    const v1, 0x10203ab

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    .line 2693
    const v1, 0x10203aa

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    .line 2695
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2711
    return-void

    .line 2681
    :cond_0
    const v1, 0x109008f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 2683
    :cond_1
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    .line 2684
    const v1, 0x1090092

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 2686
    :cond_2
    const v1, 0x1090091

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public isErrorShowed()Z
    .locals 1

    .prologue
    .line 2749
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mErrorShowed:Z

    return v0
.end method

.method public setErrorMsg()V
    .locals 2

    .prologue
    .line 2727
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "setErrorMsg() mErrorShowed=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mErrorShowed:Z

    .line 2729
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x10406ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2730
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1080443

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2733
    return-void
.end method

.method public setPrepareMsg()V
    .locals 2

    .prologue
    .line 2714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mErrorShowed:Z

    .line 2715
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x10406ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2716
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x10406b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2717
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1080441

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2719
    return-void
.end method

.method public setRecognitionMsg()V
    .locals 2

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x10406ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2723
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1080441

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2724
    return-void
.end method

.method public setSuccessMsg()V
    .locals 2

    .prologue
    .line 2736
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x10406af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2737
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x1080442

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2738
    return-void
.end method

.method public updateVolumeBg(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 2741
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    if-eq v0, p1, :cond_0

    .line 2743
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    .line 2744
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2746
    :cond_0
    return-void
.end method
