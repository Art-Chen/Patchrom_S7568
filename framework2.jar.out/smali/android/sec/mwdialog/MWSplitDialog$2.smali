.class Landroid/sec/mwdialog/MWSplitDialog$2;
.super Ljava/lang/Object;
.source "MWSplitDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 141
    iput-object p1, p0, Landroid/sec/mwdialog/MWSplitDialog$2;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 146
    const-string v0, "MWSplitDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog$2;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    #setter for: Landroid/sec/mwdialog/MWSplitDialog;->mCheck:Z
    invoke-static {v0, p2}, Landroid/sec/mwdialog/MWSplitDialog;->access$002(Landroid/sec/mwdialog/MWSplitDialog;Z)Z

    .line 148
    return-void
.end method
