.class Lcom/android/internal/policy/impl/TickerWidget$7;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;


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
    .line 372
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    .prologue
    .line 375
    const-string v1, "TickerWidget"

    const-string v2, "onDrawerOpened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TickerWidget;->requestFocus()Z

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$2200(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$2200(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->tikerRippleForOpen()V

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$2300(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x108047e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$1200(Lcom/android/internal/policy/impl/TickerWidget;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookRefreshing:Z

    if-nez v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$2000(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$2000(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$2000(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getCurrentPage()I

    move-result v0

    .line 392
    .local v0, currentPage:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerWidget;->access$1900(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->moveToPage(I)V

    .line 393
    return-void
.end method
