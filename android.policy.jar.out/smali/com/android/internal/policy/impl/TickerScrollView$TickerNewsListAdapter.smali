.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerNewsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    .line 711
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->mContext:Landroid/content/Context;

    .line 712
    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->mContext:Landroid/content/Context;

    .line 713
    iput p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->mLayout:I

    .line 714
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x102032f

    const/4 v7, 0x0

    .line 717
    const/4 v3, 0x0

    .line 718
    .local v3, row:Landroid/view/View;
    if-nez p2, :cond_1

    .line 719
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 720
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->mLayout:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 724
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;

    .line 726
    .local v4, tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;
    const v5, 0x102032e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->getNewsTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->getNewsAttribute()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, attribution:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 730
    .local v2, mAttributionTextView:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    const-string v5, "Associated Press"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 731
    const v5, 0x1080483

    invoke-virtual {v2, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 732
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    :goto_1
    const v5, 0x1020330

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->getPublishedTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 744
    const v5, 0x102032d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 747
    :cond_0
    return-object v3

    .line 722
    .end local v0           #attribution:Ljava/lang/String;
    .end local v2           #mAttributionTextView:Landroid/widget/TextView;
    .end local v4           #tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;
    :cond_1
    move-object v3, p2

    goto :goto_0

    .line 733
    .restart local v0       #attribution:Ljava/lang/String;
    .restart local v2       #mAttributionTextView:Landroid/widget/TextView;
    .restart local v4       #tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;
    :cond_2
    if-eqz v0, :cond_3

    const-string v5, "Reuters"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 734
    const v5, 0x1080485

    invoke-virtual {v2, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 735
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 737
    :cond_3
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 738
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->getNewsAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
