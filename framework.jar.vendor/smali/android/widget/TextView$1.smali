.class Landroid/widget/TextView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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
    .line 3278
    iput-object p1, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3282
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;
    invoke-static {v0}, Landroid/widget/TextView;->access$200(Landroid/widget/TextView;)Landroid/widget/TextView$ErrorPopup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3283
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;
    invoke-static {v0}, Landroid/widget/TextView;->access$200(Landroid/widget/TextView;)Landroid/widget/TextView$ErrorPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3284
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;
    invoke-static {v0}, Landroid/widget/TextView;->access$200(Landroid/widget/TextView;)Landroid/widget/TextView$ErrorPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3286
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$202(Landroid/widget/TextView;Landroid/widget/TextView$ErrorPopup;)Landroid/widget/TextView$ErrorPopup;

    .line 3288
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3289
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->showError()V
    invoke-static {v0}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)V

    .line 3292
    :cond_2
    return-void
.end method
