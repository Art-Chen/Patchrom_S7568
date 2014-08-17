.class Landroid/webkit/WebView$InvokeListBox$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;

.field final synthetic val$adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14738
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iput-object p2, p0, Landroid/webkit/WebView$InvokeListBox$2;->val$adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    iput-object p3, p0, Landroid/webkit/WebView$InvokeListBox$2;->val$listView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 14741
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I
    invoke-static {v0}, Landroid/webkit/WebView$InvokeListBox;->access$15000(Landroid/webkit/WebView$InvokeListBox;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 14742
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v0}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 14743
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;

    .line 14744
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$10402(Landroid/webkit/WebView;Z)Z

    .line 14746
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z
    invoke-static {v0}, Landroid/webkit/WebView$InvokeListBox;->access$14000(Landroid/webkit/WebView$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14747
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7b

    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox$2;->val$adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    invoke-virtual {v2}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 14756
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v1, v1, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14758
    return-void

    .line 14752
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method
