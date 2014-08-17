.class Landroid/widget/AbsListView$6;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->doBoost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 7979
    iput-object p1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7983
    iget-object v1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mSendBoosterIntent:Z
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6700(Landroid/widget/AbsListView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7984
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7985
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7986
    const-string v1, "PACKAGE"

    const-string v2, "android.widget.AbsListView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7987
    const-string v1, "CPU"

    const-string v2, "MAX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7988
    const-string v1, "DURATION"

    const-string v2, "2000"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7989
    iget-object v1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7991
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
