.class Lcom/android/internal/policy/impl/LockscreenHelpOverlay$1;
.super Landroid/os/Handler;
.source "LockscreenHelpOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockscreenHelpOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$1;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$1;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    #calls: Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->access$000(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
