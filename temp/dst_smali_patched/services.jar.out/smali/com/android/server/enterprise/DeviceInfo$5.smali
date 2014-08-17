.class Lcom/android/server/enterprise/DeviceInfo$5;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$900(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #calls: Lcom/android/server/enterprise/DeviceInfo;->updateDataStatisticsUsage()J
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$1400(Lcom/android/server/enterprise/DeviceInfo;)J

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$1000(Lcom/android/server/enterprise/DeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$900(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I
    invoke-static {v1}, Lcom/android/server/enterprise/DeviceInfo;->access$1500(Lcom/android/server/enterprise/DeviceInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
