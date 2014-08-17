.class Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;
.super Landroid/widget/FrameLayout;
.source "TickerHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalFacebookData"
.end annotation


# instance fields
.field private mAttributionTextView:Landroid/widget/TextView;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "title"
    .parameter "attribution"
    .parameter "time"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090067

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x1020321

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020322

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->mAttributionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->mAttributionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020323

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->mTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalFacebookData;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
