.class Lcom/android/internal/policy/impl/CircleShortcutWidget$1;
.super Landroid/os/Handler;
.source "CircleShortcutWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/CircleShortcutWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    #calls: Lcom/android/internal/policy/impl/CircleShortcutWidget;->reloadBadges()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$000(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
