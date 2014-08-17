.class Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
.super Landroid/os/Handler;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionService;


# direct methods
.method public constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/facedetection/FaceDetectionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "f"
    .parameter "l"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    .line 122
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    iput-object p2, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v0, v0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v0, v0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 255
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v0, v0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v0, v0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v0, v0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 251
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v0, v0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
