.class Landroid/webkit/HtmlComposerView$MenuHandler;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method private constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$MenuHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .local v0, id:I
    const/4 v1, 0x0

    .local v1, ret:Z
    const v2, 0x1020028

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HtmlComposerView$MenuHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$MenuHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method
