.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView$1;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/Context;Landroid/content/res/Configuration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2695
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView$1;->val$this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2699
    const/4 v0, 0x1

    return v0
.end method
