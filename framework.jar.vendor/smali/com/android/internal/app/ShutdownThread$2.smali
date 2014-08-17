.class final Lcom/android/internal/app/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 210
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$202(Z)Z

    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$002(Z)Z

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$400()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$500(Landroid/content/Context;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$400()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$600(Landroid/content/Context;)V

    goto :goto_0
.end method
