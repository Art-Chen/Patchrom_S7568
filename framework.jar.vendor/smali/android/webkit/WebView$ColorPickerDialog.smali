.class public Landroid/webkit/WebView$ColorPickerDialog;
.super Landroid/app/Dialog;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerDialog"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 7452
    iput-object p1, p0, Landroid/webkit/WebView$ColorPickerDialog;->this$0:Landroid/webkit/WebView;

    .line 7453
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 7454
    const-string v0, "Pick a Color"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView$ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 7455
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 7459
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 7460
    const v1, 0x1090036

    invoke-virtual {p0, v1}, Landroid/webkit/WebView$ColorPickerDialog;->setContentView(I)V

    .line 7462
    const v1, 0x102028a

    invoke-virtual {p0, v1}, Landroid/webkit/WebView$ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 7463
    .local v0, gridViewColors:Landroid/widget/GridView;
    new-instance v1, Landroid/webkit/WebView$ColorPickerAdapter;

    iget-object v2, p0, Landroid/webkit/WebView$ColorPickerDialog;->this$0:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Landroid/webkit/WebView$ColorPickerAdapter;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7466
    new-instance v1, Landroid/webkit/WebView$ColorPickerDialog$1;

    invoke-direct {v1, p0, v0}, Landroid/webkit/WebView$ColorPickerDialog$1;-><init>(Landroid/webkit/WebView$ColorPickerDialog;Landroid/widget/GridView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7475
    new-instance v1, Landroid/webkit/WebView$ColorPickerDialog$2;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$ColorPickerDialog$2;-><init>(Landroid/webkit/WebView$ColorPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView$ColorPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7480
    return-void
.end method
