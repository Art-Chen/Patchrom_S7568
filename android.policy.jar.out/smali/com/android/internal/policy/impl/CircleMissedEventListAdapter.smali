.class public Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CircleMissedEventListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIsMissedCall:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/CircleMissedEventData;",
            ">;"
        }
    .end annotation
.end field

.field private m_inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "isMissedCall"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/CircleMissedEventData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/CircleMissedEventData;>;"
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mIsMissedCall:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/policy/impl/CircleMissedEventData;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->getItem(I)Lcom/android/internal/policy/impl/CircleMissedEventData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 65
    if-nez p2, :cond_2

    .line 66
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mIsMissedCall:Z

    if-eqz v5, :cond_1

    .line 67
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v6, 0x109005b

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 75
    .local v4, view:Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/CircleMissedEventData;

    .line 76
    .local v2, data:Lcom/android/internal/policy/impl/CircleMissedEventData;
    if-eqz v2, :cond_0

    .line 77
    const v5, 0x1020304

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, contact_view:Landroid/widget/TextView;
    const v5, 0x1020065

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 79
    .local v3, date_view:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleMissedEventData;->getContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleMissedEventData;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->mIsMissedCall:Z

    if-nez v5, :cond_0

    .line 82
    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, content_view:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleMissedEventData;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v0           #contact_view:Landroid/widget/TextView;
    .end local v1           #content_view:Landroid/widget/TextView;
    .end local v3           #date_view:Landroid/widget/TextView;
    :cond_0
    return-object v4

    .line 69
    .end local v2           #data:Lcom/android/internal/policy/impl/CircleMissedEventData;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v6, 0x109006f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 72
    .end local v4           #view:Landroid/view/View;
    :cond_2
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0
.end method
