.class Lcom/android/internal/policy/impl/CircleMusicWidget$1;
.super Landroid/os/Handler;
.source "CircleMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/CircleMusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    #calls: Lcom/android/internal/policy/impl/CircleMusicWidget;->setMinLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->access$000(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->handleMediaUpdate(IILandroid/net/Uri;)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleMusicWidget;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x12c1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
