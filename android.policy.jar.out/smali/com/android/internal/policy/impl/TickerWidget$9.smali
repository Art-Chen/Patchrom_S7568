.class Lcom/android/internal/policy/impl/TickerWidget$9;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1200(Lcom/android/internal/policy/impl/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookRefreshing:Z

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/TickerWidget;->requestTickerDataToDemon()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$2400(Lcom/android/internal/policy/impl/TickerWidget;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1100(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 426
    return-void
.end method
