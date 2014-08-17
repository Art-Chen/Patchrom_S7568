.class Landroid/webkit/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 43
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/16 v7, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 124
    :goto_0
    return v4

    .line 90
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->copySelection()Z

    .line 91
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_1
    move v4, v5

    .line 124
    goto :goto_0

    .line 95
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, selection:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 101
    .end local v2           #selection:Ljava/lang/String;
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->selectAll()V

    goto :goto_1

    .line 105
    :sswitch_3
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, sel:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 107
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v1, v4}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 110
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, i:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 114
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 116
    :cond_0
    const-string/jumbo v4, "query"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v4, "new_search"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x1020021 -> :sswitch_0
        0x102048d -> :sswitch_2
        0x102048e -> :sswitch_1
        0x102048f -> :sswitch_3
        0x1020490 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x1140004

    invoke-virtual {v3, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 57
    const v3, 0x102048f

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 58
    .local v1, findOnPageItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 59
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 62
    :cond_0
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 63
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_1

    iget v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x4

    if-eq v3, v7, :cond_1

    .line 64
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, idx:I
    :goto_0
    if-ltz v2, :cond_1

    .line 65
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 64
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 69
    .end local v2           #idx:I
    :cond_1
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_2

    iget v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x4

    if-eq v3, v7, :cond_2

    .line 70
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .restart local v2       #idx:I
    :goto_1
    if-ltz v2, :cond_2

    .line 71
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 70
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 77
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #findOnPageItem:Landroid/view/MenuItem;
    .end local v2           #idx:I
    :cond_2
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 78
    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 130
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    .line 35
    return-void
.end method
