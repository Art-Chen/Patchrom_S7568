.class Landroid/widget/TextView$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 13087
    iput-object p1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 13089
    iget-object v2, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Landroid/widget/TextView;->access$6300(Landroid/widget/TextView;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13092
    iget-object v2, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 13093
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 13094
    .local v0, selectionEnd:I
    iget-object v2, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->stopSelectionActionMode()V
    invoke-static {v2}, Landroid/widget/TextView;->access$10600(Landroid/widget/TextView;)V

    .line 13095
    iget-object v2, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 13096
    iget-object v2, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startSelectionActionMode()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$9900(Landroid/widget/TextView;)Z

    .line 13098
    .end local v0           #selectionEnd:I
    .end local v1           #selectionStart:I
    :cond_0
    return-void
.end method
