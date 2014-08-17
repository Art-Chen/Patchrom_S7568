.class Landroid/widget/AbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 6950
    iput-object p1, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 6953
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 6954
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6955
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 6957
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 6961
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 6962
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6963
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 6965
    :cond_0
    return-void
.end method
