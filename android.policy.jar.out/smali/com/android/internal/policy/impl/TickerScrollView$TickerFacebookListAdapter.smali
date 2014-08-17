.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerFacebookListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;",
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
            "Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookListAdapter;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    .line 662
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookListAdapter;->mContext:Landroid/content/Context;

    .line 663
    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookListAdapter;->mContext:Landroid/content/Context;

    .line 664
    iput p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookListAdapter;->mLayout:I

    .line 665
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x1020326

    const v9, 0x1020325

    const/4 v8, 0x0

    .line 668
    const/4 v3, 0x0

    .line 669
    .local v3, row:Landroid/view/View;
    if-nez p2, :cond_1

    .line 670
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 671
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookListAdapter;->mLayout:I

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 675
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;

    .line 678
    .local v5, tickerFacebookData:Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 679
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 680
    .local v4, textview:Landroid/widget/TextView;
    const v6, 0x7fffffff

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 681
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMinLines(I)V

    .line 682
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->getFacebookTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    .end local v4           #textview:Landroid/widget/TextView;
    :goto_1
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->getFacebookAttribute()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, attribution:Ljava/lang/String;
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 691
    .local v2, mAttributionTextView:Landroid/widget/TextView;
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 692
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->getFacebookAttribute()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    const v6, 0x1020327

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->getPublishedTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 698
    const v6, 0x1020324

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 701
    :cond_0
    return-object v3

    .line 673
    .end local v0           #attribution:Ljava/lang/String;
    .end local v2           #mAttributionTextView:Landroid/widget/TextView;
    .end local v5           #tickerFacebookData:Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;
    :cond_1
    move-object v3, p2

    goto :goto_0

    .line 686
    .restart local v5       #tickerFacebookData:Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;
    :cond_2
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->getFacebookTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
