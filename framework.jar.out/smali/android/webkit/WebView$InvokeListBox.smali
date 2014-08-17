.class Landroid/webkit/WebView$InvokeListBox;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeListBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;,
        Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;,
        Landroid/webkit/WebView$InvokeListBox$Container;
    }
.end annotation


# instance fields
.field private mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

.field private mInputFieldAction:I

.field private mMultiple:Z

.field private mReuseView:Z

.field private mSelectedArray:[I

.field private mSelection:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[III)V
    .locals 6
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selection"
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    .line 14631
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14473
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mReuseView:Z

    .line 14632
    iput p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    .line 14633
    iput-boolean v5, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 14635
    iput p5, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    .line 14637
    array-length v1, p2

    .line 14638
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 14639
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 14640
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 14641
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 14642
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 14643
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 14645
    aget v2, p3, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    aget v2, p3, v0

    if-nez v2, :cond_1

    :cond_0
    iput-boolean v5, p0, Landroid/webkit/WebView$InvokeListBox;->mReuseView:Z

    .line 14639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14647
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[IIILandroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 14461
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[III)V

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[II)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selected"
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 14612
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14473
    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mReuseView:Z

    .line 14613
    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 14614
    iput-object p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    .line 14616
    iput p5, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    .line 14618
    array-length v1, p2

    .line 14619
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 14620
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 14621
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 14622
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 14623
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 14624
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 14626
    aget v2, p3, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    aget v2, p3, v0

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mReuseView:Z

    .line 14620
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14628
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[IILandroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 14461
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[II)V

    return-void
.end method

.method static synthetic access$14000(Landroid/webkit/WebView$InvokeListBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14461
    iget-boolean v0, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    return v0
.end method

.method static synthetic access$14100(Landroid/webkit/WebView$InvokeListBox;)[Landroid/webkit/WebView$InvokeListBox$Container;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14461
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    return-object v0
.end method

.method static synthetic access$14200(Landroid/webkit/WebView$InvokeListBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14461
    iget-boolean v0, p0, Landroid/webkit/WebView$InvokeListBox;->mReuseView:Z

    return v0
.end method

.method static synthetic access$15000(Landroid/webkit/WebView$InvokeListBox;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14461
    iget v0, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    return v0
.end method

.method static synthetic access$15100(Landroid/webkit/WebView$InvokeListBox;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14461
    iget v0, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    return v0
.end method

.method static synthetic access$15102(Landroid/webkit/WebView$InvokeListBox;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14461
    iput p1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 14694
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090139

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 14696
    .local v4, listView:Landroid/widget/ListView;
    new-instance v5, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    invoke-direct {v5, p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    .line 14699
    .local v5, adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
    const/4 v9, 0x1

    .line 14700
    .local v9, rebuildDialog:Z
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 14701
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebSelectDialog;

    iget-object v11, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/webkit/WebView;->access$14900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/webkit/WebSelectDialog;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;

    .line 14702
    const/4 v9, 0x0

    .line 14704
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v6

    .line 14705
    .local v6, dialog:Landroid/webkit/WebSelectDialog;
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSelectDialog;->setListView(Landroid/widget/ListView;)V

    .line 14707
    iget v2, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_2

    .line 14708
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v10, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 14709
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$1;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$1;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v2, v10, v3}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 14736
    :goto_0
    iget v2, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    .line 14737
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v12, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 14738
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$2;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$2;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v2, v12, v3}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 14763
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v13, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 14764
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$3;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$3;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v2, v13, v3}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 14783
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14784
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 14787
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 14794
    iget-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-nez v2, :cond_1

    move v1, v10

    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 14795
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_4

    .line 14796
    invoke-virtual {v4, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 14797
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    array-length v8, v1

    .line 14798
    .local v8, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_5

    .line 14799
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    aget v1, v1, v7

    invoke-virtual {v4, v1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 14798
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 14733
    .end local v7           #i:I
    .end local v8           #length:I
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_0

    .line 14760
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v12, v1}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_1

    .line 14802
    :cond_4
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 14803
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$4;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 14829
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 14830
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 14831
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 14832
    new-instance v0, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;

    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v5, v1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkit/WebView$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 14834
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v5, v0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 14837
    .end local v0           #observer:Landroid/database/DataSetObserver;
    :cond_5
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$5;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$5;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v6, v1}, Landroid/webkit/WebSelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 14853
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$6;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$6;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v6, v1}, Landroid/webkit/WebSelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14875
    if-ne v9, v10, :cond_6

    .line 14876
    invoke-virtual {v6}, Landroid/webkit/WebSelectDialog;->rebuildView()V

    .line 14877
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14881
    :cond_6
    invoke-virtual {v6}, Landroid/webkit/WebSelectDialog;->show()V

    .line 14883
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z
    invoke-static {v1, v10}, Landroid/webkit/WebView;->access$10402(Landroid/webkit/WebView;Z)Z

    .line 14884
    return-void
.end method
