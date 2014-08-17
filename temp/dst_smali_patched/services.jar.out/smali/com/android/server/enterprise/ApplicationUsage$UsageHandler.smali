.class Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;
.super Landroid/os/Handler;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageHandler"
.end annotation


# static fields
.field public static final MSG_APP_LAUNCH_COUNT:I = 0x1

.field public static final MSG_APP_PAUSE_TIME:I = 0x2

.field public static final MSG_SVC_START_TIME:I = 0x3

.field public static final MSG_SVC_STOP_TIME:I = 0x4

.field public static final MSG_UPDATE_USAGE_DB:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationUsage;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ApplicationUsage;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/ApplicationUsage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/ApplicationUsage;->_appLaunchCount(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/ApplicationUsage;->_appPauseTime(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/ApplicationUsage;->_appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/ApplicationUsage;->_appServiceStopTime(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "ApplicationUsage"

    const-string v1, "handleMessage : MSG_UPDATE_USAGE_DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/ApplicationUsage;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationUsage;->_insertToAppControlDB()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
