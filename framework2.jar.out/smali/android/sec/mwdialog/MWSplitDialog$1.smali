.class Landroid/sec/mwdialog/MWSplitDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "MWSplitDialog.java"


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
    .line 47
    iput-object p1, p0, Landroid/sec/mwdialog/MWSplitDialog$1;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, closeAction:Ljava/lang/String;
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, reason:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Landroid/sec/mwdialog/MWSplitDialog$1;->this$0:Landroid/sec/mwdialog/MWSplitDialog;

    invoke-virtual {v2}, Landroid/sec/mwdialog/MWSplitDialog;->dismiss()V

    .line 60
    :cond_0
    return-void
.end method
