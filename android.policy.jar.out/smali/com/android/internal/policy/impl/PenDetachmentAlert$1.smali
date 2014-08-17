.class Lcom/android/internal/policy/impl/PenDetachmentAlert$1;
.super Ljava/lang/Object;
.source "PenDetachmentAlert.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


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
    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 84
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 85
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPedometerContext()Landroid/hardware/scontext/SContextPedometer;

    move-result-object v0

    .line 87
    .local v0, pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextPedometer;->getStepCount()J

    move-result-wide v3

    long-to-int v3, v3

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$002(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I

    .line 88
    const-string v2, "PenDetachmentAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pedometer step count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$100(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$100(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$300(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->showDialog()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$400(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    .line 91
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 94
    .end local v0           #pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    :cond_0
    return-void
.end method
