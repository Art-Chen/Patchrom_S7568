.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$12$1;
.super Ljava/lang/Thread;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView$12;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$12;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$12;)V
    .locals 0
    .parameter

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$12$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$12;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$12$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$12;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->formatExtStorage()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 2373
    return-void
.end method
