.class public final Lcom/android/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private isDeviceDefault:I

.field private mAnimations:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mVisibleMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object v2, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 58
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103f1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 59
    iget v2, v1, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    .line 62
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 69
    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 81
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 89
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 101
    iget v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredHeight()I

    move-result v0

    .line 104
    .local v0, mMeasuredHeight:I
    iget-object v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 106
    .local v1, mVisibleMaxHeight:I
    if-le v0, v1, :cond_0

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/view/menu/ExpandedMenuView;->setMeasuredDimension(II)V

    .line 111
    .end local v0           #mMeasuredHeight:I
    .end local v1           #mVisibleMaxHeight:I
    :cond_0
    return-void
.end method
