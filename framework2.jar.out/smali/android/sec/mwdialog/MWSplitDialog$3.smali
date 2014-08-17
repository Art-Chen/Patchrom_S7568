.class Landroid/sec/mwdialog/MWSplitDialog$3;
.super Ljava/lang/Object;
.source "MWSplitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/mwdialog/MWSplitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/mwdialog/MWSplitDialog;


# direct methods
.method constructor <init>(Landroid/sec/mwdialog/MWSplitDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Landroid/sec/mwdialog/MWSplitDialog$3;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const-string v0, "MWSplitDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ok mCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/mwdialog/MWSplitDialog$3;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    #getter for: Landroid/sec/mwdialog/MWSplitDialog;->mCheck:Z
    invoke-static {v2}, Landroid/sec/mwdialog/MWSplitDialog;->access$000(Landroid/sec/mwdialog/MWSplitDialog;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog$3;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    #getter for: Landroid/sec/mwdialog/MWSplitDialog;->mCheck:Z
    invoke-static {v0}, Landroid/sec/mwdialog/MWSplitDialog;->access$000(Landroid/sec/mwdialog/MWSplitDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog$3;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    #getter for: Landroid/sec/mwdialog/MWSplitDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v0}, Landroid/sec/mwdialog/MWSplitDialog;->access$100(Landroid/sec/mwdialog/MWSplitDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/mwdialog/MWSplitDialog$3;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    #getter for: Landroid/sec/mwdialog/MWSplitDialog;->mCheck:Z
    invoke-static {v1}, Landroid/sec/mwdialog/MWSplitDialog;->access$000(Landroid/sec/mwdialog/MWSplitDialog;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/sec/multiwindow/IMultiWindowManager;->setPreferenceValue(Z)V

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog$3;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    invoke-virtual {v0}, Landroid/sec/mwdialog/MWSplitDialog;->dismiss()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x10203d4
        :pswitch_0
    .end packed-switch
.end method
