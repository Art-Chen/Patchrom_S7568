.class Landroid/webkit/WebView$InvokeListBox$4;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .locals 0
    .parameter

    .prologue
    .line 14803
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 14812
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mSelection:I
    invoke-static {v0}, Landroid/webkit/WebView$InvokeListBox;->access$15100(Landroid/webkit/WebView$InvokeListBox;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 14813
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    long-to-int v1, p4

    #setter for: Landroid/webkit/WebView$InvokeListBox;->mSelection:I
    invoke-static {v0, v1}, Landroid/webkit/WebView$InvokeListBox;->access$15102(Landroid/webkit/WebView$InvokeListBox;I)I

    .line 14814
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    long-to-int v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 14817
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z
    invoke-static {v0}, Landroid/webkit/WebView$InvokeListBox;->access$14000(Landroid/webkit/WebView$InvokeListBox;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I
    invoke-static {v0}, Landroid/webkit/WebView$InvokeListBox;->access$15000(Landroid/webkit/WebView$InvokeListBox;)I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I
    invoke-static {v0}, Landroid/webkit/WebView$InvokeListBox;->access$15000(Landroid/webkit/WebView$InvokeListBox;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v0}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14823
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v0}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 14824
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;

    .line 14825
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z
    invoke-static {v0, v3}, Landroid/webkit/WebView;->access$10402(Landroid/webkit/WebView;Z)Z

    .line 14827
    :cond_1
    return-void
.end method
