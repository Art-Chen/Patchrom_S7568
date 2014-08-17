.class Landroid/widget/TextView$MoreInfoHPW;
.super Landroid/widget/HoverPopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW"


# instance fields
.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter "parentView"
    .parameter "type"

    .prologue
    .line 13122
    iput-object p1, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    .line 13123
    invoke-direct {p0, p2, p3}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 13120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 13124
    iget-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 13125
    iget-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 13133
    :goto_0
    return-void

    .line 13128
    :cond_0
    const-string v0, "MoreInfoHPW"

    const-string v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13129
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$MoreInfoHPW;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 13150
    const/4 v2, 0x1

    .line 13152
    .local v2, ret:Z
    iget v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mPopupType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 13153
    const/4 v2, 0x0

    .line 13155
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canMarquee()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$10700(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13156
    const/4 v2, 0x1

    .line 13173
    :cond_0
    :goto_0
    return v2

    .line 13157
    :cond_1
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_0

    .line 13158
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    iget-object v0, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 13159
    .local v0, l:Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 13160
    .local v1, lineCount:I
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMaximum:I
    invoke-static {v3}, Landroid/widget/TextView;->access$10800(Landroid/widget/TextView;)I

    move-result v3

    if-le v1, v3, :cond_2

    .line 13161
    const/4 v2, 0x1

    goto :goto_0

    .line 13162
    :cond_2
    if-lez v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_3

    .line 13163
    const/4 v2, 0x1

    goto :goto_0

    .line 13164
    :cond_3
    if-le v1, v5, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 13167
    const/4 v2, 0x1

    goto :goto_0

    .line 13171
    .end local v0           #l:Landroid/text/Layout;
    .end local v1           #lineCount:I
    :cond_4
    invoke-super {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v2

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 6

    .prologue
    const v5, 0x7011214

    .line 13179
    const/4 v2, 0x0

    .line 13181
    .local v2, v:Landroid/widget/TextView;
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 13183
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 13184
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x109004b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #v:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 13186
    .restart local v2       #v:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 13187
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setId(I)V

    .line 13193
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 13194
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13195
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13196
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 13201
    :goto_1
    iput-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    .line 13202
    return-void

    .line 13190
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    .end local v2           #v:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2       #v:Landroid/widget/TextView;
    goto :goto_0

    .line 13198
    .restart local v1       #text:Ljava/lang/CharSequence;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected setInstanceByType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 13137
    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 13138
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 13139
    const/16 v0, 0x3131

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mPopupGravity:I

    .line 13141
    const v0, 0x10301e0

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mAnimationStyle:I

    .line 13142
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mHoverDetectTimeMS:I

    .line 13143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mIsGuideLineEnabled:Z

    .line 13144
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$MoreInfoHPW;->convertDPtoPX(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mGuideLineFadeOffset:I

    .line 13146
    :cond_0
    return-void
.end method
