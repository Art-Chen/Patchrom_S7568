.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;
.super Landroid/widget/ListView;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    .line 134
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->setFocusable(Z)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->setFocusableInTouchMode(Z)V

    .line 137
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerCallback;->pokeWakelock()V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
