.class Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;
.super Landroid/os/Handler;
.source "CircleFMRadioWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/CircleFMRadioWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setMinLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->access$000(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->handleFMUpdate(IILjava/lang/Object;)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

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

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->handleFMUpdate(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->handleMiniRadioVisibilityUpdate(IILjava/lang/Object;)V

    goto :goto_0

    .line 131
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->handleStopMarquee()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x12c1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
