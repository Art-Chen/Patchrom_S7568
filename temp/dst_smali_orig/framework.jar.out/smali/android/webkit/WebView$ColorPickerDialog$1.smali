.class Landroid/webkit/WebView$ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$ColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$ColorPickerDialog;

.field final synthetic val$gridViewColors:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$ColorPickerDialog;Landroid/widget/GridView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebView$ColorPickerDialog$1;->this$1:Landroid/webkit/WebView$ColorPickerDialog;

    iput-object p2, p0, Landroid/webkit/WebView$ColorPickerDialog$1;->val$gridViewColors:Landroid/widget/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
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
    iget-object v1, p0, Landroid/webkit/WebView$ColorPickerDialog$1;->this$1:Landroid/webkit/WebView$ColorPickerDialog;

    invoke-virtual {v1}, Landroid/webkit/WebView$ColorPickerDialog;->dismiss()V

    iget-object v1, p0, Landroid/webkit/WebView$ColorPickerDialog$1;->val$gridViewColors:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    .local v0, color:Ljava/lang/Integer;
    iget-object v1, p0, Landroid/webkit/WebView$ColorPickerDialog$1;->this$1:Landroid/webkit/WebView$ColorPickerDialog;

    iget-object v1, v1, Landroid/webkit/WebView$ColorPickerDialog;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Landroid/webkit/WebView;->updateColor(I)V
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;I)V

    return-void
.end method
