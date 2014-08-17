.class Lcom/android/internal/policy/impl/TickerScrollView$6;
.super Ljava/lang/Object;
.source "TickerScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$6;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$6;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerScrollView;->mAccountThread:Lcom/android/internal/policy/impl/TickerScrollView$AccountThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView$AccountThread;->start()V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$6;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerCallback;->goToUnlockScreen()V

    .line 321
    return-void
.end method
