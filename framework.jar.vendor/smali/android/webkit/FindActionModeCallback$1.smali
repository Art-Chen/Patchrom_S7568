.class Landroid/webkit/FindActionModeCallback$1;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/FindActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkit/FindActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 70
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    #getter for: Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Landroid/webkit/FindActionModeCallback;->access$000(Landroid/webkit/FindActionModeCallback;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    #getter for: Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Landroid/webkit/FindActionModeCallback;->access$000(Landroid/webkit/FindActionModeCallback;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    #getter for: Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/FindActionModeCallback;->access$100(Landroid/webkit/FindActionModeCallback;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    :cond_0
    const/4 v0, 0x1

    .line 74
    :cond_1
    return v0
.end method
