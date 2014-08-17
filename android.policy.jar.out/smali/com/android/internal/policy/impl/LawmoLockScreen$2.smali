.class Lcom/android/internal/policy/impl/LawmoLockScreen$2;
.super Ljava/lang/Object;
.source "LawmoLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LawmoLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LawmoLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$2;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$2;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->access$000(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen$2;->this$0:Lcom/android/internal/policy/impl/LawmoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->access$000(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    .line 101
    :cond_0
    return-void
.end method
