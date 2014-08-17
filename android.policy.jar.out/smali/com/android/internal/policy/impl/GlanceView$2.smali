.class Lcom/android/internal/policy/impl/GlanceView$2;
.super Landroid/os/Handler;
.source "GlanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlanceView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlanceView;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlanceView$2;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 532
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 534
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView$2;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    #calls: Lcom/android/internal/policy/impl/GlanceView;->handleMediaUpdate(ILandroid/net/Uri;)V
    invoke-static {v1, v2, v0}, Lcom/android/internal/policy/impl/GlanceView;->access$1000(Lcom/android/internal/policy/impl/GlanceView;ILandroid/net/Uri;)V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
