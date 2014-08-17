.class Lcom/android/internal/policy/impl/PenDetachmentAlert$2;
.super Landroid/content/BroadcastReceiver;
.source "PenDetachmentAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, action:Ljava/lang/String;
    const-string v2, "LossPreventionAlertState"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 192
    .local v0, LossPreventionAlert:Z
    const-string v2, "PenDetachmentAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received broadcast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v2, "com.android.settings.LossPeventionAlertChanged"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$300(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->startPedometer()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->stopPedometer()V

    goto :goto_0
.end method
